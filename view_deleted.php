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
<title>Pregled obrisanih naloga</title>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Pregled obrisanih naloga</h2>
    </div>
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
			$rows = $invoices->selectDeleted();
			foreach($rows as $row){ ?>
				<tr>
					<td><?php $date = date_create($row['datum']); echo date_format($date,"d-m-Y H:i:s");?></td>
					<td><?= $row['kreirao'];?></td>
					<td><?= $row['ime'];?></td>
					<td><?= $row['relacija'];?></td>
					<td><?= $row['registracija'];?> </td>
					<td><?= $row['trosak'];?> </td>
					<td><?= $row['prihod'];?> </td>
					<td><a href="preview.php?id=<?= $row['idnalog'];?>" class="btn btn-primary">Pregledaj</a>
        </td>
				</tr>
		<?php	}
		?>
      </table>

    </div>
  </div>
</div>
<?php require 'footer.php'; ?>