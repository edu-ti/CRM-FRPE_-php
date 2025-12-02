<?php
// api/handlers/contact_handler.php

function handle_create_contact($pdo, $data) {
    if (empty($data['nome']) || empty($data['organizacao_id'])) {
        json_response(['success' => false, 'error' => 'Nome e Organização são obrigatórios.'], 400);
    }
    $sql = "INSERT INTO contatos (nome, organizacao_id, cargo, setor, email, telefone) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        $data['nome'],
        $data['organizacao_id'],
        empty($data['cargo']) ? null : $data['cargo'],
        empty($data['setor']) ? null : $data['setor'],
        empty($data['email']) ? null : $data['email'],
        empty($data['telefone']) ? null : $data['telefone']
    ]);
    if ($success) {
        $lastId = $pdo->lastInsertId();
        $stmt_new = $pdo->prepare("SELECT c.*, o.nome_fantasia as organizacao_nome FROM contatos c JOIN organizacoes o ON c.organizacao_id = o.id WHERE c.id = ?");
        $stmt_new->execute([$lastId]);
        json_response(['success' => true, 'contact' => $stmt_new->fetch(PDO::FETCH_ASSOC)]);
    } else {
        json_response(['success' => false, 'error' => 'Falha ao criar contato.'], 500);
    }
}

function handle_get_contact_details($pdo, $id) {
    if (empty($id)) {
        json_response(['success' => false, 'error' => 'ID do contato não fornecido.'], 400);
    }
    $stmt = $pdo->prepare("SELECT * FROM contatos WHERE id = ?");
    $stmt->execute([$id]);
    $contact = $stmt->fetch(PDO::FETCH_ASSOC);
    json_response(['success' => !!$contact, 'contact' => $contact]);
}

function handle_update_contact($pdo, $data) {
    // --- VERIFICAÇÃO DE PERMISSÃO DE ESCRITA PARA O LOG ---
    $log_file = 'api_debug_log.txt';
    if (!is_writable(dirname($log_file)) && !file_exists($log_file)) {
        if (@file_put_contents($log_file, '') === false) {
             json_response(['success' => false, 'error' => 'Diagnóstico: O servidor não tem permissão para escrever arquivos de log nesta pasta.'], 500);
        }
    }
    file_put_contents($log_file, "UPDATE CONTACT - Recebido: " . json_encode($data) . "\n", FILE_APPEND);

    if (empty($data['id'])) {
        json_response(['success' => false, 'error' => 'ID do contato é obrigatório.'], 400);
    }
    if (empty($data['nome']) || empty($data['organizacao_id'])) {
        json_response(['success' => false, 'error' => 'Nome e Organização são obrigatórios.'], 400);
    }

    $sql = "UPDATE contatos SET nome = ?, organizacao_id = ?, cargo = ?, setor = ?, email = ?, telefone = ? WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $success = $stmt->execute([
        $data['nome'],
        $data['organizacao_id'],
        empty($data['cargo']) ? null : $data['cargo'],
        empty($data['setor']) ? null : $data['setor'],
        empty($data['email']) ? null : $data['email'],
        empty($data['telefone']) ? null : $data['telefone'],
        (int)$data['id'] // Garante que o ID é um inteiro
    ]);
    if ($success) {
        if ($stmt->rowCount() === 0) {
            file_put_contents($log_file, "UPDATE CONTACT - Nenhuma linha afetada para o ID: " . $data['id'] . ". Os dados eram iguais ou o ID não foi encontrado.\n", FILE_APPEND);
        }
        $stmt_updated = $pdo->prepare("SELECT c.*, o.nome_fantasia as organizacao_nome FROM contatos c JOIN organizacoes o ON c.organizacao_id = o.id WHERE c.id = ?");
        $stmt_updated->execute([(int)$data['id']]);
        json_response(['success' => true, 'contact' => $stmt_updated->fetch(PDO::FETCH_ASSOC)]);
    } else {
        json_response(['success' => false, 'error' => 'Falha ao executar a atualização do contato.'], 500);
    }
}

