<?php

include('class/class.mysqli.php');
                   
$_url = 'http://localhost/MyWeb/vnshop/orders/';
$database_config = array('host' => 'localhost',
						 'port' => '3306',
						 'name' => 'vnshop',
						 'user' => 'root',
                         'pass' => 'Haianhvn0');
                         
$_db = new DB_mysqli($database_config);

?>