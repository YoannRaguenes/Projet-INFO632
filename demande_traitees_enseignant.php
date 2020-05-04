<html>
    <head>
	
       <meta charset="utf-8">
        <link rel="stylesheet" href="demande_traitees_enseignant.css"  type="text/css" />
    </head>
    <body>
	
		<div id="entete">
		
			<div id="cadreConnec">
			Nom d'utilisateur
			<p><a href="index.php">Se déconnecter</p></a>
			</div>		
		
			<div id="Bienvenue">
			<h2>Bienvenue sur la plateforme de commande de matériel</h2>
			</div>
		
			
			
		</div>
		

		<div id="main">
			<div id="menu">
				<input type="submit" id='submit'onclick=window.location.href='accEnseignant.php' value='ACCUEIL' >
				<input type="submit" id='submit'onclick=window.location.href='page_2_enseignant.php' value='DEMANDES EN ATTENTE' >
				<input type="submit" id='submit'onclick=window.location.href='demande_traitees_enseignant.php' value='DEMANDES TRAITEES' >
				<input type="submit" id='submit' value='CONTACTER UN TECHNICIEN' >
				<input type="submit" id='submit' value='CONTACTER UN ELEVE' >
				<input type="submit" id='submit' value='ENQUETE DE SATISFACTION' >
				<div id="logopopo">
				<img src="images\logoPOPO.jpg" alt="" />
			</div>	
			
		</div>
			
			

		<div id="contenu">
			<?php
				session_start();
				$nom = "CIMPAN";
				include("connect_bdd.php");
				$sql =  "SELECT * FROM toute_demandes WHERE UE IS NOT NULL AND nom = '$nom'";
						$sth = $base->prepare($sql);
						$sth->execute();
						$result = $sth->fetchAll();
				echo "<fieldset>";
				echo "<legend>Consultation des demandes traitées</legend>";
				echo "<label>Demandes</label> : <select name='demande'>";
						foreach ($result as $row) {
						    echo "<option>".$row['description'];			}
				echo "</select>";	
			?>
			
		</div>

		<div id="footer">
		Site réalisé par Adrien Simard, Roshan Nepaul, Kévin Fanton et Yoann Raguenes
		<p> Etudiants en 3ème année de la filière IDU de Polytech Annecy-Chambéry</p>
			
		</div>
	</body>
</html>	