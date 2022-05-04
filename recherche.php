<?php 

require('recherche_controller.php')


?>

<!doctype html>
<html lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <charset="ISO-8859-1>
        <title>Titre de la page</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="script.js"></script>
    </head>

    <body>

        <header">
            <form method="GET">
                <div class="row">
                    <div class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix"></i>
                                <input type="text" id="autocomplete-input" placeholder="search a spider"class="autocomplete" name="search" id="search" autocomplete="off" value="<?php echo $word ?>">
                                <label for="autocomplete-input"></label>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <section class="sectionUp"></section>
            <section class="sectionDown"></section>
        </header>

        <main>
            <div class="container">
                
            </div>


        </main>


    </body>
</html>