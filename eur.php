<?php 
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}

  $uid = 1;
  $eur = new Superclass();
  $result = $eur->selectEur($uid);

if (isset($_POST['submit'])) {
   
   $eur = $_POST['eur']; 

   $fields = [
   'eur'=>$eur ];

  $id = $_POST['id'];

$eurF = new Superclass();
$res = $eurF->eur($fields,$id);
}
?>

<title>Forma Tura</title>
<div class="container col-md-6 text-justify">
<div class="card mt-1">
    <div class="card-header">
      <h3>Kurs eura</h3>
    </div>
      <form method="post" action="">
                        <br>
                        <input type="hidden" name="id" value="1">
                        <div class="row">
                               <div class="col-md-12">
                                <h6>Vrednost eura</h6>
                                    <input type="text" class="form-control" name="eur" value="<?= $result['eur'];?>" placeholder="Unesite vrednost eura">
                                </div>
                                
                            

                        </div><br>
                        <div class="row">
                            <hr/>
                           
                             <div class="col-md-12 ">
                                <input type="submit" class="btn btn-primary btn-block btn-lg" value="Promeni">
                              
                            </div>
                        </div>
                    </form>
    </div>

  </div>
</div>

<?php require 'footer.php'; ?>
