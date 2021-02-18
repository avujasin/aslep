<?php 
require 'header.php';
require 'db.php';
require 'logincheck.php'; 

$ime = $_SESSION['name'];
$sesID = $_SESSION['id'];

 if (isset($_POST['submit'])) {
    $date = $_POST['date']; 
   $slepVozilo = $_POST['slepVozilo']; 
   $relacija = $_POST['relacija']; 
   $vozilo = $_POST['vozilo']; 
   $registracija = $_POST['registracija'];  
   $trosak = $_POST['trosak']; 
   $opisTroska = $_POST['opisTroska']; 
   $prihod = $_POST['prihod']; 
   $km = $_POST['km'];

    $queryInsert = "INSERT INTO nalog (relacija,registracija,vozilo,trosak,opisTroska,km,slepVozilo,prihod,datum,kreirao) VALUES ('$relacija','$registracija','$vozilo','$trosak','$opisTroska','$km','$slepVozilo','$prihod','$date',$sesID)";

    $queryCalc = "UPDATE wallet SET suma = suma + '$prihod' -'$trosak' where wallet.user_id = '$sesID'";

    $stmt1=$connection->prepare($queryInsert);

    $stmt=$connection->prepare($queryCalc);
    if($stmt->execute()&&$stmt1->execute()){
      echo "<script> window.location = 'stanje.php';</script>";
    }else echo "Iznos moze biti samo broj!";
} 

$q = "select * from vozila";
$stat=$connection->prepare($q);
$stat->execute();

$today = date("Y-m-d H:i:s");
$dan = 0;
$datum = strtotime($today);
$datum = strtotime("+".$dan." day", $datum);
$datum = date("Y-m-d\TH:i:s", $datum);


?>


<title>Forma Tura</title>
<div class="container col-md-6 text-justify">
<div class="card mt-1">
    <div class="card-header">
      <h3>Novi nalog</h3>
    </div>
      <form method="post" action="add.php">
                        <br>
                        <div class="row">
                               <div class="col-md-6">
                                <h6>Datum</h6>
                                    <input type="datetime-local" class="form-control" required name="date" value="<?=$datum?>">
                                </div>
                                <div class="col-md-6">
                                <h6>Vozilo</h6>
                                    
                                    <select class="form-control" required="true" name="slepVozilo">
                                      
                                      <?php foreach($stat as $row){?>
                                      <option value="<?= $row['idvozila'];?>">
                                        <?= $row['ime'];?>
                                      </option> <?php }?>
                                    </select>
                                    
                                </div>
                                
                        </div>

                        <br>


                          <div class="row">
                                 <div class="col-md-6">
                                <h6>Relacija <small>(Ruta)</small></h6>
                                    <input type="text" class="form-control input-lg" name="relacija">
                            </div>
                                 <div class="col-md-6">
                                <h6>Šlepano vozilo</h6>
                                    <input type="text" class="form-control input-lg" name="vozilo">
                            </div>
                            

                        </div>
                        <br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Registracija</h6>
                                    <input type="text" class="form-control input-lg" name="registracija">
                            </div>
                               <div class="col-md-6">
                                <h6>Kilometraza</h6>
                                    <input type="text" class="form-control"  name="km" >
                                </div>
                             
                            

                        </div>
                        <br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Trosak</h6>
                                    <input type="text" class="form-control" required  name="trosak" >
                                </div>
                           <div class="col-md-6">
                                <h6>Opis troska</h6>
                                    <input type="text" class="form-control input-lg" required name="opisTroska">
                            </div>

                        </div>
                        <br>
                         <div class="row">
                               <div class="col-md-6">
                                <h6>Prihod <small>(Cena slepanja)</small></h6>
                                    <input type="text" class="form-control" required  name="prihod" >
                                </div>
                            

                        </div><br>
                        <div class="row">
                            <hr/>
                           
                             <div class="col-md-12 ">
                                <input name="submit" type="submit" class="btn btn-primary btn-block btn-lg" value="Pošalji">
                              
                            </div>
                        </div>
                    </form>
    </div>

  </div>
</div>
<?php require 'footer.php'; ?>
