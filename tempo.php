<?php
	include('connect_bdd.php');
	session_start();

	
	if(isset($_SESSION['id_prof']))
	{
	header('Location: http://localhost/projet-INFO642/accEnseignant.php');
	exit();
	}

	if(isset($_SESSION['id_etud']))
	{
		
	header('Location: http://localhost/projet-INFO642/accEtudiant.php');
	exit();

	}

	if(isset($_SESSION['id_serv']))
	{
	header('Location: http://localhost/projet-INFO642/accTechnicien.php');
	exit();		
	}


	
?>