<?php
session_start();
session_destroy();
global $pengaturan;
header('Location:./login');
?>