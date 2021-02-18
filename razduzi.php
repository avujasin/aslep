<title>Razduzenja</title>
<?php
include('db.php');
require 'logincheck.php';
$sql = 'SELECT id, name FROM users';
$stmt=$connection->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
require 'header.php';
?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Razdruzivanje radnika</h2>
    </div>
 
  
  <div>
  <div class="card-body">
  <table class="table table-bordered table-responsive"><thead>
    <tr>
          
          <th>Ime </th>
          <th>Opcije</th>
      </tr>
    </thead>
    <?php foreach($data as $list){?>
    <tr>
     
      <td><?php echo $list['name']?></td>
     <td>
      <a href="razduzenje.php?id=<?= $list['id'];?>" class="btn btn-danger">Razduzi</a>
  
     </td>

    </tr>
    <?php } ?>
  </table>
  </div>
</div></div></div>
<?php require 'footer.php'; ?>