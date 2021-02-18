<?php
include('db.php');
require 'logincheck.php';
$search=$_POST['search'];
$sql = 'SELECT nalog.idnalog,nalog.relacija as relacija,nalog.registracija as registracija,nalog.trosak as trosak,(DATE_FORMAT(nalog.datum, "%d-%m-%Y %H:%i:%S")) as datum,nalog.prihod as prihod,vozila.ime as ime,nalog.kreirao,users.name as kreirao FROM nalog inner join vozila on nalog.slepVozilo = vozila.idVozila inner join users on users.id = nalog.kreirao where nalog.del = 0  ';
if($search!=''){
	$sql .= " AND (nalog.relacija like '%$search%' OR nalog.registracija like '%$search%')  ORDER BY nalog.datum DESC";
}
$stmt=$connection->prepare($sql);
$stmt->execute();
$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
if(isset($data['0']))
{
	$html = '<div class="card-body"><table class="table table-bordered table-responsive"><thead>
		<tr>
			<th>Datum </th>
          <th>Kreirao</th>
          <th>Vozilo</th>
          <th>Relacija</th>
          <th>Registracija</th>
          <th>Trosak</th>
          <th>Prihod</th>
          <th>Akcija</th>
		  </tr>
		</thead>';
	foreach($data as $list)
	{
		$html .= '<tr><td>' . $list['datum'] . '</td>';
		$html .= '<td>' . $list['kreirao'] . '</td>';
        $html .= '</td><td>' . $list['ime'] . '</td>';
        $html .= '</td><td>' . $list['relacija'] . '</td>';
        $html .= '</td><td>' . $list['registracija'] . '</td>';
        $html .= '</td><td>' . $list['trosak'] . '</td>';
        $html .= '<td>' . $list['prihod'] . '</td>';
		$html .= '  <td>
		 <a href="delnalog.php?id=' . $list['idnalog'] . '" class="btn btn-danger" onClick="return confirm(\'Da li ste sigurni da želite da obrišete unos?\')">Obriši</a>
		<a href="preview.php?id=' . $list['idnalog'] . '" class="btn btn-primary">Pregledaj</a>
   
   
     </td>';
	}

	$html.= '</table>';
	echo $html;	
}
else{
	echo "Nije pronađeno.";
}
?>