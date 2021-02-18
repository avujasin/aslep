<?php 
require 'header.php';
require 'db.php';
require 'logincheck.php'; 

$id = $_GET['id'];
$preview = 'SELECT * FROM nalog where idnalog=:id';
$statment = $connection->prepare($preview);
$statment->execute([':id' => $id]);
$nalog = $statment->fetch(PDO::FETCH_OBJ);

$v = $nalog->slepVozilo;

$q = "select * from vozila where idvozila = :v";
$stat=$connection->prepare($q);
$stat->execute([':v' => $v]);
$sVozilo = $stat->fetch(PDO::FETCH_OBJ);

$i = $nalog->datum;
$vr_ulaska= date("Y-m-d\TH:i:s", strtotime($i));


?>

<title>Forma Tura</title>
<div class="container col-md-6 text-justify">
<div class="card mt-1">
    <div class="card-header">
      <h3>Pregled naloga [<?= $id;?>]</h3>
    </div>
      <form method="post" action="add.php">
                        <br>
                        <div class="row">
                               <div class="col-md-6">
                                <h6>Datum:</h6>
                                    <input readonly type="datetime-local" class="form-control"  value="<?= $vr_ulaska?>">
                                </div>

                                <div class="col-md-6">
                                <h6>Vozilo</h6>
                                    
                                    <select class="form-control" readonly>
                                      
                                      
                                      <option value="<?= $sVozilo->idvozila;?>">
                                        <?= $sVozilo->ime;?>
                                      </option> 
                                    </select>
                                    
                                </div>
                                
                        </div>

                        <br>


                          <div class="row">
                                 <div class="col-md-6">
                                <h6>Relacija <small>(Ruta)</small></h6>
                                    <input type="text" class="form-control input-lg" readonly value="<?=$nalog->relacija?>">
                            </div>
                                 <div class="col-md-6">
                                <h6>Šlepano vozilo</h6>
                                    <input type="text" class="form-control input-lg" readonly value="<?=$nalog->vozilo?>">
                            </div>
                            

                        </div>
                        <br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Registracija</h6>
                                    <input type="text" class="form-control input-lg" readonly value="<?=$nalog->registracija?>">
                            </div>
                               <div class="col-md-6">
                                <h6>Kilometraza</h6>
                                    <input type="text" class="form-control" readonly value="<?=$nalog->km?>">
                                </div>
                             
                            

                        </div>
                        <br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Trosak</h6>
                                    <input type="text" class="form-control" required  readonly value="<?=$nalog->trosak?>" >
                                </div>
                           <div class="col-md-6">
                                <h6>Opis troska</h6>
                                    <input type="text" class="form-control input-lg" readonly value="<?=$nalog->opisTroska?>">
                            </div>

                        </div>
                        <br>
                         <div class="row">
                               <div class="col-md-6">
                                <h6>Prihod <small>(Cena slepanja)</small></h6>
                                    <input type="text" class="form-control" readonly value="<?=$nalog->prihod?>" >
                                </div>
                            

                        </div><br>
                        
                    </form>
                    <?php
  $url = htmlspecialchars($_SERVER['HTTP_REFERER']);
  echo "<a class='btn btn-warning' href='$url'>Nazad</a>"; 
?>
    </div>

  </div>
</div>
<?php require 'footer.php'; ?>
