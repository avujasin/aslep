<title>Rashodi</title>
<?php
include('db.php');
require 'logincheck.php';

$sql = 'SELECT  rashod.opis as opis, rashod.iznos as iznos, (DATE_FORMAT(rashod.datum, "%d-%m-%Y %H:%i:%S")) as datum1,rashod.tip as tip, wallet.name as ime from rashod INNER JOIN wallet on rashod.walletid = wallet.id order by rashod.datum desc LIMIT 100';
$stmt=$connection->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);

$user_id = $_SESSION['id'];

$sql = "select name, id from wallet where user_id = '$user_id'";
$statement = $connection->prepare($sql);
$statement->execute();
$person = $statement->fetch(PDO::FETCH_OBJ);
$personid = ($person->id);

 if (isset($_POST['submit'])&& isset($_POST['opis'])&& isset($_POST['iznos'])&& isset($_POST['tip'])) {
  if($_POST['tip'] == '1'){
    $tip = "KES";

    $opis = $_POST['opis'];
    $iznos = $_POST['iznos'];
    
    
    $datum = $_POST['datum'];
    $queryCalc = "UPDATE wallet SET suma = suma - '$iznos' where wallet.name = '$ime'";
    $queryInsert = "INSERT INTO rashod (opis,iznos,walletid,datum,tip) VALUES ('$opis','$iznos','$personid','$datum','$tip')";
    $stmt=$connection->prepare($queryInsert);
    $stmt1=$connection->prepare($queryCalc);
    if($stmt->execute() && $stmt1->execute()){
       header('Location: rashodi.php');
    }else echo "Iznos moze biti samo broj!";
  } 
  else if($_POST['tip'] == '0') {
    $tip = "RF";
    $opis = $_POST['opis'];
    $iznos = $_POST['iznos'];
    
    $today = date("Y-m-d H:i:s");
    $datum = $_POST['datum'];
    $queryCalc = 'UPDATE w_firme SET f_suma = f_suma - '.'"'.$iznos.'"'.',pu ='.'"'.$today.'"'.' where idw_firme = 0';
    $queryInsert = "INSERT INTO rashod (opis,iznos,walletid,datum,tip) VALUES ('$opis','$iznos','$personid','$datum','$tip')";
    $stmt=$connection->prepare($queryInsert);
    $stmt1=$connection->prepare($queryCalc);
    if($stmt->execute() && $stmt1->execute()){
       header('Location: rashodi.php');
  }}

} 

$today = date("Y-m-d H:i:s");

$datum = strtotime($today);
$datum = date("Y-m-d\TH:i:s", $datum);






require 'header.php';
?>


  <form method="post" action="rashodi.php">
<div class="modal fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Novi rashod</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
     
          <input type="text" id="form3" name="opis" class="form-control validate" placeholder="Opis">
          <br>
        
          <input type="text" id="form3" name="iznos" class="form-control validate" placeholder="Iznos">
          <br>
      
          <select name="tip" class="form-control validate" required="true">
            <option value="">Odaberi tip</option>
            <option value="1">Keš</option>
            <option value="0">Račun firme</option>
          </select>
          <br>
         
          <input type="datetime-local" id="form3" name="datum" class="form-control validate" placeholder="Datum" value="<?=$datum?>">
        </div>
      </div>
      <div class="modal-footer d-flex justify-content-center">
        <input name="submit" type="submit" class="btn btn-primary btn-block btn-lg" value="Unesi">
      </div>
    </div>
  </div>
</div></form> 





<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Rashodi</h2>
    </div>
   <div>
  <div class="card-body">
    <a href="" class="btn btn-info btn-rounded mb-4" data-toggle="modal" data-target="#modalSubscriptionForm">Dodaj rashod</a>
  <div class="table-responsive">
  <table class="table table-bordered">
    <thead>
    <tr>	
		<th>Datum</th>
        <th>Ime</th>
        <th>Opis </th>
        <th>Cena</th>
        <th>Tip</th>
         
      </tr>
    </thead><tbody>
    <?php foreach($data as $list){?>
    <tr>
    	<td>  <?php echo $list['datum1'] ?></td>
      <td><?php echo $list['ime']?></td>
      <td><?php echo $list['opis']?></td>
     <td> <?php echo $list['iznos']?> din </td>
     <td><?php if ($list['tip'] == "KES") {echo "Keš";}else echo "Račun firme";?></td>
	
    </tr>
    <?php } ?></tbody>
  </table>


  </div></div>
</div></div></div>
<?php require 'footer.php'; ?>
