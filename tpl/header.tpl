<?php 
global $session_group;
global $pengguna_id;
global $pengguna;
global $pengaturan;
?><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Anime Directory</title>

<link rel="stylesheet" href="http://bxslider.com/lib/jquery.bxslider.css" type="text/css" />


    <!-- Bootstrap -->
    <link href="<?php echo $pengaturan->site_url();?>/static/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo $pengaturan->site_url();?>/static/css/select2.min.css" type="text/css" rel="stylesheet" />
    <link href="<?php echo $pengaturan->site_url();?>/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo $pengaturan->site_url();?>/static/css/custom.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  <!-- -->
  <nav class="navbar navbar-fixed-top navbar-inverse">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo $pengaturan->site_url();?>/"><i class="glyphicon glyphicon-folder-open"></i> <?php echo $pengaturan->site_name();?> <sup>Beta .1</sup></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<?php echo $pengaturan->site_url();?>/kategori">Lists</a></li>
        <li><a href="<?php echo $pengaturan->site_url();?>/tentang">Tentang</a></li>
        <li><a href="<?php echo $pengaturan->site_url();?>/team">Team</a></li>
        <li><a href="<?php echo $pengaturan->site_url();?>/disclaimer">Disclaimer</a></li>
        <li><a href="<?php echo $pengaturan->site_url();?>/tos">TOS</a></li>

      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><i class="glyphicon glyphicon-bullhorn"></i> Site Update</a></li>

      
        <?php if($session_group == 2):?>
        <li><a href="<?php echo $pengaturan->site_url();?>/login">Masuk</a></li>
        <li><a href="<?php echo $pengaturan->site_url();?>/register">Daftar</a></li>
        <?php endif;?>


        <?php if($pengguna_id != 0):?>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $pengguna->penggunaName($pengguna_id);?> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo $pengaturan->site_url();?>/profile">Profile</a></li>
            <li><a href="<?php echo $pengaturan->site_url();?>/logout.php">Keluar</a></li>
          </ul>
        </li>
        <?php endif;?>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  <!-- -->


<div class="container">