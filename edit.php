<?php 
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}

if(isset($_GET['id'])){
  $uid = $_GET['id'];

  $invoicesOne = new Superclass();
  $result = $invoicesOne->selectOne($uid);
}

if (isset($_POST['submit'])) {
    
   $date = $_POST['date']; 
   $fuel = $_POST['fuel']; 
   $toll = $_POST['toll']; 
   $parts = $_POST['parts']; 
   $other = $_POST['other'];  
   $incomeEUR = $_POST['incomeEUR']; 
   $incomeDIN = $_POST['incomeDIN']; 
   $route = $_POST['route']; 
   $vehicle = $_POST['vehicle']; 
   $licencePlates = $_POST['licencePlates']; 
   $note = $_POST['note']; 
   

   $fields = [
    'dateofjob'=>$date, 
    'fuel'=>$fuel, 
    'toll'=>$toll, 
    'parts'=>$parts, 
    'other'=>$other, 
    'incomeDIN'=>$incomeDIN, 
    'incomeEUR'=>$incomeEUR, 
    'route'=>$route, 
    'vehicle'=>$vehicle, 
    'licencePlates'=>$licencePlates, 
    'note'=>$note,  
    
 ];


$id = $_POST['id'];

$invoices = new Superclass();
$inv1 = $invoices->update($fields,$id);
}

?>



<title>Forma Tura</title>
<div class="container col-md-6 text-justify">
<div class="card mt-1">
    <div class="card-header">
      <h3>Izmeni nalog</h3>
    </div>
      <form method="post" action="">
                        <br>
                        <input type="hidden" name="id" value="<?= $result['idinvoices'];?>">
                        <div class="row">
                               <div class="col-md-6">
                                <h6>Datum i vreme</h6>
                                    <input type="date" class="form-control" name="date" value="<?=$result['dateofjob'];?>">
                                </div>
                                 <div class="col-md-6">
                                <h6>Putanja <small>(Ruta)</small></h6>
                                    <input type="text" class="form-control input-lg" name="route" value="<?=$result['route'];?>">
                            </div>
                            

                        </div>

                        <br>


                          <div class="row">
                               <div class="col-md-6">
                                <h6>Putarina</h6>
                                    <input type="text" class="form-control" required  name="toll" value="<?=$result['toll'];?>">
                                </div>
                                 <div class="col-md-6">
                                <h6>Gorivo</h6>
                                    <input type="text" class="form-control input-lg" name="fuel" value="<?=$result['fuel'];?>">
                            </div>
                            

                        </div>
                        <br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Ostalo</h6>
                                    <input type="text" class="form-control" required  name="other" value="<?=$result['other'];?>">
                                </div>
                                <div class="col-md-6">
                                <h6>Delovi</h6>
                                    <input type="text" class="form-control input-lg" name="parts" value="<?=$result['parts'];?>">
                            </div>
                            

                        </div>
                        <br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Prihod(DIN)</h6>
                                    <input type="text" class="form-control" required  name="incomeDIN" value="<?=$result['incomeDIN'];?>">
                                </div>
                           <div class="col-md-6">
                                <h6>Prihod(EUR)</h6>
                                    <input type="text" class="form-control input-lg" name="incomeEUR" value="<?=$result['incomeEUR'];?>">
                            </div>

                        </div>
                        <br>
                         <div class="row">
                               <div class="col-md-6">
                                <h6>Vozilo</h6>
                                    <input type="text" class="form-control" required  name="vehicle" value="<?=$result['vehicle'];?>">
                                </div>
                            <div class="col-md-6">
                                <h6>Tablice</h6>
                                    <input type="text" class="form-control input-lg" name="licencePlates" value="<?=$result['licencePlates'];?>">
                            </div>

                        </div><br>
                          <div class="row">
                               <div class="col-md-6">
                                <h6>Napomena</h6>
                                    <input type="text" class="form-control" required  name="note" value="<?=$result['note'];?>" >
                                </div>

                        </div>
                            <br>
                        <div class="row">
                            <hr/>
                           
                             <div class="col-md-12 ">
                                <input type="submit" class="btn btn-primary btn-block btn-lg" name="submit">
                              
                            </div>
                        </div>
                    </form>
    </div>

  </div>
</div>
<?php require 'footer.php'; ?>
