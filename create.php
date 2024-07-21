<?php
require_once "connection.php";

if(isset($_POST["create"])){
    $title = $_POST["title"];
    $image = $_POST["image"];
    $short_description = $_POST["short_description"];
    $type = $_POST["type"];
    $author_first_name = $_POST["author_first_name"];
    $author_last_name = $_POST["author_last_name"];
    $publisher_name = $_POST["publisher_name"];
    $publisher_adress = $_POST["publisher_adress"];
    $publish_date = $_POST["publish_date"];

    $sql = "INSERT INTO `library`(`title`, `image`, `short_description`, `type`, `author_first_name`, `author_last_name`, `publisher_name`, `publisher_adress`, `publish_date`) VALUES ('{$title}','{$image}','{$short_description}','{$type}','{$author_first_name}','{$author_last_name}','{$publisher_name}','{$publisher_adress}','{$publish_date}')";

    $result = mysqli_query($conn, $sql);

    if($result){
        echo "Success"; 
    } else {
        echo "Error";
    }
   
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create product</title>
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
    <h1>Create product</h1>
    <div class="container">
    <form method="post">
     <input name="title" type="text" placeholder="Title" class="form-control my-1">
     <input name="image" type="text" placeholder="Image" class="form-control my-1">
     <textarea name="short_description" placeholder="Short Description" class="form-control my-1"></textarea>
     <input name="type" type="text" placeholder="Type" class="form-control my-1">
     <input name="author_first_name" type="text" placeholder="Author First Name" class="form-control my-1">
     <input name="author_last_name" type="text" placeholder="Author Last Name" class="form-control my-1">
     <input name="publisher_name" type="text" placeholder="Publisher Name" class="form-control my-1">
     <input name="publisher_adress" type="text" placeholder="Publisher Adress" class="form-control my-1">
     <input name="publish_date" type="number" placeholder="Publish Date" class="form-control my-1">
     <input name="create" type="submit" class="btn btn-primary" value="Create">
     </form>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>