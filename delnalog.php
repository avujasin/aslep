<?php 

date_default_timezone_set('Europe/Belgrade');
require 'db.php';
require 'logincheck.php';
$ime = $_SESSION['name'];
$id = $_GET['id'];
$sql1 = "SELECT trosak,prihod FROM nalog where nalog.idnalog = :id";

$stmt = $connection->prepare($sql1);
$stmt->execute([':id' => $id]);
$sat = $stmt->fetch(PDO::FETCH_OBJ);
$today = date("Y-m-d H:i:s");
$ukupno = $sat->prihod - $sat->trosak;

echo $ukupno;
$sql = 'UPDATE wallet SET suma = suma -'.'"'.$ukupno.'"'.' where wallet.name = '.'"'.$ime.'"'.' ';
echo $sql;
$statement = $connection->prepare($sql);

$status = 'UPDATE nalog SET del = 1 WHERE nalog.idnalog = '.'"'.$id.'"'.'';
$upit = $connection->prepare($status);
if ($statement->execute()&& $upit->execute()) {
 header('Location: ' . $_SERVER['HTTP_REFERER']);
}else{
	echo "NEEEE";
}