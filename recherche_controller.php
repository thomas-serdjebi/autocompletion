<?php

require('spiders.php');

//Récupère les résultats de recherche en deux array

$word = htmlspecialchars($_GET['search']);
$searching = new Spider();
$results = $searching->research($word);


?>