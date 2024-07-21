<?php

require_once "connection.php";

$id = $_GET["id"];

$sql = "SELECT * FROM library WHERE ISBN_Code= $id";

$result = mysqli_query($conn, $sql);

$value = mysqli_fetch_assoc($result);

$layout = "<div><div class='card' style='width: 100%;'>
<div>
  <div class='card-body '>
    <img src='{$value["image"]}' class='text-center' style='max-height: 32rem; max-width: 18rem;  alt='...'>

    <h5 class='card-title'>Title: {$value["title"]}</h5>
    <p class='card-text'>{$value["short_description"]}</p>
    <p class='card-text'>Type: {$value["type"]}</p>
    <li class='card-text mx-5'>Author First Name: {$value["author_first_name"]}</li>
    <li class='card-text mx-5'>Author Last Name: {$value["author_last_name"]}</li>
    <li class='card-text mx-5'>Publisher Name: {$value["publisher_name"]}</li>
    <li class='card-text mx-5'>Publisher Address: {$value["publisher_adress"]}</li>
    <li class='card-text mx-5'>Publish Date: {$value["publish_date"]}</li>
    
  </div>
  </div>
</div>";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
  </head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="http://localhost:3000/index.php">BigLibrary</a>
    <form class="d-flex" action="index.php" method="GET">
    <input class="form-control me-2" type="text" name="search" placeholder="Search Title" value="<?= htmlspecialchars($search) ?>">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
</form>

  </div>
</nav> 
    <div class="container">
    <?= $layout ?>
    
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>