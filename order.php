<!DOCTYPE html>
<head>
<meta charset="utf-8">
    <title>Zasoby</title>
    <link rel="stylesheet" type="text/css" href="c5.css">
</head>
<body>
    <div id="header">
        <h1 id="main_title">
            <font size="100px">Księgarnia internetowa</font>
        </h1>
    </div>
</body>
<?php
error_reporting(E_ERROR | E_PARSE);
$p = mysqli_connect('localhost','root','','ksiegarnia_internetowa');
echo "<div id='section1'><legend>Pole wyszukiwania</legend><form method='post'><input type='text' name='search' id='inp1'><input type='submit' value='Wyszukaj' id='button'></form></div>";
$result = $_POST['search'];
$zap1 = "SELECT * FROM ksiazki WHERE ksiazki.tytul like '%$result%';";
$wyn1 = mysqli_query($p,$zap1);
$l = mysqli_num_rows($wyn1);
for($i = 0; $i < $l; $i++)
{
    $w = mysqli_fetch_array($wyn1);
    echo "<div id='section'><table><tr><td id='td1'><h2>".$w['1']."</h2>".$w['2'].", ".$w['4']."zł, ".$w['5']."szt.</td><form method='post'><td>Liczba:<input type='number' id='inp1' min='0' max='".$w['5']."'></td><td id='td2'><input type='submit' id='button1' value='Dodaj do zamówienia'></td><form method='post'></tr></table></div>";
}
?>
<!DOCTYPE html>
<body>
    <button id="b4" onclick="location.href='http://localhost/logged.php';">Powrót do strony głównej</button>
    <div id="footer">
        <p id="f_text">Maksymilian Cugowski 2024</p>
    </div>
</body>