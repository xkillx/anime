<?php
if(isset($_GET['u'])):
	$u = $_GET['u'];
	header("Location:".$u);
else:
header("Location:./?");
endif;