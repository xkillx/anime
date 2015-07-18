<?php
ob_start();
session_start();

if( empty($_SESSION['group'])):
	$session_group = 2;
else:
	$session_group = $_SESSION['group'];
endif;

$page 				= 	isset($_GET['page']) ? ((int) $_GET['page']) : 1;
$kategori_id 		= 	isset($_GET['kategori_id']) ? ((int) $_GET['kategori_id']) : 0;

require_once "config/PasswordHash.php";
require_once "config/server.conf.php";
require_once "autoload.php";

$obj			=	new DB();
$tpl			=	new template();
$anime			=	new anime($obj);
$pagination 	= 	new pagination();
$pengaturan		=	new pengaturan($obj);
$group			=	new group($obj);
$link			=	new link($obj);
$menu			=	new menu($obj);


if( isset($_POST['tambah_kategori'])):
	$anime->tambah_kategori($_POST);
endif;


if( isset($_POST['tambah_episode'])):
	$anime->tambah_episode($_POST);
endif;

if( isset($_POST['tambah_menu'])):
	$menu->tambah_menu($_POST);
endif;

echo $tpl->render("tpl/header.tpl");

if(	isset($_GET['halaman'])	):
	$halaman = $_GET['halaman'];
	$halaman = "tpl/{$halaman}.tpl";
	$url	 = "/?halaman=".$_GET['halaman'];
	if($menu->menuByurl($session_group,$url) == 1 ):
		if(file_exists($halaman)):
			echo $tpl->render($halaman);
		else:
			echo "
			<div class=\"alert alert-danger\"> <strong>Warning</strong> <br>File <code>{$halaman}</code> is not axists!</div>
			";
		endif;
	else:
			echo "
			<div class=\"alert alert-danger\"> Anda tidak diijinkan untuk mengakses halaman ini</div>
			";
	endif;
else:
echo $tpl->render("tpl/home.tpl");
endif;

echo $tpl->render("tpl/footer.tpl");