<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Clientes</title>
    <link rel="stylesheet" href="styleclientes.css">
</head>

<?php
include_once 'php-action/db_connect.php'
?>

<body>
    <div class="table">

        <table class="inputbox">
            <h1 class="title"> Clientes </h1>
            <thead class="subtitle">
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Sexo</th>
                    <th>Nascimento</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sql = "SELECT * FROM clientes";
                $resultado = mysqli_query($connect, $sql);
                while ($dados = mysqli_fetch_array($resultado)): ?>
                    <tr>
                        <th><?php echo $dados['nome_completo']; ?></th>
                        <th><?php echo $dados['email']; ?></th>
                        <th><?php echo $dados['telefone']; ?></th>
                        <th><?php echo $dados['genero']; ?></th>
                        <th><?php echo $dados['data_nasc']; ?></th>

                        <td><a href="editar.php?id=<?php echo $dados['id']; ?>" class="edit"><i class="">Editar</i></a></td>

                        <td><a onclick="openModal()"><i class="excluir">Excluir</i></a></td>
                    </tr>

                <?php
                endwhile
                ?>
            </tbody>
        </table>

        <a href="cadastro-cliente.php" class="add">Adicionar Cliente</a>
        <a href="index.html" class="voltar">Voltar</a>

    </div>

    <div id="modal-container" class="modal-container">
        <div class="modal">
            <div class="botoes">
                <button class="btn-del" id="excluir-cliente">Sim, excluir cliente</button>
                <button class="btn-return" id="fechar">Não, cancelar operação</button>
            </div>
            <h1>Opa !</h1>
            <h3>Tem certeza que deseja excluir cliente ?</h3>
            <h5>Esta operação não poderá ser mais desfeita.</h5>
        </div>
    </div>

    <script src="script.js"></script>

</body>

</html>