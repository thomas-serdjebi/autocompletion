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
        <link rel="stylesheet" href="style_element.css">
        <link rel="stylesheet" href="style_header.css">       
        <link rel="stylesheet" href="style_footer.css">   
    </head>

    <body>

        <?php require('header.php')?>

        <main>

            <div class="container mt-5">
                <div class="row">
                    <div class="col-lg-8">
                        <!-- Post content-->
                        <article>
                            <!-- Post header-->
                            <header class="mb-4">
                                <!-- Post title-->
                                <h1 class="fw-bolder mb-1"><?php echo $spider[0]['nom_commun']?></h1>
                                <!-- Post meta content-->
                                <div class="text-muted fst-italic mb-2"><?php echo $spider[0]['nom_latin']?></div>
                            <!-- Preview image figure-->
                            <figure class="mb-4"><img class="img-fluid rounded" src="<?php echo $spider[0]['image']?>" alt="..." /></figure>
                            <!-- Post content-->
                            <section class="mb-5">
                                <p class="fs-5 mb-4"><?php echo $spider[0]['description']?></p>

                            </section>
                        </article>
                    </div>
                </div>
            </div>

        </main>

        <section class="footer">

        <?php require('footer.php')?>

        </section>  
                   

    </body>


</html>