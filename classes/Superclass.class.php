<?php
/**
* 
*/

class Superclass extends Db{


	public function select(){

		$sql = "SELECT nalog.idnalog,nalog.relacija,nalog.registracija,nalog.trosak,nalog.datum as datum,nalog.prihod,vozila.ime as ime,nalog.kreirao,users.name as kreirao FROM nalog inner join vozila on nalog.slepVozilo = vozila.idVozila inner join users on users.id = nalog.kreirao where nalog.del = 0 ORDER BY nalog.datum DESC";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}

	public function selectDeleted(){

		$sql = "SELECT nalog.idnalog,nalog.relacija,nalog.registracija,nalog.trosak,nalog.datum as datum,nalog.prihod,vozila.ime as ime,nalog.kreirao,users.name as kreirao FROM nalog inner join vozila on nalog.slepVozilo = vozila.idVozila inner join users on users.id = nalog.kreirao where nalog.del = 1 ORDER BY nalog.datum DESC";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}

		public function selectVozilo(){

		$sql = "SELECT * FROM vozila";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}

		public function selectFirme(){

		$sql = "SELECT * FROM f_ime WHERE status = 1";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}

		public function selectNalogFirme(){

		$sql = "SELECT fnalog.idnalog,fnalog.relacija,fnalog.registracija,fnalog.trosak,fnalog.datum as datum,fnalog.prihod,vozila.ime as ime,fnalog.kreirao,users.name as kreirao,f_ime.fime as imeFirme FROM fnalog inner join vozila on fnalog.slepVozilo = vozila.idVozila inner join users on users.id = fnalog.kreirao INNER JOIN f_ime on f_ime.idf_ime=fnalog.idf WHERE fnalog.status = 0 && fnalog.del = 0 ORDER BY fnalog.datum DESC";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}

		public function selectNalogFirmeDeleted(){

		$sql = "SELECT fnalog.idnalog,fnalog.relacija,fnalog.registracija,fnalog.trosak,fnalog.datum as datum,fnalog.prihod,vozila.ime as ime,fnalog.kreirao,users.name as kreirao,f_ime.fime as imeFirme FROM fnalog inner join vozila on fnalog.slepVozilo = vozila.idVozila inner join users on users.id = fnalog.kreirao INNER JOIN f_ime on f_ime.idf_ime=fnalog.idf WHERE fnalog.del = 1 ORDER BY fnalog.datum DESC";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}
		public function selectNalogFirmeR(){

		$sql = "SELECT fnalog.idnalog,fnalog.relacija,fnalog.registracija,fnalog.trosak,fnalog.datum as datum,fnalog.prihod,vozila.ime as ime,fnalog.kreirao,users.name as kreirao,f_ime.fime as imeFirme FROM fnalog inner join vozila on fnalog.slepVozilo = vozila.idVozila inner join users on users.id = fnalog.kreirao INNER JOIN f_ime on f_ime.idf_ime=fnalog.idf WHERE fnalog.status = 1  && fnalog.del = 0 ORDER BY fnalog.datum DESC";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}




	public function insert($fields){
		$implodeColumns = implode(', ',array_keys($fields));
		$implodePlaceholder = implode(", :",array_keys($fields));

		$sql = "INSERT INTO fnalog ($implodeColumns) VALUES (:".$implodePlaceholder.")";

		$stmt = $this->connect()->prepare($sql);

		foreach($fields as $key => $value){
			$stmt->bindValue(':'.$key, $value);
		}

		$stmtExec = $stmt->execute();

		
	}


	public function insertVozila($fields){
		$implodeColumns = implode(', ',array_keys($fields));
		$implodePlaceholder = implode(", :",array_keys($fields));

		$sql = "INSERT INTO vozila ($implodeColumns) VALUES (:".$implodePlaceholder.")";

		$stmt = $this->connect()->prepare($sql);

		foreach($fields as $key => $value){
			$stmt->bindValue(':'.$key, $value);
		}

		$stmtExec = $stmt->execute();

		if($stmtExec){
			header('Location: vozila.php');
		}
		else{
			echo "GRESKA";
		}
	}


	public function insertFirme($fields){
		$implodeColumns = implode(', ',array_keys($fields));
		$implodePlaceholder = implode(", :",array_keys($fields));

		$sql = "INSERT INTO f_ime ($implodeColumns) VALUES (:".$implodePlaceholder.")";

		$stmt = $this->connect()->prepare($sql);

		foreach($fields as $key => $value){
			$stmt->bindValue(':'.$key, $value);
		}

		$stmtExec = $stmt->execute();

		if($stmtExec){
			header('Location: firme.php');
		}
		else{
			echo "GRESKA";
		}
	}

	public function delete($id){
		$sql = "DELETE FROM invoices WHERE idinvoices = :id";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
	}

	public function deleteVozilo($id){
		$sql = "DELETE FROM vozila WHERE idvozila = :id";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
	}
	public function deleteFirme($id){
		$sql = "UPDATE f_ime SET status = 0 WHERE idvozila = :id";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
	}

		public function deletefnalog($id){
		$sql = "DELETE FROM fnalog WHERE idfnalog = :id";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
	}

	public function selectOne($id){
		$sql = "SELECT * FROM invoices WHERE idinvoices = :id ";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function update($fields, $id){
		$st = "";
		$counter = 1;
		$total_fields=count($fields);
		foreach($fields as $key => $value){
			if($counter === $total_fields){
				$set = "$key = :".$key;
				$st = $st.$set;
			}else{
				$set = "$key = :".$key.", ";
				$st = $st.$set;
				$counter++;
			}
		}
		$sql = "";
		$sql.="UPDATE invoices SET ".$st;
		$sql.=" WHERE idinvoices = ".$id;
		$stmt = $this->connect()->prepare($sql);
		foreach($fields as $key => $value){
			$stmt->bindValue(':'.$key, $value);
		}
		$stmtExec = $stmt->execute();
		if($stmtExec){
			header('Location: ' . $_SERVER['HTTP_REFERER']);
		}
		else{
			echo "Greska! Proveri unos.";
		}
	}

	public function updateUser($fields, $id){
		$st = "";
		$counter = 1;
		$total_fields=count($fields);
		foreach($fields as $key => $value){
			if($counter === $total_fields){
				$set = "$key = :".$key;
				$st = $st.$set;
			}else{
				$set = "$key = :".$key.", ";
				$st = $st.$set;
				$counter++;
			}
		}
		$sql = "";
		$sql.="UPDATE users SET ".$st;
		$sql.=" WHERE id = ".$id;
		$stmt = $this->connect()->prepare($sql);
		foreach($fields as $key => $value){
			$stmt->bindValue(':'.$key, $value);
		}
		$stmtExec = $stmt->execute();
		if($stmtExec){
			echo "<script> window.location = 'edit_user.php?id={$id}';</script>";
		}
		else{
			echo "Greska! Proveri unos.";
		}
	}

	public function selectEur($id){
		$sql = "SELECT * FROM eur WHERE ideur = :id";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

		public function selectUser($id){
		$sql = "SELECT * FROM users WHERE id = :id ";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		return $result;
	}

	public function deleteUser($id){
		$sql = "DELETE FROM users WHERE id = :id";
		$stmt = $this->connect()->prepare($sql);
		$stmt->bindValue(":id",$id);
		$stmtExec = $stmt->execute();

		if($stmtExec){
			header('Location: ' . $_SERVER['HTTP_REFERER']);
		}
		else{
			echo "Greska!";
		}
	}


	public function addUser($fields){
		$implodeColumns = implode(', ',array_keys($fields));
		$implodePlaceholder = implode(", :",array_keys($fields));

		$sql = "INSERT INTO users ($implodeColumns) VALUES (:".$implodePlaceholder.")";

		$stmt = $this->connect()->prepare($sql);

		foreach($fields as $key => $value){
			$stmt->bindValue(':'.$key, $value);
		}

		$stmtExec = $stmt->execute();

		if($stmtExec){
			header('Location: users.php');
		}
		else{
			echo "GRESKA";
		}
	}
	
	public function selectStanje(){

		$sql = "SELECT id, name,suma FROM wallet";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetch()) {
				$data[] = $row;
			}
			return $data;

		}
	}	

	public function selectStanjeF(){

		$sql = "SELECT idw_firme, f_suma, (DATE_FORMAT(pu, '%d-%m-%Y %H:%i:%S')) as datum FROM w_firme";
		$result = $this->connect()->query($sql);
		if($result->rowCount()>0){

			while ($row = $result->fetchObject()) {
				$data[] = $row;
			}
			return $data;

		}
	}	
	
}


?>