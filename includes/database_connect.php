<?php

    $db['db_host'] = "localhost";
    $db['db_user'] = "root";
    $db['db_pass'] = "";
    $db['db_name'] = "database_backup_manager";

    $url = 'http://' . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
    if(strpos($url,'async') !== false) {
        
    global $database_host;
    global $database_user;
    global $database_password;

    $database_host = $db['db_host'];
    $database_user = $db['db_user'];
    $database_password = $db['db_pass'];

    }

    foreach($db as $key => $value){

        define(strtoupper($key), $value);
    }

   $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    if($connection)
    {
        // echo "Połączono z bazą danych";
    }

?>
    