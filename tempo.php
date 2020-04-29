<?php
	include('connect_bdd.php');

	echo $_SESSION['email'] . " " . $_SESSION['nom'] . " " . $_SESSION['prenom'];
	if(isset($_SESSION['id_prof']))
	{
		echo"Vous etes profs";
	}

	if(isset($_SESSION['id_etud']))
	{
		echo"Vous etes etudiant";
	}

	if(isset($_SESSION['id_serv']))
	{
		echo"Vous etes service";
	}

	echo '<form id=deco method="post" action ="deconnexion.php">';
	echo '<input type="submit" name="deconnexion" value="deconnexion">';

?>