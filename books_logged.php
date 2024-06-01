<!DOCTYPE html>
<head>
<meta charset="utf-8">
    <title>Zasoby</title>
    <link rel="stylesheet" type="text/css" href="c11.css">
</head>
<body>
    <div id="header">
        <h1 id="main_title">
            <font size="100px">Księgarnia internetowa</font>
        </h1>
    </div>
</body>
<?php
$p = mysqli_connect('localhost','root','','ksiegarnia_internetowa');
$zap1 = "SELECT * FROM ksiazki";
$wyn1 = mysqli_query($p,$zap1);
$l = mysqli_num_rows($wyn1);
for($i = 0; $i < $l; $i++)
{
    $w = mysqli_fetch_array($wyn1);
    echo "<div id='section'><table><tr><td id='td1'><h2>".$w['1']."</h2>".$w['2'].", ".$w['4']."zł, ".$w['5']."szt.</td><td id='td2'><button id='b5'>Dodaj do zamówienia</button></td></tr></table></div>";
}
?>
<!DOCTYPE html>
<body>
    <button id="b4" onclick="location.href='http://localhost/main.html';">Powrót do strony głównej</button>
    <div id="footer">
        <p id="f_text">Maksymilian Cugowski 2024</p>
    </div>
</body>