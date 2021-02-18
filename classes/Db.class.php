<?php

/**
* 
*/
class Db
{
	protected function connect(){
		$dsn = "mysql:host=127.0.0.1;charset=utf8;dbname=aerodrom_as";

			try{
				$conn = new PDO($dsn, "root", "");
				return $conn;
			}catch(PDOException $e){
				die("Error: " . $e->getMessage());
			}
	}
}