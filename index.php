<?php
require_once("baglan.php");
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
        <tr height="30" bgcolor="#990000">
            <td align="left" style="color: white;">&nbsp;Makale Başlığı</td>
            <td align="left" style="color: white;">Gösterim Sayısı&nbsp;</td>
        </tr>

        <?php
        $Sorgu = $VeritabaniBaglantisi->prepare("SELECT * FROM makale");
        $Sorgu->execute();
        $KayitSayisi = $Sorgu->rowCount();
        $Kayitlar = $Sorgu->fetchAll(PDO::FETCH_ASSOC);
        if($KayitSayisi > 0){
            foreach($Kayitlar as $Satirlar){
        ?>
        <tr height="30" bgcolor="#DDDDDD">
            <td align="left"><a href="oku.php?id=<?php echo $Satirlar["id"]; ?>" style="color:black; text-decoration:none;"><?php echo $Satirlar["makalebasligi"]; ?></a>&nbsp;</td>
            <td align="left"><?php echo $Satirlar["gosterimsayisi"]; ?>&nbsp;</td>
        </tr>
        <?php
            }
        }
        ?>
    </table>
</body>
</html>
