<?php

require('spiders.php');

//Récupère les résultats 

$id = htmlspecialchars($_GET['id']);
$infos = new Spider();
$spider= $infos->getOne($id);

if($spider[0]['mortelle'] == 0 ) {
    $spider[0]['mortelle'] = 'Non';
} else {
    $spider[0]['mortelle'] = 'Oui';
}


?>