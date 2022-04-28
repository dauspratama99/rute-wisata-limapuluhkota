-- Adminer 4.7.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tb_jarak_tempat`;
CREATE TABLE `tb_jarak_tempat` (
  `id_jarak_tempat` int(11) NOT NULL AUTO_INCREMENT,
  `id_tempat` int(11) NOT NULL,
  `id_tujuan` int(11) NOT NULL,
  `jarak_tempat` double NOT NULL COMMENT 'Jarak tempuh dalam satuan km',
  `waktu_tempuh` double NOT NULL COMMENT 'Waktu tempuh dalam satuan menit',
  PRIMARY KEY (`id_jarak_tempat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_jarak_tempat` (`id_jarak_tempat`, `id_tempat`, `id_tujuan`, `jarak_tempat`, `waktu_tempuh`) VALUES
(1,	1,	2,	8.4,	19),
(2,	2,	3,	9.2,	21),
(3,	3,	4,	12,	28),
(4,	4,	5,	8.2,	20),
(5,	5,	6,	3.8,	7),
(6,	5,	7,	8,	16),
(7,	2,	1,	8.4,	19),
(8,	3,	2,	9.2,	21),
(9,	4,	3,	12,	28),
(10,	5,	4,	8.2,	20),
(11,	6,	7,	9.2,	19),
(12,	6,	5,	3.8,	7),
(13,	7,	8,	3.7,	10),
(14,	7,	6,	9.2,	19),
(15,	7,	5,	8,	16),
(16,	8,	9,	12,	25),
(17,	8,	7,	3.7,	10),
(18,	9,	10,	3.2,	7),
(19,	9,	8,	12,	25),
(20,	10,	11,	13,	26),
(21,	10,	9,	3.2,	7),
(22,	11,	12,	2.5,	7),
(23,	11,	10,	13,	26),
(24,	12,	13,	3.3,	7),
(25,	12,	21,	4.8,	11),
(26,	12,	11,	2.5,	7),
(27,	13,	14,	1.9,	5),
(28,	13,	12,	3.3,	7),
(29,	14,	15,	6.4,	14),
(30,	14,	13,	1.9,	5),
(31,	15,	16,	0.45,	1),
(32,	15,	14,	6.4,	14),
(33,	16,	17,	0.55,	2),
(34,	16,	19,	0.7,	2),
(35,	16,	15,	0.45,	1),
(36,	17,	18,	0.13,	1),
(37,	17,	16,	0.45,	1),
(38,	18,	19,	0.8,	3),
(39,	18,	17,	0.13,	1),
(40,	19,	20,	1.5,	4),
(41,	19,	18,	0.8,	3),
(42,	19,	16,	0.7,	2),
(43,	20,	21,	1.1,	3),
(44,	20,	19,	1.5,	4),
(45,	21,	22,	0.04,	1),
(46,	21,	12,	4.8,	11),
(47,	21,	20,	1.1,	3),
(48,	22,	23,	0.3,	1),
(49,	22,	21,	0.04,	1),
(50,	23,	24,	2.9,	7),
(51,	23,	22,	0.3,	1),
(52,	24,	25,	1,	3),
(53,	24,	23,	2.9,	7),
(54,	25,	26,	1.1,	3),
(55,	25,	41,	16,	29),
(56,	25,	24,	1,	3),
(57,	26,	27,	15,	25),
(58,	26,	25,	1.1,	3),
(59,	27,	28,	8.5,	16),
(60,	27,	26,	15,	25),
(61,	28,	29,	0.5,	1),
(62,	28,	31,	26,	43),
(63,	28,	27,	8.5,	16),
(64,	29,	30,	2.7,	5),
(65,	29,	28,	0.5,	1),
(66,	30,	31,	24,	40),
(67,	30,	29,	2.7,	5),
(68,	31,	32,	1.5,	3),
(69,	31,	30,	24,	40),
(70,	31,	28,	26,	43),
(71,	32,	33,	9.8,	21),
(72,	32,	31,	1.5,	3),
(73,	33,	34,	7.4,	18),
(74,	33,	32,	9.8,	21),
(75,	34,	35,	3.1,	8),
(76,	34,	33,	7.4,	18),
(77,	35,	36,	12,	35),
(78,	35,	34,	3.1,	8),
(79,	36,	37,	21,	57),
(80,	36,	35,	12,	35),
(81,	37,	38,	26,	51),
(82,	37,	36,	21,	57),
(83,	38,	39,	5,	10),
(84,	38,	37,	26,	51),
(85,	39,	40,	40,	77),
(86,	39,	38,	5,	10),
(87,	40,	41,	15,	31),
(88,	40,	39,	40,	77),
(89,	41,	42,	18,	33),
(90,	41,	25,	16,	29),
(91,	41,	40,	15,	31),
(92,	42,	43,	72,	123),
(94,	43,	42,	72,	123),
(95,	42,	40,	23,	62),
(96,	40,	42,	23,	62);

DROP TABLE IF EXISTS `tb_tempat`;
CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tempat` varchar(100) NOT NULL,
  `deskripsi_tempat` varchar(255) NOT NULL,
  `alamat_tempat` varchar(255) NOT NULL,
  `latitude_tempat` varchar(191) NOT NULL,
  `longitude_tempat` varchar(191) NOT NULL,
  `provinsi` varchar(191) NOT NULL,
  `kabkota` varchar(191) NOT NULL,
  `kecamatan` varchar(191) NOT NULL,
  `kontak` varchar(191) NOT NULL,
  `foto` varchar(191) NOT NULL,
  PRIMARY KEY (`id_tempat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `deskripsi_tempat`, `alamat_tempat`, `latitude_tempat`, `longitude_tempat`, `provinsi`, `kabkota`, `kecamatan`, `kontak`, `foto`) VALUES
(1,	'Bukit Kelinci (WBK)',	'                          Wisata Bukit Kelinci memiliki konsep alam dan wisata kekinian. Wisata ini berupa peternakan kelinci yang didesain ala Eropa ditambah dengan spot selfie kekinian.                         ',	'Koto Tangah Batu Hampa, Akabiluru, Kabupaten Lima Puluh Kota, Sumatera Barat 26525                                                                                                                                                                             ',	'-0.2638211',	'100.5940819',	'',	'',	'',	'',	'Screenshot_20200404_113636-63008.jpg'),
(2,	'Taman Sago Park',	'                              Sago Park memiliki restoran, taman, teras dan Wi-Fi gratis diseluruh area akomodasi. Di resort, semua kamar memiliki kamar mandi pribadi. Anda juga dapat menikmati sarapan khas Asia di Sago Park. ',	'Situjuah Gadang, Situjuah Limo Nagari, Kabupaten Lima Puluh Kota, Sumatera Barat 26233                                                                                                ',	'-0.2820278',	'100.6419218',	'',	'',	'',	'',	'Screenshot_20200404_111133-04284.jpg'),
(3,	'Embung Baboy',	'                                Embung baboy merupakan sebuah aliran sungai yang terletak diantara hutan, sungai dengan air yang begitu tenang lengkap dengan warna hijau pekatnya kemudian beberapa pohon besar menghiasi sungai ini baik ditengah maupun dite',	'Tungka, Situjuah Limo Nagari, Kabupaten Lima Puluh Kota, Sumatera Barat 26273                                                                ',	'-0.3130336923824945',	'100.60389876365662',	'',	'',	'',	'',	'Screenshot_20200225_142408-90328.jpg'),
(4,	'Tours Kayu Kolek',	'                                Destinasi wisata panorama yang satu ini tergolong unik, karena bisa dinikmati setiap waktu. Dari sana kita bisa melihat berbagai landscape struktur kota Payakumbuh. Bagi kamu yang gila selfie, disini juga banyak spot kece y',	'Tanjuang Haro Sikabu-Kabu Padang Panjang, Luak, Kabupaten Lima Puluh Kota, Sumatera Barat 26261                                                                ',	'-0.2950309590076397',	'100.661780834198',	'',	'',	'',	'',	'Screenshot_20200404_124239-68346.jpg'),
(5,	'Batang Tabik',	'                           Merupakan pemandian alam dengan air yang sangat jernih dan sejuk, dikelilingi hamparan sawah dan pemandangan alam yang indah.    ',	'Batang tabik, JL. 50 Kota, Sungai Kamuyang, Luak, Kabupaten Lima Puluh Kota, Sumatera Barat 25173                                                                ',	'-0.2470628711338982',	'100.67471981048584',	'',	'',	'',	'',	'Screenshot_20200404_125214-44677.jpg'),
(6,	'Padang Mangateh',	'                            Udara yang segar, panorama alamnya yang begitu mempesona, dan hamparan padang rumput hijau yang begitu luas, yang mirip dengan desa Hobbiton yang terletak di matamata, North Island-New Zealand. Belum lagi dipercantik dengan bac',	'Padang Mangateh                                                                ',	'-0.26690414944449964',	'100.6909975798317',	'',	'',	'',	'',	'Screenshot_20200404_130459-11776.jpg'),
(7,	'Bukik Bulek',	'                       Bukik Bulek Taram terletak di Taram, Harau, Kabupaten Lima Puluh Kota. Menariknya dari bukit ini ada tanah lapang di puncaknya. Dimana, luasnya seperti lapangan sepak bola. Oleh karena itu, tak heran jika banyak wisatawan yang mengg',	'Taram, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26261                                                                ',	'-0.21148633617335558',	'100.70045292377472',	'',	'',	'',	'',	'Screenshot_20200404_185411-81755.jpg'),
(8,	'Kapalo Banda',	'                                 Kapalo Banda Taram merupakan danau yang dikelilingi bukit hijau yang indah. Pepohonan di sekitar danau juga menghidupkan suasana damai yang tercipta. Kegiatan menarik yang bisa dilakukan di Kapalo Banda Taram adalah naik r',	'Taram, Harau, Taram, Payakumbuh, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                                                ',	'-0.19244813495416527',	'100.72018325328827',	'',	'',	'',	'',	'Screenshot_20200404_190121-77165.jpg'),
(9,	'Torang Saribulan',	'                            Di lokasi tersebut, para wisatawan bisa bersamaan ria sambil menikmati keindahan pemandangan alam. Juga disediakan kolam renang untuk anak-anak. ',	'Buluh Kasok, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.15730063228339408',	'100.71653008460999',	'',	'',	'',	'',	'Screenshot_20200405_142139-65903.jpg'),
(10,	'Pilubang Resort',	'                Konsep penginapan yg humble dan ramah lingkungan langsung tertangkap begitu kita memasuki wilayah resort ini. Mulai dari penggunaan material bangunan yg natural, hingga lingkungan sekitar yg masih asri dan hijau.                           ',	'Pilubang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                                                ',	'-0.16277231732723235',	'100.69477200508118',	'',	'',	'',	'',	'pilubang-resort-72618.jpg'),
(11,	'Sarasah Tanggo',	'           Sarasah Tanggo ini merupakan wisata yang sangat mengasyikan untuk sampai ke lokasi ini kita harus berjalan kaki 300 m. Suasananya masih alami disekelilingnya terdapat hutan konservasi dan berbagai jenis satwa seperti burung dan hewan lainnya, s',	'Sarilamak, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.13725923283896105',	'100.6403124332428',	'',	'',	'',	'',	'sarasah-tanggo-96539.jpg'),
(12,	'Sarasah Donat',	'        Sarasah ini diberi nama Sarasah Donat karena air terjun ini terdapat didalam goa yang bolong ditengahnya. Bolongan itulah yang menjadi tempat mengalirnya air terjun ini. Untuk bisa berdiri tepat dibawah air terjun, pengunjung harus masuk kedalam g',	'Unnamed Road, Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.13421761635207094',	'100.65507531166077',	'',	'',	'',	'',	'sarasah-donat-47406.jpg'),
(13,	'Panorama Harau',	'         Pemandangan hijau yang indah serta tebing batu yang cantik membuat hati terasa nyaman.                       ',	'Unnamed Road, Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.12175610438389847',	'100.67041218280792',	'',	'',	'',	'',	'panorama-harau-90115.jpg'),
(14,	'Air Terjun Sarasah Murai',	'                 Dengan latar belakang bukit granit, pemandangan tempat ini justru lebih bagus, lebih indah & lebih alami di bandingkan dengan beberapa air terjun di Lembah Harau. Di sini, curah airnya memang jauh lebih banyak di bandingkan dengan air ter',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.1089110314624541',	'100.67690581083298',	'',	'',	'',	'',	'air-02053.jpg'),
(15,	'Air Terjun Sarasah Bunta',	'       Sarasah Bunta mengalirkan air tawar segar dari dataran tinggi di lembah ini. Dinamakan Sarasah Bunta karena jika dilihat dengan seksama air terjun ini berunta â€“ unta atau bertingkat â€“ tingkat.                                                    ',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                                                ',	'-0.10821097616618844',	'100.67537426948547',	'',	'',	'',	'',	'air-terjun-sarasah-bunta-74715.jpg'),
(16,	'Istana kelinci Harau',	'       Para pengunjung bisa berlarian di dalamnya sambil melihat-lihat kelinci serta bisa melihat dan bermain bersama kelinci.                   ',	'Sarasabunta, Lembah, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.11013143433461577',	'100.67188739776611',	'',	'',	'',	'',	'istana-kelinci-harau-86588.jpg'),
(17,	'Taman Wisata Lembah Harau',	'       Taman yang dipenuhi dengan bunga yang bermekaran dan pemandangan yang indah.                         ',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.11295311287096782',	'100.66981673240662',	'',	'',	'',	'',	'taman-harau-89951.jpg'),
(18,	'Kampung Eropa Harau',	'              Kampung Eropa merupakan spot wisata yang mengumpulkan bangunan, bendera dan tempat wisata yang ada di Eropa, atau lebih tepatnya disebut dengan Miniatur Negara-negara di Eropa. Lengkap dengan menara Eiffel, rumah kincir angin khas Belanda, h',	'Unnamed Road, Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.11205725678706636',	'100.67108273506165',	'',	'',	'',	'',	'kampung-eropa-67642.jpg'),
(19,	'Kampung Sarasah',	'     Kawasan Kampung Sarasah juga menawarkan pasir putih dengan latar belakang bangunan ala Eropa.                           ',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.11359684177649325',	'100.66815912723541',	'',	'',	'',	'',	'kampung-sarasah-02135.jpg'),
(20,	'Lembah Harau - Beautiful Scenery',	'         Lembah yang indah dikelilingi batu granit dan pemandangan yang hijau.                      ',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.10680013670789794',	'100.66547691822052',	'',	'',	'',	'',	'beautiful-scenery--16322.jpg'),
(21,	'Panorama Lembah Harau',	'    Tebing-tebing granit yang menjulang tinggi dengan bentuknya yang unik mengelilingi lembah. Lembah harau sangat subur dan hijau ditumbuhi pepohonan yang menjadikan tempat ini begitu asri. Udara disini juga sangat segar, sangat cocok sebagai tempat refr',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                                                ',	'-0.10034675236557926',	'100.66610991954803',	'',	'',	'',	'',	'panorama-lembah-harau-62205.jpg'),
(22,	'Harau Valley Waterfall',	'      Air terjun ini lebih cantik ketika dipancarkan sinar matahari, air terjun ini sangat dingin terutama dipagi hari.                           ',	'Tarantang, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.10003561659555388',	'100.66592752933502',	'',	'',	'',	'',	'harau-valley-waterfal-80499.jpg'),
(23,	'Lembah Harau Akabarayun',	'       Lembah ini selain dikelilingi oleh batu granit yang indah, disini juga disediakan tempat bermain air untuk keluarga  sehingga wisatawan bisa menelusuri sungai menggunakan sampan.                         ',	'Harau, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.09878034466592672',	'100.66312193870544',	'',	'',	'',	'',	'lembah-harau-aka-barayun-78382.jpg'),
(24,	'Harau Valley (Lembah Harau)',	'              Lembah Harau diapit dua bukit cadas terjal dengan ketinggian mencapai 150 meter berupa batu pasir yang terjal berwarna-warni, dengan ketinggian 100 sampai 500 meter.                   ',	'Nagari Harau, Kec. Harau, Harau, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.08255836490991914',	'100.65334796905518',	'',	'',	'',	'',	'harau-valley-57870.jpg'),
(25,	'Ngalau saribu stopover',	'   Goa ini diberi nama Ngalau Seribu karena goa ini tercipta dari susunan ruang â€“ ruang dengan jumlah yang tak hingga. Oleh sebab itu kalau ingin kesini sebaiknya kita ditemani oleh pemandu lokal agak tak tersesat saat menelusuri dalam goa. Di dalam goa',	'Harau, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat                                                                ',	'-0.07547733984908533',	'100.65132021903992',	'',	'',	'',	'',	'ngalau_seribu_lembah_harau-58743.png'),
(26,	'Sarasah Murai',	'        Sarasah Murai ini air terjun yang tersembunyi, jarang didatangi dan berlokasi di pedalaman Lembah Harau. Untuk menuju ke Air Terjun Murai itu jalannya berbatu dan penuh tantangan.                         ',	'Harau, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.07323501500102356',	'100.6413584947586',	'',	'',	'',	'',	'sarasah-murai-98452.jpg'),
(27,	'Rumah Gadang Sungai Beringin',	'   Rumah gadang ini terletak di tengah-tengah sawah, bagi kalian yang menyukai wisata budaya maka direkomendasikan untuk datang ke Rumah Gadang Sungai Beringin. Di rumah yang terlihat gagah dan terawat ini kalian akan menemukan banyak hal-hal yang terkait',	'7 Sungai Beringin, Sungai Beringin, Payakumbuh, Kabupaten Lima Puluh Kota, Sumatera Barat 26251                                                                ',	'-0.22143189621261014',	'100.58494627475739',	'',	'',	'',	'',	'rumah-gadang-sungai-beringin-47936.jpg'),
(28,	'Bukit Batu Manda Nan Elok',	'     keunikan dari bukit batu manda sendiri yaitu ada  sebuah batu besar yang berada di puncak bukit berbentuk seperti gajah yang dapat dinaiki oleh wisatawan. ketika menaiki batu tersebut  wisatawan bisa melihat keindahan kota Payakumbuh yang diselimuti ',	'Sungai Talang, Guguak, Kabupaten Lima Puluh Kota, Sumatera Barat 26253                                                                ',	'-0.18213777860107463',	'100.55274367332458',	'',	'',	'',	'',	'bukit-batu-manda-72005.jpg'),
(29,	'Menhir Belubus',	'      Menhir ini berbentuk seperti tiang atau tugu dan didirikan sebagai tanda peringatan. Menhir berfungsi sebagai lambang arwah nenek moyang, yang oleh karenanya yang dipuja.                           ',	'Sungai Talang, Guguak, Kabupaten Lima Puluh Kota, Sumatera Barat 26253                                                                ',	'-0.18205731273702636',	'100.55945992469788',	'',	'',	'',	'',	'menhir-belubus-53935.jpg'),
(30,	'Rumah Barbie Kuranji',	'Arsitektur bangunan berwarna putih itu mirip perumahan di Eropa. Jendelanya besar, jumlahnya sekira 20 buah. Ada tiga ruang besar yang terletak di samping kiri, tengah dan kanan. Di depan rumah terpampang halaman yang hijau dan luas. Yang paling unik dan ',	'Jl. Kuranji, Guguak VIII Koto, Guguak, Kabupaten Lima Puluh Kota, Sumatera Barat 26253                                                                ',	'-0.1684941',	'100.5678923',	'',	'',	'',	'',	'rumah-barbie-kuranji-29589.jpg'),
(31,	'Museum Tan Malaka',	'  Dari jendela rumah sang datuk, rimbun pohon kelapa yang menaungi kolam di depan rumah tampak, begitu juga bukit hijau yang berdiri tegak di seberangnya. Di dalam rumah tan malaka tersebut masih tersimpan kain gendong dan juga terdapat sebuah patung yang',	'Pandam Gadang, Gunuang Omeh, Kabupaten Lima Puluh Kota, Sumatera Barat 26255                                                                ',	'-0.08718785258913508',	'100.41908383369446',	'',	'',	'',	'',	'museum-tan-malaka-86856.jpg'),
(32,	'Ikan Banyak Suliki',	'    Selain ikan yang ada di lokasi, pemadangan yang terdapat di tempat tersebut juga alami.                            ',	'Pandam Gadang, Gunuang Omeh, Kabupaten Lima Puluh Kota, Sumatera Barat 26255                                                                ',	'-0.08074519345710048',	'100.40875196456909',	'',	'',	'',	'',	'ikan-banyak-suliki-53659.jpg'),
(33,	'Jesigo',	'             Setiap wisatawan yang berkunjung dapat memetik dan menikmati buah jeruk langsung dari kebunnya.                   ',	'Koto Tinggi, Gunuang Omeh, Kabupaten Lima Puluh Kota, Sumatera Barat 26256                                                                ',	'-0.055242768311594186',	'100.3672742843628',	'',	'',	'',	'',	'jesigo-80123.jpg'),
(34,	'Kampuang wisata sarugo (seribu gonjong) ',	'   Rumah adat tradisional minangkabau yang banyak, dengan jumlah gonjong masing-masing rumah ada lima. sesunan rumah tersebut berjajar rapi kesamping yang terlihat begitu cantik dan unik.                             ',	'Sei dadok, Koto Tinggi, Gunuang Omeh, Kabupaten Lima Puluh Kota, Sumatera Barat 26256                                                                                                                                ',	'-0.05412160545398373',	'100.36160409450531',	'',	'',	'',	'',	'sarugo-50082.jpg'),
(35,	'Monumen PDRI Koto Tinggi',	'                                ',	'Koto Tinggi, Gunuang Omeh, Kabupaten Lima Puluh Kota, Sumatera Barat 26256                                                                ',	'-0.05086540507696572',	'100.35756468772888',	'',	'',	'',	'',	'monumen-PDRI-23402.jpg'),
(37,	'Air Terjun Sarasah Barasok',	'Air terjun yang menjulang tinggi menghempas di atas bebatuan besar dan pecah menjadi rintik- rintik embun yang menyerupai asap. ',	'Banja Loweh, Bukik Barisan, Kabupaten Lima Puluh Kota, Sumatera Barat 26255                                                                ',	'-0.0259837',	'100.4772118',	'',	'',	'',	'',	'air-terjun-sarasah-barasok-51683.jpg'),
(38,	'Menhir Bawah Parit',	'Menhir biasanya digunakan masyarakat prasejarah sebagai alat pemujaan arwah nenek moyang. Batu-batu itu di bentuk dan dihias dengan berbagai macam pola dan ukiran dalam berbagai ukuran. Menhir yang ditemukan di Nagari Maek ini mirip dengan menhir-menhir y',	'Maek, Bukit Barisan, Kabupaten Lima Puluh Kota, Sumatera Barat 26255                     ',	'0.027736',	'100.4943838',	'Sematera Barat',	'Lima Puluh Kota',	'Bukit Barisan',	'',	'Screenshot_20200405_134019-98020.jpg'),
(39,	'Bukik Posuak Maek',	' Bukik Posuak (bukit tembus) mempunyai cerita legenda.                                ',	'Maek, Bukik Barisan, Kabupaten Lima Puluh Kota, Sumatera Barat 26255                                                                ',	'0.04662751636818523',	'100.53677380084991',	'',	'',	'',	'',	'bukik-posuak-maek-32707.jpg'),
(40,	'Gunung Bungsu',	'                                Para pecinta alam, baik yang suka treking, climbing, atau trabas, boleh menjadikan gunung bungsu ini pilihan yang tepat. Selain gunung ini tidak terlalu tinggi, juga kita bisa mencapai ya dengan sepeda motor, kita bisa meli',	'Taeh Bukik, Payakumbuh, Kabupaten Lima Puluh Kota, Sumatera Barat 26251                                                                ',	'-0.13563381878507758',	'100.61447739601135',	'',	'',	'',	'',	'Screenshot_20200405_181008-19004.jpg'),
(42,	'Kelok Sambilan',	'                                Jembatan ini berada di kawasan lembah yang sangat indah. Ada satu spot dimana kita bisa berhenti dan menikmati keindahan alam dan konstruksi secara bersamaan. ',	'Jl. Kelok Sembilan, Sarilamak, Kec. Harau, Kabupaten Lima Puluh Kota, Sumatera Barat 26271                                                                ',	'-0.07162569087804853',	'100.69873094558716',	'',	'',	'',	'',	'Screenshot_20200405_175509-48876.jpg'),
(43,	'Air Terjun Lubuk Batang',	'Air terjun ini unik dan indah, karena terletak diantara dua tebing batu dan pasir di tengah-tengah lokasi air terjun. Pasir putih bersih dan halus hingga kita bisa membenamkan diri di dalamnya bahkan bisa buat kemping dilokasi ini. ',	'Jurong 2 Kec. Kapur Sembilan Kab., Koto Bangun, Kapur IX, Kabupaten Lima Puluh Kota, Sumatera Barat 28453                                                                                                ',	'0.27609479864184355',	'100.5238401889801',	'',	'',	'',	'',	'Screenshot_20200405_174648-06457.jpg');

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `kontak` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `level` enum('admin','user') NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `nama`, `email`, `kontak`, `alamat`, `level`) VALUES
(1,	'admin',	'21232f297a57a5a743894a0e4a801fc3',	'admin',	'admin@gmail.com',	'0817237128723',	'padang',	'admin');

-- 2020-04-08 04:02:04