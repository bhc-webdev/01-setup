<?php
// setup connection details
$dsn = "mysql:
        host=localhost;
        dbname=adv_php;
        charset=utf8;
        port=3306";

// create new PDO connection object with error messaging turned on
$pdo = new PDO($dsn, "adv_php_user", "secret", [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);

// create the db query in the PDO and assign it to a variable
$stmt = $pdo->query("SELECT * FROM `products`");

// run teh query using the PDO connection and return the result to a variable
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);

// output the results
print_r($products);
