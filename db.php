<?php
$dsn = 'mysql:host=localhost;dbname=aerodrom_as;charset=utf8';
$username = 'root';
$password = '';
$options = [];
try {
$connection = new PDO($dsn, $username, $password, $options);
} catch(PDOException $e) {

}