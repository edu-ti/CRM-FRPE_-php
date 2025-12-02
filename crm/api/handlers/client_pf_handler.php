<?php
// api/handlers/client_pf_handler.php

function handle_create_cliente_pf($pdo, $data) {
    if (empty($data['nome'])) {
        json_response(['success' => false, 'error' => 'Nome é obrigatório.'], 400);
    }

    // Verifica duplicação antes de inserir
    $is_duplicate = false;
    $cpf = isset($data['cpf']) ? preg_replace('/[^0-9]/', '', $data['cpf']) : null;
    $email = isset($data['email']) && filter_var(trim($data['email']), FILTER_VALIDATE_EMAIL) ? trim($data['email']) : null;
    $telefone = isset($data['telefone']) ? preg_replace('/[^\d+]/', '', $data['telefone']) : null;

    if ($cpf && strlen($cpf) === 11) {
        $stmt_check_cpf = $pdo->prepare("SELECT id FROM clientes_pf WHERE cpf = ? LIMIT 1");
        $stmt_check_cpf->execute([$cpf]);
        if ($stmt_check_cpf->fetchColumn()) $is_duplicate = true;
    }
    if (!$is_duplicate && $email) {
        $stmt_check_email = $pdo->prepare("SELECT id FROM clientes_pf WHERE email = ? LIMIT 1");
        $stmt_check_email->execute([$email]);
        if ($stmt_check_email->fetchColumn()) $is_duplicate = true;
    }
    if (!$is_duplicate && $telefone) {
        $stmt_check_tel = $pdo->prepare("SELECT id FROM clientes_pf WHERE telefone = ? LIMIT 1");
        $stmt_check_tel->execute([$telefone]);
        if ($stmt_check_tel->fetchColumn()) $is_duplicate = true;
    }

    if ($is_duplicate) {
         json_response(['success' => false, 'error' => 'Já existe um cliente com este CPF, E-mail ou Telefone.'], 409); // Conflict
         return;
    }


    $sql = "INSERT INTO clientes_pf (nome, cpf, data_nascimento, email, telefone, cep, logradouro, numero, complemento, bairro, cidade, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        $data['nome'],
        $cpf, // Usa CPF limpo
        empty($data['data_nascimento']) ? null : $data['data_nascimento'],
        $email, // Usa email validado
        $telefone, // Usa telefone limpo
        empty($data['cep']) ? null : preg_replace('/[^0-9]/', '', $data['cep']),
        empty($data['logradouro']) ? null : $data['logradouro'],
        empty($data['numero']) ? null : $data['numero'],
        empty($data['complemento']) ? null : $data['complemento'],
        empty($data['bairro']) ? null : $data['bairro'],
        empty($data['cidade']) ? null : $data['cidade'],
        empty($data['estado']) ? null : strtoupper(substr(trim($data['estado']), 0, 2))
    ]);
    if ($success) {
        $lastId = $pdo->lastInsertId();
        $stmt_new = $pdo->prepare("SELECT * FROM clientes_pf WHERE id = ?");
        $stmt_new->execute([$lastId]);
        json_response(['success' => true, 'client_pf' => $stmt_new->fetch(PDO::FETCH_ASSOC)]);
    } else {
        json_response(['success' => false, 'error' => 'Falha ao criar cliente PF.'], 500);
    }
}

function handle_get_cliente_pf_details($pdo, $data) { // Alterado para receber $data (array GET)
    $id = $data['id'] ?? null; // Pega o id do array
    if (empty($id)) {
        json_response(['success' => false, 'error' => 'ID do cliente não fornecido.'], 400);
    }
    $stmt = $pdo->prepare("SELECT * FROM clientes_pf WHERE id = ?");
    $stmt->execute([$id]);
    $client = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($client) {
        json_response(['success' => true, 'client_pf' => $client]);
    } else {
        json_response(['success' => false, 'error' => 'Cliente PF não encontrado.'], 404);
    }
}


function handle_update_cliente_pf($pdo, $data) {
    // --- VERIFICAÇÃO DE PERMISSÃO DE ESCRITA PARA O LOG ---
    $log_file = dirname(__DIR__, 2) . '/api_debug_log.txt'; // Define caminho absoluto
    // Tenta criar o diretório pai se não existir
    $log_dir = dirname($log_file);
    if (!is_dir($log_dir)) {
        @mkdir($log_dir, 0775, true);
    }
    // Verifica se pode escrever no diretório ou no arquivo
    if (!is_writable($log_dir) || (file_exists($log_file) && !is_writable($log_file))) {
         // Não envia JSON aqui, apenas loga internamente se possível
         error_log("Permissão negada para escrever no arquivo de log: " . $log_file);
         // Considerar enviar um erro genérico se o log for crítico
         // json_response(['success' => false, 'error' => 'Erro interno do servidor (log).'], 500);
         // return;
    } else {
        file_put_contents($log_file, "UPDATE CLIENT_PF - Recebido: " . json_encode($data) . "\n", FILE_APPEND);
    }


    if (empty($data['id'])) {
        json_response(['success' => false, 'error' => 'ID do cliente é obrigatório para atualização.'], 400);
    }
    if (empty($data['nome'])) {
        json_response(['success' => false, 'error' => 'Nome é obrigatório.'], 400);
    }

    $id_to_update = (int)$data['id'];

    // Verifica duplicação ANTES de atualizar, excluindo o próprio registo
    $is_duplicate = false;
    $cpf = isset($data['cpf']) ? preg_replace('/[^0-9]/', '', $data['cpf']) : null;
    $email = isset($data['email']) && filter_var(trim($data['email']), FILTER_VALIDATE_EMAIL) ? trim($data['email']) : null;
    $telefone = isset($data['telefone']) ? preg_replace('/[^\d+]/', '', $data['telefone']) : null;

    if ($cpf && strlen($cpf) === 11) {
        $stmt_check_cpf = $pdo->prepare("SELECT id FROM clientes_pf WHERE cpf = ? AND id != ? LIMIT 1");
        $stmt_check_cpf->execute([$cpf, $id_to_update]);
        if ($stmt_check_cpf->fetchColumn()) $is_duplicate = true;
    }
    if (!$is_duplicate && $email) {
        $stmt_check_email = $pdo->prepare("SELECT id FROM clientes_pf WHERE email = ? AND id != ? LIMIT 1");
        $stmt_check_email->execute([$email, $id_to_update]);
        if ($stmt_check_email->fetchColumn()) $is_duplicate = true;
    }
    if (!$is_duplicate && $telefone) {
        $stmt_check_tel = $pdo->prepare("SELECT id FROM clientes_pf WHERE telefone = ? AND id != ? LIMIT 1");
        $stmt_check_tel->execute([$telefone, $id_to_update]);
        if ($stmt_check_tel->fetchColumn()) $is_duplicate = true;
    }

    if ($is_duplicate) {
         json_response(['success' => false, 'error' => 'Já existe outro cliente com este CPF, E-mail ou Telefone.'], 409); // Conflict
         return;
    }


    $sql = "UPDATE clientes_pf SET
                nome = ?, cpf = ?, data_nascimento = ?, email = ?, telefone = ?,
                cep = ?, logradouro = ?, numero = ?, complemento = ?, bairro = ?,
                cidade = ?, estado = ?
            WHERE id = ?";

    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        $data['nome'],
        $cpf, // Usa CPF limpo
        empty($data['data_nascimento']) ? null : $data['data_nascimento'],
        $email, // Usa email validado
        $telefone, // Usa telefone limpo
        empty($data['cep']) ? null : preg_replace('/[^0-9]/', '', $data['cep']),
        empty($data['logradouro']) ? null : $data['logradouro'],
        empty($data['numero']) ? null : $data['numero'],
        empty($data['complemento']) ? null : $data['complemento'],
        empty($data['bairro']) ? null : $data['bairro'],
        empty($data['cidade']) ? null : $data['cidade'],
        empty($data['estado']) ? null : strtoupper(substr(trim($data['estado']), 0, 2)),
        $id_to_update // Garante que o ID é um inteiro
    ]);

    if ($success) {
        if ($stmt->rowCount() === 0) {
            // Loga apenas se o modo debug estiver ativo, por exemplo
             if (is_writable($log_file)) {
                 file_put_contents($log_file, "UPDATE CLIENT_PF - Nenhuma linha afetada para o ID: " . $id_to_update . ". Os dados eram iguais ou o ID não foi encontrado.\n", FILE_APPEND);
             }
        }
        $stmt_updated = $pdo->prepare("SELECT * FROM clientes_pf WHERE id = ?");
        $stmt_updated->execute([$id_to_update]);
        $updated_client = $stmt_updated->fetch(PDO::FETCH_ASSOC);
        if ($updated_client) {
             json_response(['success' => true, 'cliente_pf' => $updated_client]);
        } else {
             // Caso estranho onde a atualização teve sucesso mas a busca falhou
             json_response(['success' => false, 'error' => 'Falha ao buscar dados atualizados do cliente PF.'], 500);
        }
    } else {
        $errorInfo = $stmt->errorInfo();
         if (is_writable($log_file)) {
             file_put_contents($log_file, "UPDATE CLIENT_PF - Erro DB: " . print_r($errorInfo, true) . "\n", FILE_APPEND);
         }
        json_response(['success' => false, 'error' => 'Falha ao atualizar cliente PF.'], 500);
    }
}

// --- NOVA FUNÇÃO: Importar Clientes (PJ e PF) ---
function handle_import_clients($pdo, $data) {
    // Verifica permissão (exemplo: só Gestor e Analista podem importar)
    if (!in_array($_SESSION['role'], ['Gestor', 'Analista'])) {
        json_response(['success' => false, 'error' => 'Acesso negado para importação.'], 403);
        return;
    }

    $clients_data = $data['clients'] ?? [];

    if (empty($clients_data)) {
        json_response(['success' => false, 'error' => 'Nenhum dado de cliente recebido.'], 400);
    }

    $imported_pj_count = 0;
    $imported_pf_count = 0;
    $duplicate_pj_count = 0;
    $duplicate_pf_count = 0;
    $error_count = 0;
    // $newly_imported_clients = []; // Descomente se precisar retornar os dados importados

    // Log de início da importação
    error_log("[Import Clients] Iniciando importação para utilizador ID: " . $_SESSION['user_id']);

    // Prepara statements fora do loop para eficiência
    // PJ
    $stmt_check_pj_cnpj = $pdo->prepare("SELECT id FROM organizacoes WHERE cnpj = ? LIMIT 1");
    $sql_insert_pj = "INSERT INTO organizacoes (nome_fantasia, razao_social, cnpj, cep, logradouro, numero, complemento, bairro, cidade, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt_insert_pj = $pdo->prepare($sql_insert_pj);

    // PF
    $stmt_check_pf_cpf = $pdo->prepare("SELECT id FROM clientes_pf WHERE cpf = ? LIMIT 1");
    $stmt_check_pf_email = $pdo->prepare("SELECT id FROM clientes_pf WHERE email = ? LIMIT 1");
    $stmt_check_pf_tel = $pdo->prepare("SELECT id FROM clientes_pf WHERE telefone = ? LIMIT 1");
    $sql_insert_pf = "INSERT INTO clientes_pf (nome, cpf, data_nascimento, email, telefone, cep, logradouro, numero, complemento, bairro, cidade, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt_insert_pf = $pdo->prepare($sql_insert_pf);

    $pdo->beginTransaction();
    try {
        foreach ($clients_data as $index => $client) {
            // Limpa e normaliza dados comuns
            $cep = isset($client['cep']) ? preg_replace('/[^0-9]/', '', $client['cep']) : null;
            $estado = isset($client['estado']) ? strtoupper(substr(trim($client['estado']), 0, 2)) : null;

            // --- Tenta identificar como PJ (Organização) ---
            $cnpj_raw = $client['cnpj'] ?? null;
            $cnpj = $cnpj_raw ? preg_replace('/[^0-9]/', '', $cnpj_raw) : null;
            $nome_fantasia = trim($client['nome_fantasia'] ?? '');

            // Condição para ser PJ: CNPJ válido (14 dígitos) E Nome Fantasia preenchido
            if ($cnpj && strlen($cnpj) === 14 && !empty($nome_fantasia)) {
                // É provavelmente PJ
                $stmt_check_pj_cnpj->execute([$cnpj]);
                if ($stmt_check_pj_cnpj->fetchColumn()) {
                    $duplicate_pj_count++;
                    // error_log("[Import Clients] Duplicado PJ (CNPJ: {$cnpj}) na linha " . ($index + 2)); // Log linha
                } else {
                    $razao_social = trim($client['razao_social'] ?? '');
                    $success = $stmt_insert_pj->execute([
                        $nome_fantasia,
                        $razao_social ?: null,
                        $cnpj,
                        $cep ?: null,
                        trim($client['logradouro'] ?? '') ?: null,
                        trim($client['numero'] ?? '') ?: null,
                        trim($client['complemento'] ?? '') ?: null,
                        trim($client['bairro'] ?? '') ?: null,
                        trim($client['cidade'] ?? '') ?: null,
                        $estado ?: null
                    ]);
                    if ($success) $imported_pj_count++; else $error_count++;
                }
                continue; // Processa a próxima linha
            }

            // --- Se não for PJ, tenta identificar como PF ---
            $nome_pf = trim($client['nome'] ?? '');
            $cpf_raw = $client['cpf'] ?? null;
            $cpf = $cpf_raw ? preg_replace('/[^0-9]/', '', $cpf_raw) : null;
            $email_pf = isset($client['email']) && filter_var(trim($client['email']), FILTER_VALIDATE_EMAIL) ? trim($client['email']) : null;
            $telefone_pf_raw = $client['telefone'] ?? null;
             // Limpeza básica do telefone (remove não dígitos, mas mantém + se houver no início)
            $telefone_pf = $telefone_pf_raw ? preg_replace('/[^\d+]/', '', $telefone_pf_raw) : null;
            $data_nascimento_str = $client['data_nascimento'] ?? null;
            $data_nascimento = null;
            if ($data_nascimento_str) {
                 // Tenta converter formatos comuns (DD/MM/YYYY, YYYY-MM-DD)
                try {
                     // Prioriza YYYY-MM-DD (formato ISO)
                     if (preg_match('/^\d{4}-\d{2}-\d{2}$/', $data_nascimento_str)) {
                        $dt = new DateTime($data_nascimento_str);
                        $data_nascimento = $dt->format('Y-m-d');
                     } elseif (preg_match('/^(\d{1,2})\/(\d{1,2})\/(\d{4})/', $data_nascimento_str, $matches)) {
                         // Tenta DD/MM/YYYY
                         $dt = DateTime::createFromFormat('!d/m/Y', $data_nascimento_str); // '!' reseta campos não informados
                         if ($dt && $dt->format('d/m/Y') === $data_nascimento_str) { // Valida se a conversão foi correta
                              $data_nascimento = $dt->format('Y-m-d');
                         }
                     }
                     // Poderia adicionar mais formatos se necessário
                } catch (Exception $e) { /* Ignora data inválida, $data_nascimento continua null */ }
            }


            // Validação mínima para PF: nome é obrigatório
            if (!empty($nome_pf)) {
                 // Verificação de duplicados PF (CPF > Email > Telefone)
                 $is_duplicate_pf = false;
                 // Verifica CPF apenas se for válido (11 dígitos)
                 if ($cpf && strlen($cpf) === 11) {
                     $stmt_check_pf_cpf->execute([$cpf]);
                     if ($stmt_check_pf_cpf->fetchColumn()) $is_duplicate_pf = true;
                 }
                 // Verifica Email apenas se não for duplicado por CPF e se email for válido
                 if (!$is_duplicate_pf && $email_pf) {
                     $stmt_check_pf_email->execute([$email_pf]);
                     if ($stmt_check_pf_email->fetchColumn()) $is_duplicate_pf = true;
                 }
                 // Verifica telefone apenas se não for duplicado por CPF ou Email e se telefone não for vazio
                 if (!$is_duplicate_pf && $telefone_pf) {
                     $stmt_check_pf_tel->execute([$telefone_pf]);
                     if ($stmt_check_pf_tel->fetchColumn()) $is_duplicate_pf = true;
                 }


                 if ($is_duplicate_pf) {
                    $duplicate_pf_count++;
                    // error_log("[Import Clients] Duplicado PF (CPF/Email/Tel) na linha " . ($index + 2)); // Log linha
                 } else {
                     $success = $stmt_insert_pf->execute([
                         $nome_pf,
                         ($cpf && strlen($cpf) === 11) ? $cpf : null, // Só insere CPF se válido
                         $data_nascimento, // Usa data convertida ou null
                         $email_pf, // Usa email validado ou null
                         $telefone_pf, // Usa telefone limpo ou null
                         $cep ?: null,
                         trim($client['logradouro'] ?? '') ?: null,
                         trim($client['numero'] ?? '') ?: null,
                         trim($client['complemento'] ?? '') ?: null,
                         trim($client['bairro'] ?? '') ?: null,
                         trim($client['cidade'] ?? '') ?: null,
                         $estado ?: null
                     ]);
                     if ($success) $imported_pf_count++; else $error_count++;
                 }
            } else {
                // Se não era PJ válido E não tem Nome PF, conta como erro
                 // Verifica se a condição de PJ falhou (cnpj inválido ou nome fantasia vazio)
                 $isInvalidPJ = ($cnpj && strlen($cnpj) !== 14) || ($cnpj && empty($nome_fantasia));
                 if ($isInvalidPJ || empty($nome_pf)) {
                     $error_count++;
                     // error_log("[Import Clients] Linha inválida/incompleta (sem PJ válido ou Nome PF) na linha " . ($index + 2) . ": " . json_encode($client));
                 }
            }
        }
        $pdo->commit();
        error_log("[Import Clients] Importação concluída. PJ: {$imported_pj_count}, PF: {$imported_pf_count}, DupPJ: {$duplicate_pj_count}, DupPF: {$duplicate_pf_count}, Erros: {$error_count}");
        json_response([
            'success' => true,
            'importedPj' => $imported_pj_count,
            'importedPf' => $imported_pf_count,
            'duplicatesPj' => $duplicate_pj_count,
            'duplicatesPf' => $duplicate_pf_count,
            'errors' => $error_count
            // 'newClients' => $newly_imported_clients // Opcional
        ]);
    } catch (Exception $e) {
        $pdo->rollBack();
        error_log("[Import Clients] Erro Exception: " . $e->getMessage() . "\n" . $e->getTraceAsString());
        json_response(['success' => false, 'error' => 'Erro durante a importação: ' . $e->getMessage()], 500);
    }
}
// --- FIM DA NOVA FUNÇÃO ---

?>
