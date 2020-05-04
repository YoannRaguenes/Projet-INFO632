<html>
    <head>
	
       <meta charset="utf-8">
        <link rel="stylesheet" href="page_3.css"  type="text/css" />
    </head>
    <body>
	
		<div id="entete">
			
			<div id="cadreConnec">
			Nom d'utilisateur
			<p><a href="index.php">Se déconnecter</p></a>
			</div>
			
			<div id="Bienvenue">
			<h1>Bienvenue sur la plateforme de commande de matériel</h1>
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
				<div id="logopopo">
				<img src="images\logoPOPO.jpg" alt="" />
					</div>		
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
			<div id="credits">
			<br>Site réalisé par Adrien Simard, Roshan Nepaul, Kévin Fanton et Yoann Raguenes</br>
			<br> Etudiants en 3ème année de la filière IDU de Polytech Annecy-Chambéry</br>
			</div>
			</div>
		
	</body>
</html>	