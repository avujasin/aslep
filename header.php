<!doctype html>
<?php require 'logincheck.php';  ?>
<html lang="en">
  <head>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="https://slepsluzbaais.com/wp-content/themes/carservice/images/favicon.ico" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">

 
  <style> 
   @media print
   {
    #header{
     display:none;
    }
   footer{
     display:none;
   }


#search{
  width: 15%;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

#search:focus {
  width: 100%;
}
</style>
  
  </head>
  <body class="bg-muted " media="print" >
    <nav class="navbar navbar-dark navbar-expand-lg bg-primary" id="header">
    <a class="navbar-brand" href="#">Šlep služba </a> 
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto ">
      <li>
        <a class="nav-link" href="stanje.php"><i class="fa fa-fw far fa-copy"></i>Stanje</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fas fa-arrows-alt-v"></i>
          Prihodi i rashodi
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="rashodi.php">Rashodi</a>
          <a class="dropdown-item" href="sprihod.php">Spoljni prihod</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fas fa-money-bill-alt"></i>
          Keš
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
           <a class="dropdown-item" href="add.php">Novi nalog</a>
          <a class="dropdown-item" href="view.php">Pregledaj naloge</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle " href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fas fa-building"></i> Firme
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="fwallet.php">Stanje Firme</a>
           <a class="dropdown-item" href="fadd.php">Nalog Firme</a>         
          <a class="dropdown-item" href="fview.php">Pregledaj naloge Firme</a>
          <a class="dropdown-item" href="fviewr.php">Razduzen nalog Firme</a>
        </div>
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fa fa-plus"></i>
          Dodaj
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="firme.php">Firmu</a>
          <a class="dropdown-item" href="vozila.php">Vozila </a>
       </div>
      </li>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fas fa-user-cog"></i>
          Admin
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="register.php">Registruj korisnika</a>
          <a class="dropdown-item" href="users.php">Upravljaj korisnicima </a>
       </div>
      </li>

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-fw fas fa-trash"></i>
          Obrisano
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="fview_deleted.php">Obrisan Nalog firme</a>
          <a class="dropdown-item" href="view_deleted.php">Obrisan Nalog</a>
       </div>
      </li>
      

    <li>
       <a class="nav-link" href="reset_password.php"> <i class="fas fa-user prefix grey-text"></i> <small><?=  $_SESSION['name'];?> </small> <span class="sr-only">(current)</span></a>
    </li> 
    
    <li class="navbar-link">
        <a class="nav-link" href="logout.php"><i class="fa fa-fw  fas fa-sign-out-alt"></i>Odjava <span class="sr-only">(current)</span></a>
    </li> 
      
      
    </ul>
  </div>
</nav><br>
