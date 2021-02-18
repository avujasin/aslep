<?php 

spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}

?> 
<title>Razduzi nalog firme</title>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Pregled svih naloga koji nisu razduzeni</h2>
    </div>
    <div class="card-body">
      <table class="table table-bordered table-responsive">
        <tr>
          <th>Datum</th>
          <th>Kreirao</th>
          <th>Firma</th>
          <th>Vozilo</th>
          <th>Relacija</th>
          <th>Registracija</th>
          <th>Trosak</th>
          <th>Prihod</th>
          <th>Akcija</th>
        </tr>
        <?php 
      $invoices = new Superclass();
      $rows = $invoices->selectNalogFirme();
      foreach($rows as $row){ ?>
        <tr>
          <td><?php $date = date_create($row['datum']); echo date_format($date,"d-m-Y H:i:s");?></td>
          <td><?= $row['kreirao'];?></td>
          <td><?= $row['imeFirme'];?> </td>
          <td><?= $row['ime'];?></td>
          <td><?= $row['relacija'];?></td>
          <td><?= $row['registracija'];?> </td>
          <td><?= $row['trosak'];?> </td>
          <td><?= $row['prihod'];?> </td>
          <td><a href="delFnalogPriprema.php?id=<?= $row['idnalog'];?>" class="btn btn-danger" onClick="return confirm('Da li ste sigurni da želite da obrišete unos?')">Obriši</a>
          <a href="razduziFirmu.php?id=<?= $row['idnalog'];?>" class="btn btn-success" onClick="return confirm('Da li ste sigurni da želite da razduzite firmu?')">Razduzi</a><a href="previewf.php?id=<?= $row['idnalog'];?>" class="btn btn-primary">Pregledaj</a>
          </td>
        </tr>
    <?php }
    ?>
      </table>

    </div>
  </div>
</div>
<?php require 'footer.php'; ?>