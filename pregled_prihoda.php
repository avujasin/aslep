<title>Pregled Spoljnih Prihoda</title>
<?php
include('db.php');
require 'logincheck.php';
$sql = "SELECT out_income.opis as opis, out_income.iznos as iznos,(DATE_FORMAT(out_income.datum, '%d-%m-%Y')) as datum, relog.name as ime FROM aerodrom_app.out_income inner join aerodrom_app.relog on out_income.userid = relog.id";
$stmt=$connection->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
require 'header.php';
?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Spoljni prihodi</h2>
    </div>
 
  
  <div>
  <div class="card-body">
  <table class="table table-bordered table-responsive"><thead>
    <tr>
        <th>Ime</th>
          <th>Opis</th>
          <th>Iznos</th>
            <th>Datum</th>
      </tr>
    </thead>
    <?php foreach($data as $list){?>
    <tr>
     <td><?php echo $list['ime']?></td>
      <td><?php echo $list['opis']?></td>
      <td><?php echo $list['iznos']?> din</td>
      <td><?php echo $list['datum']?> </td>

    </tr>
    <?php } ?>
  </table>
  </div>
</div></div></div>
<?php require 'footer.php'; ?>

