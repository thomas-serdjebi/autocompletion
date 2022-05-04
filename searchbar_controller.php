<?php

require_once('spiders.php');

$word = htmlspecialchars($_GET['search']);

$autocomplete = new Spider();
@$results = $autocomplete->research($word);


echo json_encode($results);


?>


