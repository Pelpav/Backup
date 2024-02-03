<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$bdd = new PDO('mysql:host=localhost; dbname=pret; charset=utf8;', 'root');
if (isset($_GET['id']) and !empty($_GET['id'])) {
    $getId = $_GET['id'];
    $recupUser = $bdd->prepare('SELECT * FROM contracteurs WHERE id =?');
    $recupLoan = $bdd->prepare('SELECT * FROM loans WHERE user_id = ?');
    $recupLoan->execute(array($getId));
    $recupUser->execute(array($getId));
    if ($recupUser->rowCount() > 0) {
        if ($recupLoan->rowCount() > 0) {
            $supprimerLoan = $bdd->prepare('DELETE FROM loans WHERE user_id = ?');
            $supprimerLoan->execute(array($getId));
        }
        $bannirUser = $bdd->prepare('DELETE FROM contracteurs WHERE id = ?');
        $bannirUser->execute(array($getId));
        header('Location: index.php');
    } else {
        echo "Non retrouvé";
    }
} else {
    echo "Erreur";
}