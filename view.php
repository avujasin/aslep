<?php 

spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}



if(isset($_GET['del'])){
  $id = $_GET['del'];

  $deleteNalog = new Superclass();
  $deleteNalog->deleteNalog($id);
   header('Location: view.php');
} 


?>
<title>Rezervacije</title>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
       
      <h2>Pregled svih naloga </h2> 
    </div>
    
      <br>
    <form class="form-inline md-form form-sm mt-0">
  <input class="form-control form-control-sm ml-3 w-75" type="text" id="search"  name="search"  onkeyup="search_data()" placeholder="Pretraži..." aria-label="Search">
</form>
 
  
  <div id="search_table">
  <div class="card-body">
  <table class="table table-bordered table-responsive">
        <tr>
          <th>Datum</th>
          <th>Kreirao</th>
          <th>Vozilo</th>
          <th>Relacija</th>
          <th>Registracija</th>
          <th>Trosak</th>
          <th>Prihod</th>
          <th>Akcija</th>
        </tr>
        <?php 
      $invoices = new Superclass();
      $rows = $invoices->select();
      foreach($rows as $row){ ?>
        <tr>
          <td><?php $date = date_create($row['datum']); echo date_format($date,"d-m-Y H:i:s");?></td>
          <td><?= $row['kreirao'];?></td>
          <td><?= $row['ime'];?></td>
          <td><?= $row['relacija'];?></td>
          <td><?= $row['registracija'];?> </td>
          <td><?= $row['trosak'];?> </td>
          <td><?= $row['prihod'];?> </td>
          <td><a href="delnalog.php?id=<?= $row['idnalog'];?>" class="btn btn-danger" onClick="return confirm('Da li ste sigurni da želite da obrišete unos?')">Obriši</a><a href="preview.php?id=<?= $row['idnalog'];?>" class="btn btn-primary">Pregledaj</a>
        </td>
        </tr>
    <?php }
    ?>
      </table>

  </div>
</div></div></div>
<script>
function search_data(){
  var search=jQuery('#search').val();
  jQuery.ajax({
    method:'post',
    url:'getNalog.php',
    data:'search='+search,
    success:function(data){
      jQuery('#search_table').html(data);
    }
  }); 
}
</script>
<?php require 'footer.php'; ?>
