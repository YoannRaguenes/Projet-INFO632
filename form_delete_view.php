<!DOCTYPE HTML>

<html>

  <head>
    <title>Création de compte</title>
    <meta content="info">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="form_inscrip.css" />
  </head>
  
  <body id='fond'>
 <div>
  <h1> Supprimer un compte </h1>
  
<form method="POST">

     <?php
     include('connect_bdd.php');


        $sql ="SELECT id_personne, nom, prenom, email FROM personne";
        $sth = $bdd->prepare($sql);
        $sth->execute();
        $result = $sth->fetchAll();
        echo"<form method = 'POST' action ='delete.php'>";
        echo"<table id=table>
            <thead>
              <tr>
                <th id=th> Id </th>
                <th id=th> Nom </th>
                <th id=th> Prenom </th>
                <th id=th> Email </th>

              </tr>
            </thead>
            <tbody>";
             
            foreach ($result as $row){

              echo"
                <tr>
                  <td id=td> ". $row['id_personne']."</td>
                  <td id=td> ". $row['nom']."</td>
                  <td id=td>". $row['prenom']."</td>
                  <td id=td>". $row['email']."</td>
                  <td id=td> <input type='checkbox' name='check' value></td> 

                </tr>";

            }
        echo"</tbody> </table>";
        echo"<input type='submit' name ='supprimer' Value = 'Suppression'>";
        echo"</form>";

      ?>



</div>


  
  </body>
</html> 
