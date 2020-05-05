<?php session_start()?>
<html>
    <head>
	
       <meta charset="utf-8">
        <link rel="stylesheet" href="accEtudiant.css"  type="text/css" />
    </head>
    <body>
	
		<div id="entete">
		
			<div id="cadreConnec">
			<?php $_SESSION['nom']." ".$_SESSION['prenom']?>
			<p><a href="deconnexion.php">Se déconnecter</p></a>
			</div>		
		
			<div id="Bienvenue">
			<h1>Bienvenue sur la plateforme de commande de matériel</h1>
			</div>
		
			
			
		</div>
		

		<div id="main">
			<div id="menu">
				<input type="submit" id='submit'onclick=window.location.href='accTechnicien.php' value='ACCUEIL' >
				<input type="submit" id='submit'onclick=window.location.href='demande_attente_technicien.php' value='DEMANDES EN ATTENTE' >
				<input type="submit" id='submit'onclick=window.location.href='demande_traitees_technicien.php' value='DEMANDES TRAITEES' >
				<input type="submit" id='submit' value='CONTACTER UN ENSEIGNANT' >
				<input type="submit" id='submit' value='CONTACTER UN ELEVE' >
				<input type="submit" id='submit' value='RESULTATS ENQUETE' >	
				<div id="logopopo">
			<img src="images\logoPOPO.jpg" alt="" />
		</div>
			</div>
			
			

		<div id="contenu">
			Bienvenue sur la plateforme de demande matériel!
			<p>Vous pourrez ici consulter toutes les demandes efféctuées par les élève ainsi que les enseignants pour du matériel pédagogique</p>
			
			<video width=1000 height=500 preload="auto" loop="" muted="" autoplay="" playsinline="">
                <source src="HomePolytech.mp4" type="video/mp4">
                                           
            </video>
				
		</div>
		</div>

		<div id="footer">
		Site réalisé par Adrien Simard, Roshan Nepaul, Kévin Fanton et Yoann Raguenes
		<p> Etudiants en 3ème année de la filière IDU de Polytech Annecy-Chambéry</p>
			
		</div>
	</body>
</html>	