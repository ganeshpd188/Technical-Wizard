<?php
 
define('BASE_PATH','http://localhost:8090/index1.php');
define('DB_HOST', 'localhost');
define('DB_NAME', 'id4642082_qq');
define('DB_USER','id4642082_root');
define('DB_PASSWORD','anmol123');

//$con=mysql_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error());
//$db=mysql_select_db(DB_NAME,$con) or die("Failed to connect to MySQL: " . mysql_error());
$db = mysqli_connect('localhost', 'id4642082_root', 'anmol123', 'id4642082_qq');
?>