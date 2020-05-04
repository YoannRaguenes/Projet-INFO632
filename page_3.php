<html>
    <head>
	
       <meta charset="utf-8">
        <link rel="stylesheet" href="page_2.css"  type="text/css" />
    </head>
    <body>
	
		<div id="entete">
			<h2 id="titre">Bienvenue sur la plateforme de commande de matériel</h2>
		
			<div id="cadreConnec">
			Nom d'utilisateur
			<p><a href="index.php">Se déconnecter</p></a>
			</div>
			
		
		</div>

		<div id="main">
			<div id="menu">
				<input type="submit" id='submit'onclick=window.location.href='accEtudiant.php' value='ACCUEIL' >
				<input type="submit" id='submit'onclick=window.location.href='page_2.php' value='FAIRE UNE DEMANDE' >
				<input type="submit" id='submit'onclick=window.location.href='page_3.php' value='MES DEMANDES' >
				<input type="submit" id='submit' value='CONTACTER UN ENSEIGNANT' >
				<input type="submit" id='submit' value='CONTACTER UN TECHNICIEN' >
				<input type="submit" id='submit' value='ENQUETE DE SATISFACTION' >			
			</div>
			
			<div id="notifTchat">
			Notifications tchat
			</div>
			
			<div id="Carrousel">
			Carrousel d'images ?
			</div>
			

		<div id="contenu">
			<?php
			$numero = "11704669";					
			session_start();
			include("connect_bdd.php");
			$sql =  "SELECT *
					 FROM demande_materiel WHERE numero = '$numero'";
					$sth = $base->prepare($sql);
					$sth->execute();
					$result = $sth->fetchAll();
			?>
		<div id="form">
			<form action = 'page_4.php' method='post'>
				<fieldset>
					<legend>Consultation des demandes</legend>	
					<?php				
					echo "<label>Demandes</label> : <select name='demande'>";
							foreach ($result as $row) {
							    echo "<option>".$row['description'];}
					echo "</select>";
					?>
					<input type='submit' id='bouton_consul' value='Consulter'>					
				</fieldset>
			</form>
		
		</div>
		</div>

		<div id="footer">
		Site réalisé par Adrien Simard, Roshan Nepaul, Kévin Fanton et Yoann Raguenes
		<p> Etudiants en 3ème année de la filière IDU de Polytech Annecy-Chambéry</p>
			
		</div>
	</body>
</html>	