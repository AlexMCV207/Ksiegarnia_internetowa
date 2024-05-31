<?php
$p = mysqli_connect('localhost','root','','ksiegarnia_internetowa');
$zap1 = "SELECT * FROM klient";
$wyn1 = mysqli_query($p,$zap1);
$l = mysqli_num_rows($wyn1);
$check = 0;
for($i = 0; $i < $l; $i++)
{
    $w = mysqli_fetch_array($wyn1);
    if($_POST['login'] == $w[10] && $_POST['haslo'] == $w[11])
    {
        echo "Zalogowano jako ".$w[2]." ".$w[1];
        $check = 1;
    }
    
}
if($check == 0)
{
    echo "Nie udało się zalogować";
}
?>