<title>Vozila</title>
<?php 
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}
if (isset($_POST['submit'])) {
    
   $name = $_POST['name']; 
   $status = 1; 
   

   $fields = [
    'ime'=>$name, 
    'status'=>$status
       
 ];

$insertVozila = new Superclass();
$insertVozila->insertVozila($fields);

}

if(isset($_GET['del'])){
  $id = $_GET['del'];

  $deleteVozilo = new Superclass();
  $deleteVozilo->deleteVozilo($id);
   header('Location: vozila.php');
} 

?>

  <form method="post" action="vozila.php">
<div class="modal fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Novo vozilo</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
      
          <input type="text" id="form3" name="name" class="form-control validate" placeholder="Ime vozila">
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
      <h2>Vozila</h2>
       
    </div>
  <div>
  <div class="card-body">
     <a href="" class="btn btn-info btn-rounded mb-4" data-toggle="modal" data-target="#modalSubscriptionForm">Dodaj novo vozilo</a>
  <table class="table table-bordered table-responsive"><thead>
    <tr>
        <th>ID</th>
          <th>Ime </th>
          <th>Akcija</th>
      </tr>
    </thead>
    <?php 
    $vozila = new Superclass();
    $rows = $vozila->selectVozilo();
      foreach($rows as $row){ ?>
    <tr>
     <td><?= $row['idvozila'];?></td>
      <td><?= $row['ime'];?></td>
      <td><a href="vozila.php?del=<?= $row['idvozila'];?>" class="btn btn-danger" onClick="return confirm('Da li ste sigurni da želite da obrišete unos?')">Obriši</a></td>
    </tr>
    <?php } ?>
  </table>
  </div>
</div></div></div>

<?php require 'footer.php'; ?>
