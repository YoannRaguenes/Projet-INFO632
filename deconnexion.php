<?php

header('Location: http://localhost/projet-INFO642/connexion.php');

session_start();
session_unset();
session_destroy();


exit();

?>