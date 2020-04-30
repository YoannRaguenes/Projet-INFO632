<?php
	include('connect_bdd.php');

	
	if(isset($_SESSION['id_prof']))
	{
	header('Location: http://localhost/projet-INFO642/accEnseignant.php');
	}

	if(isset($_SESSION['id_etud']))
	{
		
	header('Location: http://localhost/projet-INFO642/accEtudiant.php');

	}

	if(isset($_SESSION['id_serv']))
	{
	header('Location: http://localhost/projet-INFO642/accTechnicien.php');
	}

	
?>