<?php
// api/handlers/organization_handler.php

function handle_create_organization($pdo, $data) {
    if (empty($data['nome_fantasia'])) {
        json_response(['success' => false, 'error' => 'Nome Fantasia é obrigatório.'], 400);
    }
    $sql = "INSERT INTO organizacoes (nome_fantasia, razao_social, cnpj, cep, logradouro, numero, complemento, bairro, cidade, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        $data['nome_fantasia'],
        empty($data['razao_social']) ? null : $data['razao_social'],
        empty($data['cnpj']) ? null : $data['cnpj'],
        empty($data['cep']) ? null : $data['cep'],
        empty($data['logradouro']) ? null : $data['logradouro'],
        empty($data['numero']) ? null : $data['numero'],
        empty($data['complemento']) ? null : $data['complemento'],
        empty($data['bairro']) ? null : $data['bairro'],
        empty($data['cidade']) ? null : $data['cidade'],
        empty($data['estado']) ? null : $data['estado']
    ]);
    if ($success) {
        $lastId = $pdo->lastInsertId();
        $stmt_new = $pdo->prepare("SELECT * FROM organizacoes WHERE id = ?");
        $stmt_new->execute([$lastId]);
        json_response(['success' => true, 'organization' => $stmt_new->fetch(PDO::FETCH_ASSOC)]);
    } else {
        json_response(['success' => false, 'error' => 'Falha ao criar organização.'], 500);
    }
}

function handle_get_organization_details($pdo, $id) {
    if (empty($id)) {
        json_response(['success' => false, 'error' => 'ID da organização não fornecido.'], 400);
    }
    $stmt = $pdo->prepare("SELECT * FROM organizacoes WHERE id = ?");
    $stmt->execute([$id]);
    $organization = $stmt->fetch(PDO::FETCH_ASSOC);
    json_response(['success' => !!$organization, 'organization' => $organization]);
}

function handle_update_organization($pdo, $data) {
    // --- VERIFICAÇÃO DE PERMISSÃO DE ESCRITA PARA O LOG ---
    $log_file = 'api_debug_log.txt';
    if (!is_writable(dirname($log_file)) && !file_exists($log_file)) {
        // Tenta criar o arquivo para ver se a permissão é o problema
        if (@file_put_contents($log_file, '') === false) {
             json_response(['success' => false, 'error' => 'Diagnóstico: O servidor não tem permissão para escrever arquivos de log nesta pasta. Verifique as permissões da pasta do projeto.'], 500);
        }
    }
    file_put_contents($log_file, "UPDATE ORG - Recebido: " . json_encode($data) . "\n", FILE_APPEND);

    if (empty($data['id'])) {
        json_response(['success' => false, 'error' => 'ID da organização é obrigatório.'], 400);
    }
    if (empty($data['nome_fantasia'])) {
        json_response(['success' => false, 'error' => 'Nome Fantasia é obrigatório.'], 400);
    }

    $sql = "UPDATE organizacoes SET 
                nome_fantasia = ?, razao_social = ?, cnpj = ?, cep = ?, 
                logradouro = ?, numero = ?, complemento = ?, bairro = ?, 
                cidade = ?, estado = ? 
            WHERE id = ?";
    
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        $data['nome_fantasia'],
        empty($data['razao_social']) ? null : $data['razao_social'],
        empty($data['cnpj']) ? null : $data['cnpj'],
        empty($data['cep']) ? null : $data['cep'],
        empty($data['logradouro']) ? null : $data['logradouro'],
        empty($data['numero']) ? null : $data['numero'],
        empty($data['complemento']) ? null : $data['complemento'],
        empty($data['bairro']) ? null : $data['bairro'],
        empty($data['cidade']) ? null : $data['cidade'],
        empty($data['estado']) ? null : $data['estado'],
        (int)$data['id'] // Garante que o ID é um inteiro
    ]);

    if ($success) {
        if ($stmt->rowCount() === 0) {
             file_put_contents($log_file, "UPDATE ORG - Nenhuma linha afetada para o ID: " . $data['id'] . ". Os dados eram iguais ou o ID não foi encontrado.\n", FILE_APPEND);
        }
        $stmt_updated = $pdo->prepare("SELECT * FROM organizacoes WHERE id = ?");
        $stmt_updated->execute([(int)$data['id']]);
        json_response(['success' => true, 'organization' => $stmt_updated->fetch(PDO::FETCH_ASSOC)]);
    } else {
        json_response(['success' => false, 'error' => 'Falha ao executar a atualização da organização.'], 500);
    }
}

