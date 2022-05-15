<?php 
require('recherche_controller.php')
?>

<!doctype html>
<html lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <charset="ISO-8859-1">
        <title>Titre de la page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="script.js"></script>
        <link rel="stylesheet" href="style_recherche.css">
        <link rel="stylesheet" href="style_header.css">
        <link rel="stylesheet" href="style_footer.css">
        
    </head>

    <body>

        <?php require('header.php')?>
        <main>


            <section>

                <div class="container">
                    <h1>Résultats de votre recherche</h1>

                    <div class="row">
                        <div class="col-10">
                            <table class="table table-image">
                                <thead>
                                    <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Nom Commun</th>
                                    <th scope="col">Nom Latin</th>
                                    <th scope="col">Région</th>
                                    <th scope="col">Mortelle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php foreach($results['start'] as $spider) {
                                    if ($spider['mortelle'] == 1 ) { $spider['mortelle'] = 'Oui' ;} else {$spider['mortelle'] = 'Non' ;}
                                    echo "
                                    
                                    <tr>
                                        <td>
                                        <a href='element.php?id=".$spider['id']."'><img src='".$spider['image']."' class='img-fluid img-thumbnail' alt='Sheep'></a>
                                        </td>
                                        <td><a href='element.php?id=".$spider['id']."'>".$spider['nom_commun']."</a></td>
                                        <td><a href='element.php?id=".$spider['id']."'>".$spider['nom_latin']."</a></td>
                                        <td>".$spider['region']."</td>
                                        <td>".$spider['mortelle']."</td>
                                    </tr>
                                    </a>"; } 
                                ?>

                                <?php foreach($results['contain'] as $spider) {
                                    if ($spider['mortelle'] == 1 ) { $spider['mortelle'] = 'Oui' ;} else {$spider['mortelle'] = 'Non' ;}
                                    echo "
                                    <tr>
                                        <td class='w-25'>
                                        <a href='element.php?id=".$spider['id']."'><img src='".$spider['image']."' class='img-fluid img-thumbnail' alt='Sheep'></a>
                                        </td>
                                        <td><a href='element.php?id=".$spider['id']."'>".$spider['nom_commun']."</td></a>
                                        <td><a href='element.php?id=".$spider['id']."'>".$spider['nom_latin']."</td></a>
                                        <td>".$spider['region']."</td>
                                        <td>".$spider['mortelle']."</td>
                                    </tr>"; } 
                                ?>
                                </tbody>
                            </table>   
                        </div>
                    </div>
                </div>

            </section>
                

        </main>

        <section class="footer">

            <?php require('footer.php')?>

        </section>


    </body>
</html>