<title>Unos rashoda</title>
<?php
require 'logincheck.php'; 
require 'header.php';
$role = $_SESSION['role'];

require 'db.php';
$ime = $_SESSION['name'];

$sql = "select name, id from wallet where name = '$ime'";
$statement = $connection->prepare($sql);
$statement->execute();
$person = $statement->fetch(PDO::FETCH_OBJ);
$personid = ($person->id);

 if (isset($_POST['update'])&& isset($_POST['opis'])&& isset($_POST['iznos'])) {
 		$opis = $_POST['opis'];
 		$iznos = $_POST['iznos'];
 		
 		
 		$datum = $_POST['datum'];
 		$queryCalc = "UPDATE wallet SET suma = suma - '$iznos' where wallet.name = '$ime'";
 		$queryInsert = "INSERT INTO rashod (opis,iznos,walletid,datum) VALUES ('$opis','$iznos','$personid','$datum')";
 		$stmt=$connection->prepare($queryInsert);
 		$stmt1=$connection->prepare($queryCalc);
		if($stmt->execute() && $stmt1->execute()){
			 header('Location: rashodi.php');
		}else echo "Iznos moze biti samo broj!";
} 


?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Novi rashod</h2>
    </div>
 
  
  <div>
  <div class="card-body">
<body>
<form method="post" action="rashod.php">
  <div class="form-group">
    <label for="exampleInputEmail1">Opis</label>
    <input name="opis" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Unesite opis rashoda">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Iznos</label>
    <input name="iznos" type="text" class="form-control" id="exampleInputPassword1" placeholder="Unesite iznos"><small id="emailHelp" class="form-text text-muted">U ovo polje dozvoljen je SAMO unos brojeva.</small>
  </div>
   <div class="form-group">
    <label for="exampleInputPassword1">Datum</label>
    <input name="datum" type="date" class="form-control" id="exampleInputPassword1">
  </div>
  <input type="submit" name="update" class="btn btn-primary" value="Razduzi">
 
</form></body></div></div></div></div>
<?php require 'footer.php'; ?>
