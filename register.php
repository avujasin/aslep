<?php 
spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}
if (isset($_POST['submit'])) {
    
   $name = $_POST['name']; 
   $email = $_POST['email']; 
   $password = $_POST['password'];
   $cPassword = $_POST['cPassword'];  
   $hash = sha1($password);
   
   if($cPassword != $password){
   	echo "Molimo proverite loznku!";
   }else{
   	   $fields = [
    'name'=>$name, 
    'email'=>$email, 
    'password'=>$hash
    
	 ];
   }


$addUser = new Superclass();
$addUser->addUser($fields);

}

?>
<title>Registruj korisnika </title>
	<div class="container" style="margin-top: 100px;">
		<div class="row justify-content-center">
			<div class="col-md-6 col-md-offset-3" align="center">
				<a href="./"><img src="images/logo.png"></a><br><br>

				<form method="post" action="">
					<input class="form-control" minlength="3" name="name" placeholder="korisničko ime"><br>
					<input class="form-control" name="email" type="email" placeholder="email"><br>
					<input class="form-control" minlength="5" name="password" type="password" placeholder="lozinka"><br>
					<input class="form-control" minlength="5" name="cPassword" type="password" placeholder="potvrdi lozinku"><br>
					<input class="btn btn-primary" name="submit" type="submit" value="Registruj" onclick="return confirm('Da li ste sigurni da želite da dodate korisnika?')"><br>
				</form>

			</div>
		</div>
	</div>
<?php require 'footer.php'; ?>
