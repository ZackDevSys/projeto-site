<?php

//................CONEXÃO................

require_once 'db_connect.php';

if (isset($_POST['btn-editar'])):
    $nome_completo = mysqli_escape_string($connect, $_POST['nome_completo']);
    $email = mysqli_escape_string($connect, $_POST['email']);
    $telefone = mysqli_escape_string($connect, $_POST['telefone']);
    $genero = mysqli_escape_string($connect, $_POST['genero']);
    $data_nasc = mysqli_escape_string($connect, $_POST['data_nasc']);
    $cidade = mysqli_escape_string($connect, $_POST['cidade']);
    $estado = mysqli_escape_string($connect, $_POST['estado']);
    $endereco = mysqli_escape_string($connect, $_POST['endereco']);
    $id = mysqli_escape_string($connect, $_POST['id']);

    $sql = "UPDATE clientes SET nome_completo = '$nome_completo', email = '$email', telefone = '$telefone', genero = '$genero', data_nasc = '$data_nasc', cidade = '$cidade', estado = '$estado', endereco = '$endereco' WHERE id = '$id'";

    if (mysqli_query($connect, $sql)):
        $_SESSION['mensagem'] = "Atualizado com sucesso !";
        header('Location: ../clientes.php?sucesso');
    else:
        $_SESSION['mensagem'] = "Erro ao atualizar !";
        header('Location: ../clientes.php?erro');
    endif;
endif;
