<title>Unos spoljnog prihoda</title>
<?php
require 'logincheck.php'; 
require 'header.php';
$role = $_SESSION['role'];

require 'db.php';

$ime = $_SESSION['name'];


 if (isset($_POST['update']) && isset($_POST['iznos'])) {
    $iznos = $_POST['iznos'];
    
    $queryCalc = "UPDATE wallet SET suma = suma + '$iznos' where wallet.name = '$ime'";
    $stmt=$connection->prepare($queryCalc);
    if($stmt->execute()){
       header('Location: stanje.php');
    }else echo "Iznos moze biti samo broj!";
} 


?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Novi spoljni prihod</h2>
    </div>
 
  
  <div>
  <div class="card-body">
<body>
<form method="post" action="spoljni_prihod.php">

  <div class="form-group">
    <label for="exampleInputPassword1">Iznos</label>
    <input name="iznos" type="text" class="form-control" id="exampleInputPassword1" placeholder="Unesite iznos"><small id="emailHelp" class="form-text text-muted">U ovo polje dozvoljen je SAMO unos brojeva.</small>
  </div>
  <input type="submit" name="update" class="btn btn-primary" value="Unesi">
 
</form></body></div></div></div></div>
<?php require 'footer.php'; ?>
