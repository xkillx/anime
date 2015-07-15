<?php
/**
* File 		: autoload.php
* Author 	: Angga 
* Email 	: <anggagewor@gmail.com> <angga.purnama@mcs.co.id>
* License 	: GPLV2
*/
function core($class) {
    require_once 'core/class.' . $class . '.php';
}

spl_autoload_register('core');


?>

