<?php

$dsn = 'mysql:host=' . $_ENV['DB_HOST'] . ';dbname=' . $_ENV['DB_DATABASE'] . ';charset=utf8';

$pdo = new PDO($dsn, $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD']);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$id = $_GET['id'];

if(!empty($id))
    $statement = $pdo->query('SELECT * FROM `users` WHERE id = ' . $id . ' ORDER BY `name` ');
else
    $statement = $pdo->query('SELECT * FROM `users` ORDER BY `name`');

$users = $statement->fetchAll();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Injection SQL</title>
</head>
<body>
    <form method="get">
        <label for="id">User id :</label>
        <input type="number" name="id" id="id">

        <button type="submit">Information</button>
    </form>
    <ul>
        <?php foreach ($users as $user): ?>
            <li><?= $user['id'] ?> - <?= $user['name'] ?></li>
        <?php endforeach; ?>
    </ul>
</body>
</html>