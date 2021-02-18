<title>Upravljaj korisnicima</title>
<?php
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
include('db.php');
require 'header.php';
$sql = 'SELECT id, name, email, role FROM users';
$stmt=$connection->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);

if(isset($_GET['del'])){
  $id = $_GET['del'];

  $invoices = new Superclass();
  $invoices->deleteUser($id);
}

?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Upravljaj korisnicima</h2>
    </div>
 
  
  <div>
  <div class="card-body">
  <table class="table table-bordered table-responsive"><thead>
    <tr>
          <th>Korisnicko ime</th>
          <th>Email </th>
          <th>Opcije</th>
      </tr>
    </thead>
    <?php foreach($data as $list){?>
    <tr>
      <td><?php echo $list['name']?></td>
      <td><?php echo $list['email']?></td>
     <td>
     <a href="edit_user.php?id=<?= $list['id'];?>" class="btn btn-info">Izmeni</a>
    <a href="users.php?del=<?= $list['id'];?>" class="btn btn-danger" onClick="return confirm('Da li ste sigurni da želite da obrišete unos?')">Obriši</a>
    
     </td>

    </tr>
    <?php } ?>
  </table>
  </div>
</div></div></div>
<?php require 'footer.php'; ?>
      
     