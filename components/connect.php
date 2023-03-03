<?php

$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'eProperty';

//Setting DNS
$dns = 'mysql:host='. $host .';dbname='. $dbname;

//Creating PDO instance
$conn = new PDO($dns, $username, $password);


//for creating unique user id  
function create_unique_id(){
   $chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   $chars_length = strlen($chars);
   $rand_str = '';
   for ($i = 0; $i < 20; $i++) {
       $rand_str .= $chars[mt_rand(0, $chars_length - 1)];
   }
   return $rand_str;
}

?>







