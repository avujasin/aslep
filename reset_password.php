<title>Promeni lozinku</title>
<?php  
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
require 'header.php';
require 'db.php';
$id = $_SESSION['id'];
$sql = 'SELECT * FROM users WHERE id=:id';
$statement = $connection->prepare($sql);
$statement->execute([':id' => $id ]);
$user = $statement->fetch(PDO::FETCH_OBJ);
   
   if (isset($_POST['newPassword'])&& isset($_POST['Rpassword'])) {
  $password = $_POST['newPassword'];
   $Rpassword = $_POST['Rpassword'];
    
  $sql = 'UPDATE users SET password=:newPassword WHERE id=:id';
  $statement = $connection->prepare($sql);
  if($password === $Rpassword){
    if ($statement->execute([':newPassword' => sha1($password) , ':id' => $id])){
    echo "Uspesno promenjena lozinka!";
  }

  }else{
        echo "Ukucajte lozinku opet!";
      }

}

?>

<div class="container">
    <div class="card mt-5">
    <div class="card-header">
      <h2>Promeni lozinku</h2>
    </div>
      <form role="form" method="post">
                      
                        <br>
                        <div class="row">
                            <hr/>
                              <div class="col-md-6">
                                <h6>Nova lozinka</h6>
                                <input   type="password" class="form-control input-lg" name="newPassword" value="">
                      </div>

                            <div class="col-md-6">
                                <h6>Ponovite novu lozinku</h6>
                                <div class="input-group">
                                    <input  type="password" class="form-control input-lg" name="Rpassword" value="">
                                    <div class="input-group-append"><span class="input-group-text">
                                            </span>
                                    </div>
                                </div>

                            </div>


                        </div>

                        <br>
                        <br/>
                        
                        <div class="row">
                             <hr/>
                           
                             <div class="col-md-12 ">
                                <button type="submit" class="btn btn-primary btn-block btn-lg">Izmeni</button>
                            </div>
                        </div>
                        <br/>
                    
                    </form>
    </div>
</div>
  </div>
</div>
<?php require 'footer.php'; ?>
