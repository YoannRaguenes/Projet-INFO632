<?php
	$servername = 'mysql:host=localhost;dbname=gestioncommande';
	$username ='root';
	$password='';


	try{
		$base = new PDO($servername, $username, $password);
		session_start();
	}
	catch(exception $e){
		die ('Erreur :' .$e->getMessage());
	}