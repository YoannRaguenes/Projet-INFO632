<html>
    <head>
	
       <meta charset="utf-8">
        <link rel="stylesheet" href="QCMbis.css"  type="text/css" />
    </head>
    <body>
	
		<div id="entete">
		
			<div id="cadreConnec">
			Nom d'utilisateur
			<p></p>
			<a href="déconnexion.php">Se déconnecter</a>
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
			 <div>
      <form method="post">
        <fieldset>
          <legend>Enquête de satisfaction</legend>

   <p >
       Votre navigation sur le site web :<br />
       <label id='formul'><input type="radio" name="avis1" value="Insatisfaisante" id='formul' />Insatisfaisant</label><br />
       <label><input type="radio" name="avis1" value="Peu satisfaisante" />Peu satisfaisant</label><br />
       <label><input type="radio" name="avis1" value="Satisfaisante" />Satifaisant</label><br />
       <label><input type="radio" name="avis1" value="Très satisfaisante" />Très satisfaisant</label>
   </p>
   <p >
       Le résultat de votre commande était :<br />
       <label><input type="radio" name="avis2" value="Insatisfaisant" />Insatisfaisant</label><br />
       <label><input type="radio" name="avis2" value="Peu satisfaisant" />Peu satisfaisant</label><br />
       <label><input type="radio" name="avis2" value="Satisfaisant" />Satifaisant</label><br />
       <label><input type="radio" name="avis2" value="Très satisfaisant" />Très satisfaisant</label>
   </p>
    <p >
       Explications :<br />
       <textarea type='text' name='description'></textarea><br />

   </p>
   <input type="submit" value="Valider" id='submit2'/>
   </fieldset>
</form>
			
		
		</div>
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
