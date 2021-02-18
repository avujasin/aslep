<?php  
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
 //login_success.php  
require 'header.php'; 

if(isset($_GET['id'])){
  $uid = $_GET['id'];

  $invoicesOne = new Superclass();
  $user = $invoicesOne->selectUser($uid);
}


if (isset($_POST['submit'])) {
    
   $name = $_POST['name']; 
   $email = $_POST['email']; 
    
   $fields = [
    'name'=>$name, 
    'email'=>$email, 
   
    
 ];

$editUser = new Superclass();
$updateUser = $editUser->updateUser($fields,$uid);
}
?>

<div class="container col-md-6 bg-white">
<div class="card mt-1">
      <form role="form" method="post">
                      
                        <br>
                        <div class="row">
                            <hr/>
                              <div class="col-md-6">
                                <h6>Korisnicko ime</h6>
                                <input type="text" class="form-control input-lg" name="name" value="<?= $user['name'];?>">
                      </div>

                            <div class="col-md-6">
                                <h6>Email</h6>
                                <div class="input-group">
                                    <input type="text" class="form-control input-lg" name="email" value="<?= $user['email'];?>">
                                    <div class="input-group-append"><span class="input-group-text">
                                            </span>
                                    </div>
                                </div>

                            </div>


                        </div>

                        <br>

                        
                        <div class="row">
                             <hr/>
                           
                             <div class="col-md-12 ">
                               <input type="submit" class="btn btn-primary btn-block btn-lg" value="Promeni">
                            </div>
                        </div>
                        <br/>
                    
                    </form>
    </div>

  </div>
</div>
<?php require 'footer.php'; ?>
