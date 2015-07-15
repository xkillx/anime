<?php
ob_start();
session_start();


$page 				= 	isset($_GET['page']) ? ((int) $_GET['page']) : 1;
$kategori_id 		= 	isset($_GET['kategori_id']) ? ((int) $_GET['kategori_id']) : 0;

require_once "config/PasswordHash.php";
require_once "config/server.conf.php";
require_once "autoload.php";

$obj			=	new DB();
$tpl			=	new template();
$anime			=	new anime($obj);
$pagination 	= 	new pagination();


if( isset($_POST['tambah_kategori'])):
	$anime->tambah_kategori($_POST);
endif;


if( isset($_POST['tambah_episode'])):
	$anime->tambah_episode($_POST);
endif;


echo $tpl->render("tpl/header.tpl");

if(	isset($_GET['halaman'])	):
	$halaman = $_GET['halaman'];
	$halaman = "tpl/{$halaman}.tpl";
	echo $tpl->render($halaman);
else:
echo $tpl->render("tpl/home.tpl");
endif;

echo $tpl->render("tpl/footer.tpl");