<?php

try {
    $VeritabaniBaglantisi = new PDO("mysql:host=localhost;dbname=makale;charset=utf8", "root", "9900");
} catch (PDOException $Hata) {
    echo "Bağlantı Hatası<br>" . $Hata->getMessage();
    die();
}

function Filtrele($Deger){
    $Bir = trim($Deger);
    $Iki = strip_tags($Bir);
    $Uc = htmlspecialchars($Iki, ENT_QUOTES);
    $Sonuc = $Uc;
    return $Sonuc;
}
?>
