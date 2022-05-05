<?php

require('spiders.php');

//Récupère les résultats 

$id = htmlspecialchars($_GET['id']);
$infos = new Spider();
$spider= $infos->getOne($id);

if($spider['mortelle'] == 0 ) {
    $spider['mortelle'] = 'Non';
} else {
    $spider['mortelle'] = 'Oui';
}


?>