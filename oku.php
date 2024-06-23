<?php
require_once("baglan.php");

$GelenID = Filtrele($_GET["id"]);

$HitGuncelle = $VeritabaniBaglantisi->prepare("UPDATE makale SET gosterimsayisi=gosterimsayisi+1 WHERE id = ?");
$HitGuncelle->execute([$GelenID]);

$Sorgu = $VeritabaniBaglantisi->prepare("SELECT * FROM makale WHERE id = ?");
$Sorgu->execute([$GelenID]);
$KayitSayisi = $Sorgu->rowCount();
$Kayit = $Sorgu->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table width="1000" border="0" cellpadding="0" cellspacing="0" align="center">
        <tr height="30">
            <td align="left"><b>Görüntüleme ve Hit Uygulaması</b></td>
            <td align="right"><a href="index.php" style="text-decoration: none; color:black;">Anasayfa</a></td>
        </tr>
    <?php
    if($KayitSayisi > 0){
    ?>
        <tr height="30">
            <td colspan="2" align="left"><h3><?php echo $Kayit["makalebasligi"]; ?></h3></td>
        </tr>

        <tr height="30">
            <td colspan="2" align="left"><?php echo $Kayit["makaleicerigi"]; ?></td>
        </tr>

        <tr height="30">
            <td colspan="2" align="center">Bu makale <?php echo $Kayit["gosterimsayisi"]; ?> defa görüntülendi</td>
        </tr>
    <?php
    }
    ?>
    </table>
</body>
</html>
