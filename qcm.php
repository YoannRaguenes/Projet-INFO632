<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" >
   <head>
       <title>QCM</title>
       <meta charset="utf-8">
        <link rel="stylesheet" href="qcm.css"  type="text/css" />
   </head>
   <body>
       <form method="post" action="reponse.php">
        <fieldset>
   <p>
       Quel est la couleur du cheval blanc ,  :<br />
       <label><input type="radio" name="cheval" value="blanc" />blanc</label><br />
       <label><input type="radio" name="cheval" value="noir" />noir</label><br />
       <label><input type="radio" name="cheval" value="marons" />marons</label><br />
       <label><input type="radio" name="cheval" value="violet" />violet</label>
   </p>
   <p>
       Quel est la couleur du cheval blanc ,  :<br />
       <label><input type="radio" name="cheval" value="blanc" />blanc</label><br />
       <label><input type="radio" name="cheval" value="noir" />noir</label><br />
       <label><input type="radio" name="cheval" value="marons" />marons</label><br />
       <label><input type="radio" name="cheval" value="violet" />violet</label>
   </p>
    <p>
       Quel est la couleur du cheval blanc ,  :<br />
       <label><input type="radio" name="cheval" value="blanc" />blanc</label><br />
       <label><input type="radio" name="cheval" value="noir" />noir</label><br />
       <label><input type="radio" name="cheval" value="marons" />marons</label><br />
       <label><input type="radio" name="cheval" value="violet" />violet</label>
   </p>
    <p>
       Quel est la couleur du cheval blanc ,  :<br />
       <label><input type="radio" name="cheval" value="blanc" />blanc</label><br />
       <label><input type="radio" name="cheval" value="noir" />noir</label><br />
       <label><input type="radio" name="cheval" value="marons" />marons</label><br />
       <label><input type="radio" name="cheval" value="violet" />violet</label>
   </p>
   <input type="submit" value="Valider" />
   </fieldset>
</form>
   </body>
</html>
<?php
      if (isset($_POST['cheval']))
       {
        //On securise les variables
        $cheval=htmlentities($_POST['cheval']);
      }
?>

