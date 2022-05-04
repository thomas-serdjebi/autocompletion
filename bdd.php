<?php

try{
  $db = new PDO("mysql:host=localhost;dbname=autocompletion; 'root', ''");
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo 'Connexion réussie';
  $db->exec('SET NAMES utf8');
  return $db;
}

catch(PDOException $e){
  echo "Erreur : " . $e->getMessage();
}



?>