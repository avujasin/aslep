<title>Stanje FIRME</title>
<?php
include('db.php');
require 'logincheck.php';
$sql = 'SELECT idw_firme, f_suma, (DATE_FORMAT(pu, "%d-%m-%Y %H:%i:%S")) as datum FROM w_firme';
$stmt=$connection->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
require 'header.php';
?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Stanje</h2>
    </div>
 
  
  <div>
  <div class="card-body">
  <table class="table table-bordered table-responsive"><thead>
    <tr>
        <th>ID</th>
          <th>Ukupno </th>
          <th>Poslednji put upisano</th>
      </tr>
    </thead>
       <?php 
    $total = 0;

    foreach($data as $list){?>

    <tr>
      
     <td><?php echo $list['idw_firme']?></td>

      <td><?php echo number_format($list['f_suma'], 2, ',', ' ')?> din</td>

      <td><?php echo $list['datum'];
          
      ?> </td>
        
    </tr>
    
    <?php } 

    ?>
 
  </table>
  </div>
</div></div></div>
<?php require 'footer.php'; ?>

