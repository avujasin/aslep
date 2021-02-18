<title>Razduzivanje</title>
<?php
require 'logincheck.php'; 
require 'header.php';
$role = $_SESSION['role'];
if($role === "1"){
require 'db.php';}
else die("Bolje razumeti malo nego pogrešno razumeti mnogo.");

$id = $_GET['id'];
$sql = 'SELECT SUM(invoices.charge) as suma, users.name as name, min(invoices.out_time) as min FROM `invoices` inner JOIN users on invoices.auth_id = users.id where users.id =:id and razduzen = 0 and  invoices.out_time < "2019-09-23" and invoices.out_time is not null ORDER by invoices.out_time ASC';
$statement = $connection->prepare($sql);
$statement->execute([':id' => $id ]);
$person = $statement->fetch(PDO::FETCH_OBJ);

 if (isset($_POST['update'])&& isset($_POST['suma'])) {
	$stanje = $_POST['suma'];
	$imeRadnika = $person->name;/*IME SA SPISKA */
	$ime = $_SESSION['name'];
	$sql = 'UPDATE ae.wallet SET suma = suma + :stanje where name = :ime ';
	$sql2 = 'UPDATE ae.invoices INNER JOIN users ON invoices.auth_id = users.id SET invoices.razduzen = 1 where name = :imeRadnika';
	$stmt=$connection->prepare($sql2);
	if($stmt->execute([':imeRadnika'=>$imeRadnika])){
		
	}else echo "Greska";
  $statement = $connection->prepare($sql);
 if($statement->execute([':stanje' => $stanje, ':ime'=>$ime])){
   header('Location: stanje.php');
  }else {
  	echo "AAAA";
  }

}


?>

<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Razduzenje (<?= $person->name?>) </h2>
    </div>
 
  
  <div>
  <div class="card-body">
<body>
<form method="post" role="form">
  <div class="form-group">
    <label for="exampleInputEmail1">Ime</label>
    <input name="name" value="<?= $person->name?>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" readonly>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Iznos</label>
    <input name="suma" value="<?php if($person->suma == 0){ echo "0";} else echo $person->suma;?>" type="text" class="form-control" id="exampleInputPassword1" placeholder="Unesite iznos" readonly><small id="emailHelp" class="form-text text-muted">U ovo polje dozvoljen je SAMO unos brojeva.</small>
  </div>
   <div class="form-group">
    <label for="exampleInputEmail1">Datum poslednjeg razduzenja</label>
    <input name="datum" value="<?php if($person->min == 0){ echo "Nema nerazduzenog novca";} else echo $person->min;?>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" readonly>
  </div>
  <input type="submit" name="update" class="btn btn-primary" value="Razduzi" onClick="return confirm('Da li ste sigurni da želite da razduzite radnika?')">

  <a href="razduzi.php" class="btn btn-warning">Nazad</a>
 
</form></body></div></div></div></div>
<?php require 'footer.php'; ?>

<!--
<form role="form" method="post">
<table>
	<tr>
		<th>IME</th>
		<th>IZNOS</th>
		<th>Poslednji put razduzen</th>
		<th>Opcije</th>
	</tr>
	 
	<TR>
		<TD><?= $person->name?></TD>
		<td><input type="text" name="suma" value="<?php if($person->suma == 0){ echo "0";} else echo $person->suma;?>" readonly></td>
		<TD><?php if($person->min == 0){ echo "Nema nerazduzenog novca";} else echo $person->min;?></TD>
		<td><input type="submit" name="update" value="Razduzi"></td>
	</TR>
	 
</table></form>