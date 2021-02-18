<?php 
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}
$uid = 1;
$eur = new Superclass();
$result = $eur->selectEur($uid);

$e = (float)$result['eur'];

if(isset($_GET['id'])){
  $uid = $_GET['id'];

  $invoicesOne = new Superclass();
  $result = $invoicesOne->selectOne($uid);
}
$d = $result['dateofjob'];
$date = date("Y-m-d", strtotime($d));
?>
<!------ Include the above in your HEAD tag ---------->
<title>Nalog br: <?=$result['idinvoices'];?> </title>

 <div class="row">
        <div class="col-md-12">

            <div class="tile">
                <div class="tile-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="tile">
                                <section class="invoice">
                                    <div class="row mb-4">
                                        <div class="mx-auto d-block">
                                            <img src="images/logo.png" class="img-responsive"
                                                 width="250px">
                                        </div>
                                    </div>
                                    <div class="row invoice-info">
                                        
                                        <div class="col-12 text-center" style="margin-top: 5px;">
                                            <h4 class="dot-border-css">Nalog br: <?=$result['idinvoices'];?> </h4>
                                            <p class="text-muted">Datum: <?php $datum = date_create($result['dateofjob']); echo date_format($datum,"d.m.Y");?></p>
                                        </div>
                                    </div>
                                    
                                    <div class="row" >
                                        <div class="col-12 table-responsive ">
                                            <table class="table table-striped text-center">

                                                <tr>
                                                    <th class="font-invoice">Putanja: </th>
                                                    <th ><?=$result['route'];?></th>
                                                </tr>

                                                <tr>
                                                    <th class="font-invoice">Vozilo:</th>
                                                    <th ><?=$result['vehicle'];?></th>
                                                </tr>

                                                <tr>
                                                    <th class="font-invoice">Broj tablica:</th>
                                                    <th ><?=$result['licencePlates'];?></th>
                                                </tr>

                                                <tr>
                                                    <th class="font-invoice">Putarina:</th>
                                                    <th ><?=$result['toll'];?> RSD</th>
                                                </tr>

                                                <tr>
                                                    <th class="font-invoice">Gorivo:</th>
                                                    <th ><?=$result['fuel'];?> RSD</th>
                                                </tr>

                                                <tr>
                                                    <th class="font-invoice">Ostalo:</th>
                                                    <th ><?=$result['other'];?> RSD</th>
                                                </tr>
                                                <tr>
                                                   <th class="font-invoice">Delovi:</th>
                                                    <th ><?=$result['parts'];?> RSD</th>
                                                </tr>
                                                <tr>
                                                   <th class="font-invoice">Napomena:</th>
                                                    <th ><?=$result['note'];?> </th>
                                                </tr>
                                                <tr>
                                                   <th class="font-invoice">Prihod(DIN):</th>
                                                    <th ><?=$result['incomeDIN'];?> RSD</th>
                                                </tr>
                                                 <tr>
                                                   <th class="font-invoice">Prihod(EUR):</th>
                                                    <th ><?=$result['incomeEUR'];?> EUR</th>
                                                </tr>
                                                 <tr>
                                                   <th class="font-invoice">Prihod(EUR + DIN):</th>
                                                    <th ><?php
                                                            $incomeDIN = $result['incomeDIN']; $floatDin = (float)$incomeDIN;
                                                            $incomeEUR = $result['incomeEUR']; $floatEur = (float)$incomeEUR;
                                                            echo $floatEur*$e + $floatDin;
                                                            ?>
                                                            RSD</th>
                                                </tr>
                                                 <tr>
                                                   <th class="font-invoice">Rashod:</th>
                                                    <th ><?php 
                                                        $toll = $result['toll']; $floatToll = (float)$toll; 
                                                        $parts = $result['parts']; $floatParts = (float)$parts; 
                                                        $other = $result['other']; $floatOther = (float)$other; 
                                                        $fuel = $result['fuel']; $floatFuel = (float)$fuel; 
                                                        echo $floatToll + $floatParts + $floatFuel + $floatOther;
                                                        ?> RSD</th>
                                                </tr>
                                                 <tr>
                                                   <th class="font-invoice">Zarada:</th>
                                                    <th ><?php  
                                                        $incomeDIN = $result['incomeDIN']; $floatDin = (float)$incomeDIN;
                                                        $incomeEUR = $result['incomeEUR']; $floatEur = (float)$incomeEUR;
                                                        $toll = $result['toll']; $floatToll = (float)$toll; 
                                                        $parts = $result['parts']; $floatParts = (float)$parts; 
                                                        $other = $result['other']; $floatOther = (float)$other; 
                                                        $fuel = $result['fuel']; $floatFuel = (float)$fuel; 
                                                        echo $floatDin + $floatEur*$e - $floatToll -$floatParts - $floatFuel - $floatOther;
                                                        ?> RSD</th>
                                                </tr>
                                                

                                            </table>

                                            
                                            <br>
                                            <br>
                                            <div class="col-12 text-center">
                                                
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row d-print-none mt-2">
                                        <div class="col-12 text-center"><a class="btn btn-primary" href="javascript:window.print();" target="_blank"><i class="fa fa-print"></i> Štampaj</a></div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php require 'footer.php'; ?>


