part of constants;

/*
 * Yang dibutuhkan halaman detail proyek:
 * 1. Judul
 * 2. deskripsi
 * 3. tanggal mulai proyek
 * 4. tanggal proyek selesai
 * 5. Nilai Proyek
 * 6. Pemilik Proyek
 * 7. Panitia Penyelenggara
 * 8. Pengawas Proyek
 * 9. Kontak
 */

class DataProjects {
  static const String imageDir = "assets/projects";
  static Map<String, dynamic> myProjectsList = {
    "MAP_NAME": {"masjid_cianjur": masjidCianjur()},
    "NAME": [
      masjidCianjur(),
      cluster_budi_asri(),
      stai_daarut_tauhiid(),
      dome_eco_pesantren(),
      masjid_daarut_tauhiid(),
      masjid_besar_ciparay(),
      perbaikan_masjid_cipaku(),
      rumah_santri_karya_daarut_tauhiid(),
      rumah_graha_bukit_raya(),
      gedung_4_lantai_dt_peduli(),
      gedung_pesantren_masa_keemasan()
    ],
    "mainImage": [
      masjidCianjur()["mainImage"],
      cluster_budi_asri()["mainImage"],
      stai_daarut_tauhiid()["mainImage"],
      dome_eco_pesantren()["mainImage"],
      masjid_daarut_tauhiid()["mainImage"],
      masjid_besar_ciparay()["mainImage"],
      perbaikan_masjid_cipaku()["mainImage"],
      rumah_santri_karya_daarut_tauhiid()["mainImage"],
      rumah_graha_bukit_raya()["mainImage"],
      gedung_4_lantai_dt_peduli()["mainImage"],
      gedung_pesantren_masa_keemasan()["mainImage"]
    ],
    "mainImageLandscape": [
      masjidCianjur()["mainImageLandscape"],
      cluster_budi_asri()["mainImageLandscape"],
      stai_daarut_tauhiid()["mainImageLandscape"],
      dome_eco_pesantren()["mainImageLandscape"],
      masjid_daarut_tauhiid()["mainImageLandscape"],
      masjid_besar_ciparay()["mainImageLandscape"],
      perbaikan_masjid_cipaku()["mainImageLandscape"],
      rumah_santri_karya_daarut_tauhiid()["mainImageLandscape"],
      rumah_graha_bukit_raya()["mainImageLandscape"],
      gedung_4_lantai_dt_peduli()["mainImageLandscape"],
      gedung_pesantren_masa_keemasan()["mainImageLandscape"]
    ],
    "mainImagePortrait": [
      masjidCianjur()["mainImagePortrait"],
      cluster_budi_asri()["mainImagePortrait"],
      stai_daarut_tauhiid()["mainImagePortrait"],
      dome_eco_pesantren()["mainImagePortrait"],
      masjid_daarut_tauhiid()["mainImagePortrait"],
      masjid_besar_ciparay()["mainImagePortrait"],
      perbaikan_masjid_cipaku()["mainImagePortrait"],
      rumah_santri_karya_daarut_tauhiid()["mainImagePortrait"],
      rumah_graha_bukit_raya()["mainImagePortrait"],
      gedung_4_lantai_dt_peduli()["mainImagePortrait"],
      gedung_pesantren_masa_keemasan()["mainImagePortrait"]
    ],
    "name": [
      masjidCianjur()["name"],
      cluster_budi_asri()["name"],
      stai_daarut_tauhiid()["name"],
      dome_eco_pesantren()["name"],
      masjid_daarut_tauhiid()["name"],
      masjid_besar_ciparay()["name"],
      perbaikan_masjid_cipaku()["name"],
      rumah_santri_karya_daarut_tauhiid()["name"],
      rumah_graha_bukit_raya()["name"],
      gedung_4_lantai_dt_peduli()["name"],
      gedung_pesantren_masa_keemasan()["name"]
    ],
    "highlight": [
      masjidCianjur()["highlight"],
      cluster_budi_asri()["highlight"],
      stai_daarut_tauhiid()["highlight"],
      dome_eco_pesantren()["highlight"],
      masjid_daarut_tauhiid()["highlight"],
      masjid_besar_ciparay()["highlight"],
      perbaikan_masjid_cipaku()["highlight"],
      rumah_santri_karya_daarut_tauhiid()["highlight"],
      rumah_graha_bukit_raya()["highlight"],
      gedung_4_lantai_dt_peduli()["highlight"],
      gedung_pesantren_masa_keemasan()["highlight"]
    ]
  };

  static Map<String, dynamic> masjidCianjur() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "year": "2022 - 2023 (On Going)",
      "projectId": "masjid_cianjur",
      "name": "Proyek Rekonstruksi Masjid Cianjur",
      "location": "Cianjur, Jawa Barat",
      "highlight":
          "Pemulihan dan Rekonstruksi Masjid-masjid yang Terdampak Gempa",
      "description":
          "Proyek ini bertujuan untuk membangun kembali masjid-masjid yang mengalami kerusakan serius akibat gempa di Cianjur. Kami berkomitmen untuk mengembalikan tempat ibadah yang aman dan nyaman bagi masyarakat setempat. Bantu kami mendukung rekonstruksi ini untuk memulihkan kehidupan masyarakat yang terdampak gempa.",
      "owner": "Masyarakat Kota Cianjur",
      "contact": "+62222007134",
      "mainImage": "$imageDir/masjid_cianjur/masjid_cianjur_landscape_047.jpg",
      "mainImagePortrait":
          "$imageDir/masjid_cianjur/masjid_cianjur_portrait_127.jpg",
      "imageListLandscape": [
        for (int i = 1; i <= 241; i++)
          "$imageDir/masjid_cianjur/masjid_cianjur_landscape_${i.toString().padLeft(3, "0")}.jpg",
      ],
      "imageListPortrait": [
        for (int i = 1; i <= 152; i++)
          "$imageDir/masjid_cianjur/masjid_cianjur_portrait_${i.toString().padLeft(3, "0")}.jpg",
      ],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription":
            "Proyek rekonstruksi masjid-masjid di Cianjur dihadapkan pada sejumlah tantangan serius, yang memerlukan solusi kreatif dan efisien. Berikut adalah gambaran tantangan dan solusi yang kami tawarkan:",
        "list": [
          {
            "poin":
                "Tantangan: Kondisi jalan rusak - Akses ke lokasi proyek sangat sulit karena jalan rusak parah. Solusi: Kami menggunakan mobil yang disediakan oleh klien kami untuk dapat mengantarkan barang dan material bangunan, sehingga memastikan pasokan terus berjalan lancar meskipun kondisi jalan sulit.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Tantangan: Kerusakan wilayah - Gempa telah merusak sebagian besar wilayah, menyebabkan kesulitan dalam distribusi barang dan material. Solusi: Kami melakukan survei wilayah dengan teliti dan merencanakan rute terbaik untuk distribusi. Selain itu, kami bekerja sama dengan otoritas lokal untuk memperbaiki infrastruktur yang rusak.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Tantangan: Fasilitas kerja terbatas - Kami menghadapi kesulitan dalam menyediakan fasilitas kerja yang memadai di lokasi proyek. Solusi: Kami mendirikan kemah proyek yang dilengkapi dengan fasilitas lengkap untuk tim kami, termasuk tempat tinggal, dapur, dan area istirahat, sehingga tim kami dapat bekerja dengan efisien.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin": "Tantangan lainnya: ... - Solusi: ...",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription":
            "Lingkup pekerjaan ini mencakup berbagai tahapan dari survei lapangan hingga tahap finishing bangunan dalam proyek rekonstruksi masjid-masjid di Cianjur yang terdampak gempa.",
        "list": [
          {
            "poin":
                "Survei Lapangan: Tim survei lapangan akan mengidentifikasi kerusakan pada masjid-masjid yang terkena dampak gempa, termasuk tingkat kerusakan dan kondisi struktur. Data ini akan menjadi dasar perencanaan rekonstruksi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pekerjaan Awal: Tahap ini melibatkan pemindahan material puing, pemagaran area, dan persiapan lahan. Selain itu, perizinan dan perencanaan teknis juga dilakukan pada tahap awal proyek.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pekerjaan Pembersihan: Pembersihan area rekonstruksi merupakan hal yang cukup sulit untuk dilakukan karena area menerima dampak kerusakan yang serius. Tim akan membersihkan puing, bahan berbahaya, dan mempersiapkan lahan untuk pembangunan kembali.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pembangunan Struktur: Tahap ini melibatkan konstruksi kembali bangunan masjid yang rusak. Ini mencakup pekerjaan pondasi, struktur utama, atap, dinding, dan fitur interior seperti lantai dan dinding dalam.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pekerjaan Finishing: Setelah pembangunan struktur selesai, tahap ini mencakup pekerjaan finishing seperti pengecatan, pemasangan lantai, dinding dalam, langit-langit, dan fitur-fitur dekoratif.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasangan Peralatan dan Perabotan: Dalam tahap ini, peralatan ibadah seperti mihrab, mimbar, lampu, serta perabotan seperti karpet dan kursi akan dipasang sesuai kebutuhan dan desain yang telah ditetapkan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Uji Coba dan Pemeriksaan Akhir: Sebelum masjid digunakan kembali, dilakukan uji coba dan pemeriksaan akhir untuk memastikan semua sistem, instalasi, dan keamanan memenuhi standar yang ditetapkan.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      "listOpt3": {
        "listTitle": "Mitra Kerja & Vendor",
        "listDescription": "",
        "list": [
          {
            "poin":
                "CV. Bersama: CV. Bersama adalah sebuah perusahaan yang bergerak dalam bidang Perencana Pembangunan Gedung dan Pengawas Pelaksanaan Konstruksi Bangunan. Perusahaan ini memiliki komitmen kuat untuk memberikan layanan berkualitas tinggi dalam perencanaan, perancangan, dan pengawasan pelaksanaan konstruksi bangunan.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      "listOpt4": {
        "listTitle": "Testimoni Klien",
        "listDescription": "",
        "list": [
          {"poin": "", "poinImage": "", "poinVideo": ""},
        ],
      },
    };
  }

  static Map<String, dynamic> cluster_budi_asri() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Cluster Budi Asri",
      "highlight":
          "Proyek ini melibatkan pembangunan 12 rumah di Cimahi Utara dengan konsep rumah minimalis untuk membentuk sebuah Cluster hunian yang modern dan nyaman.",
      "description":
          "Proyek Pembangunan Rumah Budi Asri adalah proyek pembangunan 12 rumah yang terletak di daerah Cimahi Utara. Proyek ini dirancang untuk membentuk sebuah Cluster dengan konsep rumah minimalis, menciptakan lingkungan hunian yang nyaman dan modern bagi para pemilik rumah.",
      "owner": "",
      "KONTAK": "",
      "mainImage": "$imageDir/cluster_budi_asri/cluster_budi_asri_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [
        for (int i = 1; i <= 241; i++)
          "$imageDir/cluster_budi_asri/cluster_budi_asri_${i.toString().padLeft(3, "0")}.jpg",
      ],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Topografi Daerah: Daerah Cimahi Utara memiliki topografi yang tidak rata, sehingga memerlukan perataan lahan yang cermat. Melakukan survei topografi awal dan merancang penyesuaian lahan yang tepat dengan memanfaatkan teknik perataan dan penguatan lahan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Izin dan Regulasi: Mendapatkan izin konstruksi dan mematuhi peraturan daerah yang ketat. Mempekerjakan tim ahli hukum dan mengkomunikasikan dengan pihak berwenang untuk memastikan semua persyaratan izin terpenuhi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pasokan Material: Memastikan ketersediaan material konstruksi yang cukup untuk proyek dengan ukuran besar. Menyusun perencanaan logistik yang efisien, berkolaborasi dengan pemasok terpercaya, dan memiliki cadangan material.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Cuaca Ekstrem: Cuaca buruk dapat memperlambat kemajuan proyek. Menerapkan jadwal yang fleksibel, memiliki penutupan sementara untuk melindungi pekerjaan dari cuaca ekstrem, dan merencanakan aktivitas dalam jangka waktu yang lebih panjang.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Penggalian dan Persiapan Lahan: Mengekavasi dan meratakan lahan sesuai dengan rencana.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Struktur Bangunan: Membangun pondasi, struktur utama, dan kerangka rumah.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Finishing Interior dan Eksterior: Melakukan pemasangan bahan finishing seperti dinding, lantai, atap, dan penyelesaian interior seperti perabotan dan perangkat kamar mandi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Infrastruktur Cluster: Membangun infrastruktur cluster seperti jalan, taman, dan sistem keamanan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kualitas dan Pengujian: Melakukan pengujian berkala untuk memastikan kualitas bangunan dan kelengkapan infrastruktur.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Izin dan Dokumentasi: Memproses semua izin dan dokumen yang diperlukan selama dan setelah konstruksi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasaran dan Penjualan: Mengelola pemasaran dan penjualan rumah-rumah dalam cluster kepada calon pembeli.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian kepada pemilik rumah yang telah membeli.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> stai_daarut_tauhiid() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Gedung Pendidikan STAI Daarut Tauhiid",
      "highlight":
          "Proyek ini melibatkan pembangunan gedung pendidikan 5 lantai untuk Sekolah Tinggi Agama Islam Daarut Tauhiid, menciptakan fasilitas modern bagi mahasiswa.",
      "description":
          "Proyek Pembangunan Gedung Pendidikan STAI Daarut Tauhiid adalah proyek konstruksi yang bertujuan membangun gedung pendidikan 5 lantai untuk kampus STAI Daarut Tauhiid. Gedung ini dirancang untuk menyediakan fasilitas pendidikan yang modern dan fungsional bagi mahasiswa, menciptakan lingkungan belajar yang berkualitas.",
      "owner": "",
      "KONTAK": "",
      "mainImage": "$imageDir/stai/stai_022.jpg",
      "mainImagePortrait": "$imageDir/stai/stai_074.jpg",
      "imageListLandscape": [
        for (int i = 1; i <= 241; i++)
          "$imageDir/stai/stai_${i.toString().padLeft(3, "0")}.jpg",
      ],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Kebutuhan Fasilitas Pendidikan yang Komprehensif: Memastikan semua fasilitas pendidikan yang dibutuhkan seperti ruang kelas, perpustakaan, dan laboratorium memenuhi standar pendidikan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kualitas Konstruksi yang Tinggi: Memastikan kualitas konstruksi yang tinggi untuk daya tahan jangka panjang.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Aksesibilitas: Membangun gedung yang mudah diakses oleh mahasiswa, termasuk yang memerlukan aksesibilitas khusus.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan dan Lingkungan: Memperhatikan faktor keamanan gedung dan praktik lingkungan yang sesuai.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Penggalian dan Persiapan Lahan: Mengekavasi dan meratakan lahan sesuai dengan rencana.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Struktur Bangunan: Membangun pondasi, struktur utama, dan kerangka gedung pendidikan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Finishing Interior dan Eksterior: Melakukan pemasangan bahan finishing seperti dinding, lantai, atap, dan penyelesaian interior seperti perabotan dan perangkat kamar mandi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Infrastruktur Kampus: Membangun infrastruktur kampus seperti jalan, taman, dan sistem keamanan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kualitas dan Pengujian: Melakukan pengujian berkala untuk memastikan kualitas bangunan dan kelengkapan infrastruktur.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Izin dan Dokumentasi: Memproses semua izin dan dokumen yang diperlukan selama dan setelah konstruksi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian kepada pemilik gedung.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> dome_eco_pesantren() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Dome Eco Pesantren",
      "highlight":
          "Proyek ini melibatkan pembangunan Dome di Eco Pesantren yang akan diperuntukan menjadi lapangan indoor pesantren di Kab. Bandung Barat.",
      "description":
          "Proyek Pembangunan Dome Eco Pesantren adalah proyek konstruksi yang bertujuan membangun Dome di Eco Pesantren, yang akan diperuntukan menjadi lapangan indoor pesantren di Kab. Bandung Barat. Dome ini akan menjadi fasilitas yang berharga untuk aktivitas olahraga dan kegiatan pesantren.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Perencanaan Desain yang Tepat: Memastikan desain Dome sesuai dengan kebutuhan pesantren dan aktivitas olahraga yang akan dilakukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penggunaan Material yang Ramah Lingkungan: Memilih material konstruksi yang ramah lingkungan sesuai dengan prinsip pesantren eco-friendly.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pengelolaan Sumber Daya Energi: Memaksimalkan penggunaan sumber daya energi terbarukan dalam operasional Dome.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan Konstruksi: Memastikan keamanan selama proses pembangunan Dome, terutama dalam hal pengerjaan struktur atap.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain dan Perencanaan: Merancang desain Dome yang sesuai dengan kebutuhan pesantren dan aktivitas olahraga.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konstruksi Dome: Membangun struktur Dome yang kuat, termasuk atap dan fasilitas terkait.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasangan Material Ramah Lingkungan: Memilih dan memasang material konstruksi yang ramah lingkungan, seperti material atap yang dapat memanfaatkan energi matahari.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Infrastruktur Pesantren: Membangun infrastruktur di sekitar Dome, seperti akses jalan dan fasilitas pendukung.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penggunaan Sumber Daya Energi Terbarukan: Memasang panel surya dan teknologi energi terbarukan untuk meminimalkan konsumsi energi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan Proyek: Menyusun rencana keamanan yang komprehensif untuk menjaga keamanan selama proses konstruksi Dome.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan dan perawatan Dome untuk menjaga keberlanjutan fasilitas.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> masjid_daarut_tauhiid() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Masjid Daarut Tauhiid",
      "highlight":
          "Proyek ini melibatkan pembangunan masjid Daarut Tauhiid yang akan menjadi salah satu ikon dari pesantren Daarut Tauhiid karena memiliki desain modern.",
      "description":
          "Proyek Pembangunan Masjid Daarut Tauhiid adalah proyek konstruksi yang bertujuan membangun masjid yang akan menjadi salah satu ikon dari pesantren Daarut Tauhiid. Masjid ini memiliki desain yang modern dan unik, menciptakan tempat ibadah yang indah dan fungsional.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain yang Rumit: Membangun masjid dengan desain modern memerlukan perencanaan yang cermat.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penggunaan Material Kualitas Tinggi: Untuk mencapai estetika yang tinggi, diperlukan penggunaan material berkualitas tinggi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pengembangan Lokasi: Pembangunan masjid ini dapat memerlukan pengembangan infrastruktur dan fasilitas di sekitarnya.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan Proyek: Memastikan keamanan baik untuk pekerja maupun pengunjung selama konstruksi dan setelahnya.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain dan Perencanaan: Merancang desain masjid yang modern dan unik dan menyusun perencanaan konstruksi yang detail.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konstruksi Masjid: Membangun bangunan masjid, termasuk struktur utama, kubah, dan menara.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Fasilitas dan Interior: Memasang fasilitas dalam masjid seperti mihrab, mimbar, karpet, dan pencahayaan yang indah.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemandangan dan Lanskap: Merancang pemandangan dan lanskap di sekitar masjid untuk menciptakan lingkungan yang indah dan damai.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Infrastruktur: Memastikan aksesibilitas yang baik ke masjid dengan membangun jalan akses, tempat parkir, dan fasilitas penunjang lainnya.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasangan Material Berkualitas Tinggi: Memilih dan memasang material konstruksi yang berkualitas tinggi seperti marmer dan batu.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan Proyek dan Pekerja: Menyusun rencana keamanan yang komprehensif, memasang sistem keamanan yang canggih, dan memberikan pelatihan keamanan kepada pekerja.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan dan perawatan untuk menjaga masjid tetap dalam kondisi yang baik setelah penyelesaian proyek.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> masjid_besar_ciparay() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Masjid Besar Ciparay",
      "highlight":
          "Proyek ini melibatkan pembangunan Masjid Besar Kota Ciparay, yang pada akhirnya menjadi masjid ikon kota Ciparay karena desainnya yang mirip dengan Taj Mahal.",
      "description":
          "Proyek Pembangunan Masjid Besar Ciparay adalah proyek konstruksi yang bertujuan membangun masjid besar yang akan menjadi ikon kota Ciparay. Masjid ini memiliki desain yang khas, mirip dengan Taj Mahal, menciptakan tempat ibadah yang megah dan indah.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain yang Rumit: Membangun masjid dengan desain yang rumit dan mirip dengan Taj Mahal memerlukan keahlian desain dan konstruksi yang tinggi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penggunaan Material Kualitas Tinggi: Untuk mencapai estetika yang tinggi, diperlukan penggunaan material berkualitas tinggi seperti marmer dan batu.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan Konstruksi: Memastikan keamanan selama proses pembangunan, terutama dalam hal pengerjaan struktur atap yang kompleks.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Waktu dan Anggaran: Mengelola proyek dengan efisien sesuai waktu dan anggaran yang tersedia.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain dan Perencanaan: Merancang desain yang rumit dan memastikan bahwa semua detail sesuai dengan Taj Mahal.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konstruksi Masjid: Membangun struktur masjid yang megah, termasuk menara dan kubah yang mengesankan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasangan Material Berkualitas Tinggi: Memilih dan memasang material konstruksi yang berkualitas tinggi seperti marmer dan batu alam.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Keamanan Konstruksi: Menyusun rencana keamanan yang komprehensif untuk menjaga keamanan selama proses konstruksi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Waktu dan Anggaran: Memantau dan mengendalikan proyek agar sesuai dengan waktu dan anggaran yang ditentukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pelaporan dan Dokumentasi: Membuat laporan berkala tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga masjid dalam kondisi yang baik setelah selesai dibangun.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> perbaikan_masjid_cipaku() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Perbaikan Masjid Daarut Tauhiid Cipaku, Jakarta",
      "highlight":
          "Proyek ini melibatkan perbaikan masjid Daarut Tauhiid yang berlokasi di Cipaku, Jakarta, untuk memastikan kondisi dan fasilitas masjid tetap terjaga.",
      "description":
          "Proyek Perbaikan Masjid Daarut Tauhiid di Cipaku, Jakarta adalah proyek perbaikan dan pemeliharaan masjid yang berlokasi di Cipaku, Jakarta. Tujuan proyek ini adalah memastikan kondisi dan fasilitas masjid tetap terjaga dengan baik, sehingga pelayanan keagamaan dapat berjalan lancar.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Pemeliharaan Struktur dan Fasilitas: Menjaga kondisi bangunan dan fasilitas masjid yang sudah ada dengan perbaikan yang diperlukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemenuhan Standar Keamanan: Memastikan bahwa masjid memenuhi standar keamanan yang diperlukan dalam situasi darurat.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konservasi dan Restorasi: Melakukan konservasi dan restorasi pada elemen-elemen bersejarah dalam masjid.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Waktu dan Anggaran Terbatas: Mengelola proyek dengan efisien sesuai waktu dan anggaran yang tersedia.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Pemeriksaan dan Evaluasi: Melakukan pemeriksaan dan evaluasi kondisi masjid untuk menentukan perbaikan yang diperlukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Perbaikan Struktur: Melakukan perbaikan pada struktur bangunan yang rusak atau lemah.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemulihan Fasilitas: Memulihkan fasilitas seperti perabotan, pencahayaan, dan audio visual.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Peningkatan Keamanan: Memasang sistem keamanan yang lebih baik, termasuk alarm kebakaran dan pemadam kebakaran.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konservasi Warisan: Melakukan konservasi pada elemen-elemen bersejarah dalam masjid, seperti ukiran dan kaligrafi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Waktu dan Anggaran: Memantau dan mengendalikan proyek agar sesuai dengan waktu dan anggaran yang ditentukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pelaporan dan Dokumentasi: Membuat laporan berkala tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga masjid dalam kondisi yang baik setelah perbaikan selesai.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> rumah_santri_karya_daarut_tauhiid() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Unit Rumah Santri Karya Daarut Tauhiid",
      "highlight":
          "Proyek ini melibatkan pembangunan unit-unit rumah di pegunungan Eco Pesantren Kab. Bandung Barat dengan konsep rumah minimalis Islami untuk kebutuhan santri Daarut Tauhiid.",
      "description":
          "Proyek Pembangunan Unit Rumah Santri Karya Daarut Tauhiid adalah proyek pembangunan unit-unit rumah yang terletak di pegunungan Eco Pesantren Kab. Bandung Barat. Rumah-rumah ini dirancang dengan konsep rumah minimalis Islami untuk memenuhi kebutuhan santri Daarut Tauhiid.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Kondisi Pegunungan: Menghadapi kondisi geografis di pegunungan yang dapat menghambat proses konstruksi. Memanfaatkan teknik konstruksi yang sesuai dengan kondisi pegunungan dan perlindungan lingkungan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kebutuhan Santri: Memahami kebutuhan khusus santri dalam rumah minimalis Islami. Merancang rumah-rumah dengan fasilitas yang sesuai.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemilihan Material: Memilih material yang ramah lingkungan dan sesuai dengan prinsip rumah Islami.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Biaya: Memantau dan mengendalikan biaya agar sesuai dengan anggaran yang tersedia.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Pembangunan di Pegunungan: Membangun rumah-rumah di lingkungan pegunungan yang memerlukan teknik konstruksi khusus.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Desain Rumah Islami: Merancang rumah-rumah dengan prinsip-prinsip desain rumah Islami, termasuk fasilitas seperti ruang ibadah dan tata letak yang sesuai.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemilihan Material Ramah Lingkungan: Memilih material konstruksi yang ramah lingkungan dan sesuai dengan nilai-nilai Islami.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Biaya: Mengelola anggaran dengan cermat dan memastikan semua pekerjaan sesuai dengan rencana anggaran.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pelaporan dan Dokumentasi: Membuat laporan tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk pemilik rumah yang telah membeli unit.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> rumah_graha_bukit_raya() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Unit Rumah Graha Bukit Raya",
      "highlight":
          "Proyek ini melibatkan pembangunan unit-unit rumah di Graha Bukit Raya, Kab. Bandung Barat, dengan konsep rumah modern untuk menciptakan hunian yang nyaman dan fungsional.",
      "description":
          "Proyek Pembangunan Unit Rumah Graha Bukit Raya adalah proyek pembangunan unit-unit rumah yang terletak di Graha Bukit Raya, Kab. Bandung Barat. Proyek ini dirancang dengan konsep rumah modern untuk menciptakan hunian yang nyaman dan fungsional bagi pemilik rumah.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain Hunian Modern: Menciptakan desain hunian modern yang sesuai dengan kebutuhan dan ekspektasi calon pembeli.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemilihan Material: Memilih material konstruksi yang berkualitas dan sesuai dengan konsep rumah modern.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Ketepatan Waktu: Mengelola proyek untuk memastikan ketepatan waktu dalam penyelesaian konstruksi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasaran dan Penjualan: Mengelola pemasaran dan penjualan unit-unit rumah kepada calon pembeli.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain dan Perencanaan: Merancang desain rumah yang modern sesuai dengan permintaan calon pembeli.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konstruksi Rumah: Membangun unit-unit rumah dengan struktur yang kokoh dan berkualitas.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasangan Material Berkualitas: Memilih dan memasang material konstruksi yang berkualitas tinggi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemasaran dan Penjualan: Mengelola pemasaran dan penjualan unit-unit rumah kepada calon pembeli.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Waktu dan Anggaran: Memantau dan mengendalikan proyek agar sesuai dengan waktu dan anggaran yang ditentukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pelaporan dan Dokumentasi: Membuat laporan berkala tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk pemilik rumah yang telah membeli unit.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> gedung_4_lantai_dt_peduli() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Gedung 4 Lantai DT Peduli",
      "highlight":
          "Proyek ini melibatkan pembangunan gedung kantor DT Peduli 4 lantai dengan desain modern yang unik.",
      "description":
          "Proyek Pembangunan Gedung 4 Lantai DT Peduli adalah proyek pembangunan gedung kantor sebanyak empat lantai untuk DT Peduli. Gedung ini memiliki desain modern yang unik dan dirancang untuk memberikan fasilitas yang sesuai dengan kebutuhan perusahaan.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain Modern Unik: Menciptakan desain bangunan yang unik dan memenuhi ekspektasi perusahaan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Perizinan dan Regulasi: Mematuhi semua peraturan dan perizinan yang berkaitan dengan pembangunan gedung kantor.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemilihan Material: Memilih material konstruksi yang sesuai dengan desain modern dan berkualitas tinggi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Anggaran: Mengelola anggaran proyek dengan cermat untuk memastikan pemenuhan semua kebutuhan fasilitas kantor.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain dan Perencanaan: Merancang gedung kantor yang unik dan sesuai dengan kebutuhan DT Peduli.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konstruksi Gedung: Membangun gedung empat lantai dengan perencanaan struktural yang kuat.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Fasilitas Kantor: Menyediakan fasilitas kantor yang sesuai dengan kebutuhan perusahaan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kualitas Konstruksi: Memastikan kualitas konstruksi dengan pengujian berkala dan pengawasan ketat.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Perizinan dan Dokumentasi: Memproses semua perizinan yang diperlukan dan mendokumentasikan semua tahap pembangunan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga kondisi gedung yang baik setelah selesai dibangun.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> gedung_pesantren_masa_keemasan() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "Pembangunan Gedung Pesantren Masa Keemasan (PMK)",
      "highlight":
          "Proyek ini melibatkan pembangunan gedung 4 lantai yang diperuntukan bagi para manula untuk melakukan aktifitas belajar dan fasilitas asrama.",
      "description":
          "Proyek Pembangunan Gedung Pesantren Masa Keemasan (PMK) adalah proyek pembangunan gedung empat lantai yang diperuntukan bagi para manula untuk melakukan aktifitas belajar dan fasilitas asrama. Gedung ini dirancang untuk memberikan fasilitas yang nyaman dan inklusif bagi para penghuni.",
      "owner": "",
      "KONTAK": "",
      "mainImage":
          "$imageDir/model_images/construction_model_landscape_002.jpg",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain Inklusif: Merancang gedung yang inklusif dan ramah lansia dengan mempertimbangkan aksesibilitas dan fasilitas khusus.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Peraturan Bangunan: Mematuhi peraturan bangunan dan perizinan yang berkaitan dengan pembangunan fasilitas publik untuk manula.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kualitas Konstruksi: Memastikan kualitas konstruksi yang tinggi untuk gedung empat lantai dengan perencanaan struktural yang kuat.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kontrol Anggaran: Mengelola anggaran proyek dengan cermat untuk memastikan pemenuhan semua kebutuhan fasilitas.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {
            "poin":
                "Desain dan Perencanaan: Merancang gedung empat lantai dengan perencanaan yang inklusif dan memenuhi peraturan bangunan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Konstruksi Gedung: Membangun gedung empat lantai dengan struktur yang kuat dan aman untuk para manula.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Fasilitas Asrama: Menyediakan fasilitas asrama yang nyaman dan sesuai dengan kebutuhan penghuni.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kualitas Konstruksi: Memastikan kualitas konstruksi dengan pengujian berkala dan pengawasan ketat.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Perizinan dan Dokumentasi: Memproses semua perizinan yang diperlukan dan mendokumentasikan semua tahap pembangunan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga kondisi gedung yang baik setelah selesai dibangun.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
    };
  }

  static Map<String, dynamic> function1() {
    return {
      "dateStart": "Senin, 01 Oktober 2023",
      "dateEnd": "Senin, 01 Oktober 2023",
      "projectId": "",
      "name": "",
      "highlight": "",
      "description": "",
      "owner": "",
      "KONTAK": "",
      "mainImage": "",
      "mainImagePortrait": "",
      "imageListLandscape": [],
      "imageListPortrait": [],
      // ======================================== list 1
      "listOpt1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {"poin": "", "poinImage": "", "poinVideo": ""},
        ],
      },
      // ======================================== list 2
      "listOpt2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription": "",
        "list": [
          {"poin": "", "poinImage": "", "poinVideo": ""},
        ],
      },
    };
  }
}
