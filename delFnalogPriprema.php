<?php 

date_default_timezone_set('Europe/Belgrade');
require 'db.php';
require 'logincheck.php';
$id = $_GET['id'];

$status = 'UPDATE fnalog SET status = 0, del = 1 WHERE fnalog.idnalog = '.'"'.$id.'"'.'';
$upit = $connection->prepare($status);
if ($upit->execute()) {
 header('Location: ' . $_SERVER['HTTP_REFERER']);
}else{
	echo "NEEEE";
}