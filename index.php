<?php
	session_start();

	if (isset($_SESSION["email"]) && isset($_SESSION["loggedIn"])) {
		header("Location: stanje.php");
		exit();
	}

	if (isset($_POST["logIn"])) {
		$connection = new mysqli("localhost", "root", "", "aerodrom_as");
		
		$email = $connection->real_escape_string($_POST["email"]);
		$password = sha1($connection->real_escape_string($_POST["password"]));

		$q = "SELECT id,name,role FROM users WHERE name='$email' AND password='$password'";
		$data = $connection->query($q);
		if ($result = $connection->query($q)) {

			    while ($row = $result->fetch_assoc()) {
			         $_SESSION['id'] = $row["id"] ;
			        $_SESSION['role'] = $row["role"] ;
			        $_SESSION['name'] = $row["name"];
			    }

			    
			    $result->free();
		}
		

		if ($data->num_rows > 0) {
			$_SESSION["email"] = $email;
			$_SESSION["loggedIn"] = 1;

			
			header("Location: stanje.php");
			exit();

		} else {
			
			echo "Please check your inputs!";
		}
	}	
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/png" href="https://slepsluzbaais.com/wp-content/themes/carservice/images/favicon.ico" />
    <title>Prijava na sistem</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
	<div class="container" style="margin-top: 100px;">
		<div class="row justify-content-center">
			<div class="col-md-6 col-md-offset-3" align="center">
				<img src="images/logo.png"><br><br>

				

				<form method="post" action="index.php">
					<input class="form-control" name="email" type="text" placeholder="korisnicko ime"><br>
					<input class="form-control" minlength="5" name="password" type="password" placeholder="lozinka"><br>
					<input class="btn btn-primary" name="logIn" type="submit" value="Prijavi se"><br><br>
				</form>

			</div>
			
		</div>
		<div class="row justify-content-center">			
			<div class="col-md-6 col-md-offset-3" align="center">
				<a href="forgotpassword.php">Zaboravili ste lozinku?</a>
			</div>
		</div>

	</div>

</body>
</html>