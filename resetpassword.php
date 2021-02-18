<?php
	if (isset($_GET["token"]) && isset($_GET["email"])) {
		$connection = new mysqli("localhost", "root", "", "aerodrom_as");
		
		$email = $connection->real_escape_string($_GET["email"]);
		$token = $connection->real_escape_string($_GET["token"]);

		$data = $connection->query("SELECT id FROM users WHERE email='$email' AND token='$token' AND token <> '' AND expire > NOW()");

		if ($data->num_rows > 0) {
			$str = "0123456789qwertzuioplkjhgfdsayxcvbnm";
			$str = str_shuffle($str);
			$str = substr($str, 0, 15);

			$password = sha1($str);

			$connection->query("UPDATE users SET password = '$password', token = '' WHERE email='$email'");

			echo "Vasa nova lozinka je: $str";
		} else {
			echo "Proverite vas link!";
		}
	} else {
		header("Location: index.php");
		exit();
	}
?>