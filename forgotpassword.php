<?php
	$msg = '';
	if (isset($_POST["forgotPass"])) {
		$connection = new mysqli("localhost", "root", "", "aerodrom_as");
		
		$email = $connection->real_escape_string($_POST["email"]);
		
		$data = $connection->query("SELECT id FROM users WHERE email='$email'");

		if ($data->num_rows > 0) {
			$str = "0123456789qwertzuioplkjhgfdsayxcvbnm";
			$str = str_shuffle($str);
			$str = substr($str, 0, 10);
			$url = "http://localhost/resetpassword.php?token=$str&email=$email";

			mail($email, "Resetuj lozniku", "Da bi resetovali lozniku posetite: $url", "From: info@janwebdev.com\r\n");

			$connection->query("UPDATE users SET token='$str', expire = DATE_ADD(NOW(), INTERVAL 5 MINUTE) WHERE email='$email'");

			$msg =  "Proverite vas EMAIL";
		} else {
			$msg =  "Proverite unos!";
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
    <title>Zaboravili ste lozinku?</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
	<div class="container" style="margin-top: 100px;">
		<div class="row justify-content-center">
			<div class="col-md-6 col-md-offset-3" align="center">
				<a href="./"><img src="images/logo.png"></a><br><br>

				<form action="forgotpassword.php" method="post">
					<input class="form-control" name="email" type="email" placeholder="Email"><br>
					
					<input class="btn btn-primary" name="forgotPass" type="submit" value="Resetuj"><br><br>
				</form>

			</div>
		</div>
		<div class="row justify-content-center">			
			<div class="col-md-6 col-md-offset-3" align="center">
				<?= $msg ?>
			</div>
		</div>
	</div>
</body>
</html>