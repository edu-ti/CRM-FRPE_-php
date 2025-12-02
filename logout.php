<?php
// Inicia a sessão para poder limpá-la
session_start();

// Remove todas as variáveis de sessão
session_unset();

// Destrói a sessão
session_destroy();

// Redireciona o usuário para a página de login unificada
header('Location: index.php');
exit();
?>

