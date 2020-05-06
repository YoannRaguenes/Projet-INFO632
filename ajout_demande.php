<?php
	include("connect_bdd.php");	
	if(isset($_POST['description']) && isset($_POST['budget']) && isset($_POST['produits']) && isset($_POST['quantite']) && isset($_POST['fournisseur'])&& isset($_POST['prix']) && isset($_POST['lien']) && isset($_POST['date']) && isset($_POST['mail']) && isset($_POST['numero']) && isset($_POST['enseignant'])){

		$description = $_POST['description'];
		$budget = $_POST['budget'];
		$produits = $_POST['produits'];
		$quantite = $_POST['quantite'];
		$fournisseur = $_POST['fournisseur'];
		$prix = $_POST['prix'];
		$lien = $_POST['lien'];
		$date = $_POST['date'];
		$mail = $_POST['mail'];
		$numero = $_POST['numero'];
		$enseignant = $_POST['enseignant'];
		


	    if (isset($_FILES['monfichier']) ){
	    	

        // Testons si le fichier n'est pas trop gros
        if ($_FILES['monfichier']['size'] <= 1000000)
        {
                // Testons si l'extension est autorisée
                $infosfichier = pathinfo($_FILES['monfichier']['name']);
                $extension_upload = $infosfichier['extension'];
                $extensions_autorisees = array('jpg', 'jpeg', 'gif', 'png', 'pdf', 'txt');
                
                if (in_array($extension_upload, $extensions_autorisees))
                {
                        // on enlève les accents et cractère spéciaux du nom
                        $fichier = basename($_FILES['monfichier']['name']);
                        
                        $fichier = strtr($fichier,'ÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðòóôõöùúûüýÿ','AAAAAACEEEEIIIIOOOOOUUUUYaaaaaaceeeeiiiioooooouuuuyy');
                        $fichier = preg_replace('/([^.a-z0-9]+)/i', '-', $fichier);

                        move_uploaded_file($_FILES['monfichier']['tmp_name'], 'images/' . $fichier);
                        
                        $chemin = 'http://pageweb/images/' . $fichier ;
                        
                        $sql = "INSERT INTO demande_materiel(description, ligne_budgetaire, produit_concerne, quantite, fournisseur, prix_unitaire, lien_vers_site, image, jour, mail,numero,enseignant) VALUES ('$description','$budget','$produits','$quantite','$fournisseur','$prix','$lien','$chemin','$date','$mail',$numero,'$enseignant')";
						$sth = $base->prepare($sql);
	    				$sth->execute();
	    				echo "L'envoi a bien été effectué !";

                         
                
                }
        }
}
else{
	
	$sql = "INSERT INTO demande_materiel(description, ligne_budgetaire, produit_concerne, quantite, fournisseur, prix_unitaire, lien_vers_site, image, jour, mail,numero,enseignant) VALUES ('$description','$budget','$produits','$quantite','$fournisseur','$prix','$lien',NULL,'$date','$mail',$numero,'$enseignant')";
		$sth = $base->prepare($sql);
	    $sth->execute();
}

		$sql = "INSERT INTO suivi_demande_materiel (etat) VALUES (NULL)"; //on pourrait déjà initialiser l'etat ici mais on gère les cas critiques
		$sth = $base->prepare($sql);
		$sth->execute();

	    $sql = "SELECT id_demande FROM demande_materiel";
	    $sth = $base->prepare($sql);
	    $sth->execute();
	    $test = $sth ->rowCount();
	    $test = $test - 1;
	    $result = $sth->fetchAll();
	    $id_demande = $result[$test][0];
	    
	    $sql = "INSERT INTO demande_enseignant (id, UE, nom, description, commentaire) VALUES ('$id_demande', NULL, NULL, NULL, NULL)"; 
		$sth = $base->prepare($sql);
		$sth->execute();

	    $sql = "UPDATE suivi_demande_materiel SET etat = 'etat1' WHERE id_suivi = '$id_demande'";
	    $sth = $base->prepare($sql);
		$sth->execute();
		if(isset($chemin)){
		$sql = "INSERT INTO toute_demandes (id, numero, description, ligne_budgetaire, produit_concerne, quantite, fournisseur, prix_unitaire, lien_vers_site, image, jour, mail, nom) VALUES ('$id_demande', $numero, '$description','$budget','$produits','$quantite','$fournisseur','$prix','$lien','$chemin','$date','$mail','$enseignant')"; 
		$sth = $base->prepare($sql);
		$sth->execute();
	}
	else {
		$sql = "INSERT INTO toute_demandes (id, numero, description, ligne_budgetaire, produit_concerne, quantite, fournisseur, prix_unitaire, lien_vers_site, image, jour, mail, nom) VALUES ('$id_demande', $numero, '$description','$budget','$produits','$quantite','$fournisseur','$prix','$lien',NULL,'$date','$mail','$enseignant')"; 
		$sth = $base->prepare($sql);
		$sth->execute();

	}

	    #echo '<body onLoad="alert(\'Votre ajout a bien été pris en compte!\')">';
		#echo '<meta http-equiv="refresh" content="0;URL=accEtudiant.php">';
	}
?>