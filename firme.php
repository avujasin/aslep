<title>Firme</title>
<?php 
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}
if (isset($_POST['submit'])) {
    
   $name = $_POST['name']; 
   $status = 1; 
   

   $fields = [
    'fime'=>$name, 
    'status'=>$status
       
 ];

$insertFirme = new Superclass();
$insertFirme->insertFirme($fields);

}

if(isset($_GET['del'])){
  $id = $_GET['del'];
  $deleteVozilo = new Superclass();
  $deleteVozilo->deleteFirme($id);
   
} 

?>

  <form method="post" action="firme.php">
<div class="modal fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Nova firma</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          
          <input type="text" id="form3" name="name" class="form-control validate" placeholder="Ime firme">
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
      <h2>Firme</h2>
       
    </div>
  <div>
  <div class="card-body">
     <a href="" class="btn btn-info btn-rounded mb-4" data-toggle="modal" data-target="#modalSubscriptionForm">Dodaj novu firmu</a>
  <table class="table table-bordered table-responsive"><thead>
    <tr>
        <th>ID</th>
          <th>Ime </th>
          <th>Akcija</th>
      </tr>
    </thead>
    <?php 
    $firma = new Superclass();
    $rows = $firma->selectFirme();
      foreach($rows as $row){ ?>
    <tr>
     <td><?= $row['idf_ime'];?></td>
      <td><?= $row['fime'];?></td>
      <td><a href="firma.php?del=<?= $row['idf_ime'];?>" class="btn btn-danger" onClick="return confirm('Da li ste sigurni da želite da obrišete unos?')">Obriši</a></td>
    </tr>
    <?php } ?>
  </table>
  </div>
</div></div></div>

<?php require 'footer.php'; ?>
