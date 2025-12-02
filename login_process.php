<?php
// MODO DE DIAGNÓSTICO: FORÇA A EXIBIÇÃO DE ERROS.
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// 1. Validação inicial
if ($_SERVER["REQUEST_METHOD"] != "POST" || empty($_POST['email']) || empty($_POST['password']) || empty($_POST['system'])) {
    $_SESSION['login_error'] = "Por favor, preencha todos os campos.";
    header('Location: index.php');
    exit();
}

$email = $_POST['email'];
$password = $_POST['password'];
$system = $_POST['system'];

require_once 'config_crm.php';
require_once 'config_licitacao.php';

$pdo = null;

try {
    if ($system === 'crm') {
        $dsn_crm = "mysql:host=" . DB_HOST_CRM . ";dbname=" . DB_NAME_CRM . ";charset=utf8mb4";
        $pdo = new PDO($dsn_crm, DB_USER_CRM, DB_PASS_CRM, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
        
        $sql = "SELECT id, nome, email, senha, role, status FROM usuarios WHERE email = :email LIMIT 1";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([':email' => $email]);
        
        if ($stmt->rowCount() === 1) {
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            if ($user['status'] === 'Ativo' && password_verify($password, $user['senha'])) {
                session_regenerate_id(true);
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['nome'] = $user['nome']; // Sessão específica do CRM
                $_SESSION['role'] = $user['role']; // Sessão específica do CRM
                $_SESSION['logged_in_system'] = 'crm';
                
                header("Location: crm/index.php");
                exit();
            }
        }

    } elseif ($system === 'licitacao') {
        $dsn_lic = "mysql:host=" . DB_HOST_LIC . ";dbname=" . DB_NAME_LIC . ";charset=utf8mb4";
        $pdo = new PDO($dsn_lic, DB_USER_LIC, DB_PASS_LIC, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
        
        $sql = "SELECT id, nome, email, senha, perfil FROM usuarios WHERE email = :email LIMIT 1";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([':email' => $email]);

        if ($stmt->rowCount() === 1) {
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            if (password_verify($password, $user['senha'])) {
                session_regenerate_id(true);
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['user_nome'] = $user['nome']; // Sessão específica de Licitação
                $_SESSION['user_perfil'] = $user['perfil']; // Sessão específica de Licitação
                $_SESSION['logged_in_system'] = 'licitacao';
                
                header("Location: gestao_licitacao/dashboard.php");
                exit();
            }
        }
    }
} catch (PDOException $e) {
    // Se houver um erro de conexão ou SQL, ele será exibido na tela agora
    die("Erro de Banco de Dados: " . $e->getMessage());
}

// Se chegou até aqui, o login falhou
$_SESSION['login_error'] = "Email, senha ou sistema incorreto.";
header('Location: index.php');
exit();
?>

