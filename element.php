<?php 
require('element_controller.php')
?>

<!doctype html>
<html lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <charset="ISO-8859-1">
        <title>Détails</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="script.js"></script>
        <link rel="stylesheet" href="style_recherche.css">
        <link rel="stylesheet" href="style_header.css">
        
    </head>

    <body>

        <?php require('header.php')?>
        <main>
            <h1><?php echo $spider['nom_commun'];?></h1>
            <h2><?php echo $spider['nom_latin'];?></h2>
            <div><?php echo $spider['region'];?></div>
            <div><?php echo $spider['mortelle'];?></div>

            <div><img src="<?php echo $spider['image'];?>" alt="spider_image"></div>
            <div><?php echo $spider['description'];?></div>

            

            
            

        </main>


    </body>
</html>