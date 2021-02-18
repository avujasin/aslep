<title>Stanje</title>

<?php 

spl_autoload_register(function($class) {
    include 'classes/' . $class . '.class.php';
});
{require 'header.php';}

?> 


<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Stanje</h2>
    </div>
 
  
  <div>
  <div class="card-body">
  <table class="table table-bordered table-responsive"><thead>
    <tr>
        <th>ID</th>
          <th>Ime </th>
          <th>Ukupno</th>
      </tr>
    </thead>
       <?php 
    $total = 0;
    $stanje = new Superclass();
    $stanjeF = new Superclass();
    $f_stanje = $stanjeF->selectStanjeF();
    foreach($f_stanje as $k => $data)
      {
          $f_suma = $data->f_suma;
        
      }
    $rows = $stanje->selectStanje();
    foreach($rows as $list){?>

    <tr>
      
     <td><?php echo $list['id']?></td>

      <td><?php echo $list['name']?></td>

      <td><?php echo number_format($list['suma'], 2, ',', ' ');
          $total += $list['suma'];
      ?> din</td>
        


    </tr>
    
    <?php } 

    ?>
    <tr>
      <td></td>
      <td><b>Ukupno:<b> </td>
      <td><?= number_format($total, 2, ',', ' ') ?> din</td>
  </tr>
    <tr>
      <td></td>
      <td><b>Račun Firme:<b> </td>
      <td><?= number_format($f_suma, 2, ',', ' ');  ?> din</td>
    </tr>
      <tr>
      <td></td>
      <td><b>Račun Firme + Keš:<b> </td>
      <td><?= number_format($f_suma + $total, 2, ',', ' ');  ?> din</td>
    </tr>
  </table>
  </div>
</div></div></div>
<?php require 'footer.php'; ?>

