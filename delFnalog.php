<?php 

date_default_timezone_set('Europe/Belgrade');
require 'db.php';
require 'logincheck.php';
$id = $_GET['id'];
$sql1 = "SELECT trosak,prihod FROM fnalog where fnalog.idnalog = :id";

$stmt = $connection->prepare($sql1);
$stmt->execute([':id' => $id]);
$sat = $stmt->fetch(PDO::FETCH_OBJ);
$today = date("Y-m-d H:i:s");
$ukupno = $sat->prihod - $sat->trosak;

echo $ukupno;
$sql = 'UPDATE w_firme SET f_suma = f_suma -'.'"'.$ukupno.'"'.',pu ='.'"'.$today.'"'.'  WHERE idw_firme = 0';
echo $sql;
$statement = $connection->prepare($sql);

$status = 'UPDATE fnalog SET status = 0, del = 1 WHERE fnalog.idnalog = '.'"'.$id.'"'.'';
$upit = $connection->prepare($status);
if ($statement->execute()&& $upit->execute()) {
 header('Location: ' . $_SERVER['HTTP_REFERER']);
}else{
	echo "NEEEE";
}