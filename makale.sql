-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 22 Haz 2024, 21:01:23
-- Sunucu sürümü: 8.3.0
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `makale`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `id` int UNSIGNED NOT NULL,
  `makalebasligi` varchar(255) NOT NULL,
  `makaleicerigi` text NOT NULL,
  `gosterimsayisi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`id`, `makalebasligi`, `makaleicerigi`, `gosterimsayisi`) VALUES
(1, 'Meyve ve Sebzelerin Kurutulması', 'Kurutma insanoğlunun gıdalarını muhafaza için uzaklaştırılmasını sağlayarak bakteri, maya ve küf\r\nkullandığı en eski yöntemlerden biri olup, gelişen gelişmesine engeller, bozulmaları asgari düzeye indirir.\r\nteknolojiye rağmen önemini hala korumaktadır. Hatta Ayrıca meyve ve sebzede doğal olarak bulunan,\r\nbazı durumlarda tek başına muhafaza yöntemi olarak olgunlaşmayı sağlayan ancak ileri aşamalarda ürünün\r\nseçilmese bile örneğin konserve veya dondurma aşırı olgunluk ve yaşlılığına sebep olarak elden\r\nişlemlerini kolaylaştırmak ve hammadde kalitesini çıkmasına neden olan bazı enzimlerin faaliyetlerini de\r\nsağlamak amacıyla destekleyici bir teknik olarak engeller.\r\nkullanılır', 3),
(2, 'Sağlık ve Beslenme Açısından Sebzelerin Önemi', 'Sağlıklı bir yaşam için en önemli faktör dengeli beslenmedir. Bu ise, gerek hayvansal gerek bitkisel besin maddelerinden bilinçli biçimde yararlanmakla sağlanır. Tek taraflı bir beslenme insan metabolizmasında çok kısa sürede anormalliklere yol açar ve fizyolojik dengeyi bozar. İnsan büyümesi, gelişmesi ve yaşamındaki bir çok fonksiyonun etkilendiği beslenme olayı üzerinde dururken; bitkisel besin maddelerinden sebzelere özel bir yer vermek gerekir. Esas olarak besinlerin değerlendirilmesi, bunların kapsadıkları kimyasal öğelere göre yapılır. Böylece bir kimsenin vücudunun gereksinimleri de biyokimyasal kavramlarla saptanabilir. Sebzelerin bünyesinde temel besin maddelerinden karbonhidratlar, proteinler, yağlar, madensel maddeler, vitaminler ve su bulunur. Genel olarak 100 g sebzenin bünyesinde karbonhidrat 2.2-28.2 g; protein 0.6-7.0 g; yağ 0.1-1.3 g; madensel maddelerden demir 0.2-12.7 mg; kalsiyum 6-392 mg arasında bulunur. Keza vitamin yönünden oldukça zengin olmaları, sebzelerin temeldeki değerini bir kat daha arttırmaktadır. Bu konudaki veriler Cetvel 2’de görülmektedir', 2),
(3, 'VERİ VE TEKNOLOJİ', 'Veri ve teknolojideki ilerlemeler, insanların yaşamlarını iyileştirmek için muazzam fırsatlar sunuyor, ancak değişimin baş döndürücü hızı ve ölçeği, ele alınması gereken zorluklar ve riskler de yaratıyor.\r\n\r\nBM Vakfı, verileri ve teknolojinin sürdürülebilir kalkınma üzerindeki etkisini artırmak ve iyileştirmek ve dijital çağda işbirliğini teşvik etmek için BM ve çeşitli ortaklardan oluşan bir toplulukla birlikte çalışır', 1),
(4, 'GÜVENLİ İLETİŞİM AÇISINDAN AKILLI CİHAZ İŞLETİM SİSTEMLERİ', 'İşletim sistemleri hemen hemen hepimizin evlerinde ya da çalışma ofislerinde yer alan bilgisayarlar ve\r\ncep telefonlarında bulunan ve bu aygıtların donanım elemanlarını yöneten, çeşitli yazılımlar için uygulama\r\ntabanı oluşturan sistemlerdir. Teknolojideki hızlı gelişmeler sürekli güncellenen ve çeşitlenen işletim sistemlerini\r\ngerekli kılmıştır. Bu işletim sistemleri önceden sadece yabancı firmalar tarafından üretilse de günümüzde yerli\r\nyazılıma sahip işletim sistemleri de mevcuttur', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
