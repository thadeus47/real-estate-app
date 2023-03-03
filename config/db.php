<?php
 //DB Params
 $host = 'localhost';
 $username = 'root';
 $password = '';
 $dbname = 'eProperty';
 
 //Setting DNS
 $dns = 'mysql:host='. $host .';dbname='. $dbname;
 
 //Creating PDO instance
 $conn = new PDO($dns, $username, $password);