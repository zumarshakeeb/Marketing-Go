<?php
session_start();
$con=mysqli_connect ("localhost","root","","marketing go");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/Project/php/inf/');
define('SITE_PATH','http://localhost/Project/php/inf/');
define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');
?>