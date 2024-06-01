<?php
$p = mysqli_connect('localhost','root','','ksiegarnia_internetowa');
$sname = $_POST['sname'];
$name = $_POST['name'];
$postal_code = $_POST['postal_code'];
$city = $_POST['city'];
$street = $_POST['street'];
$number = $_POST['number'];
$pesel = $_POST['pesel'];
$phone_number = $_POST['phone_number'];
$email = $_POST['email'];
$login = $_POST['login'];
$password = $_POST['password'];

$zap1 = "INSERT INTO klient VALUES(null,'$sname','$name','$postal_code','$city','$street','$number',$pesel,$phone_number,'$email','$login','$password',false)";
$wyn1 = mysqli_query($p,$zap1);
?>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Rejestracja</title>
    <link rel="stylesheet" type="text/css" href="c2.css">
</head>
<body>
    <div id="header">
            <h1 id="main_title">
                <font size="100px">Księgarnia internetowa</font>
            </h1>
        </div>
        <div id="base">
            <div id="c1">Rejestracja przebiegła pomyślnie</div>
            <button id="button1" onclick="location.href='http://localhost/main.html';">Powrót do strony głównej</button>
        </div>
        <div id="footer">
            <p id="f_text">Maksymilian Cugowski 2024</p>
        </div>
</body>