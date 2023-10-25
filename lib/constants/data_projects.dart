part of constants;

class DataProjects {
  static const String imageDir = "assets/projects";
  static Map<String, List> myProjectsList = {
    'NAME': [
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
    'IMAGE_MAIN': [
      masjidCianjur()['IMAGE_MAIN'],
      cluster_budi_asri()['IMAGE_MAIN'],
      stai_daarut_tauhiid()['IMAGE_MAIN'],
      dome_eco_pesantren()['IMAGE_MAIN'],
      masjid_daarut_tauhiid()['IMAGE_MAIN'],
      masjid_besar_ciparay()['IMAGE_MAIN'],
      perbaikan_masjid_cipaku()['IMAGE_MAIN'],
      rumah_santri_karya_daarut_tauhiid()['IMAGE_MAIN'],
      rumah_graha_bukit_raya()['IMAGE_MAIN'],
      gedung_4_lantai_dt_peduli()['IMAGE_MAIN'],
      gedung_pesantren_masa_keemasan()['IMAGE_MAIN']
    ],
    'IMAGE_MAIN_LANDSCAPE': [
      masjidCianjur()['IMAGE_MAIN_LANDSCAPE'],
      cluster_budi_asri()['IMAGE_MAIN_LANDSCAPE'],
      stai_daarut_tauhiid()['IMAGE_MAIN_LANDSCAPE'],
      dome_eco_pesantren()['IMAGE_MAIN_LANDSCAPE'],
      masjid_daarut_tauhiid()['IMAGE_MAIN_LANDSCAPE'],
      masjid_besar_ciparay()['IMAGE_MAIN_LANDSCAPE'],
      perbaikan_masjid_cipaku()['IMAGE_MAIN_LANDSCAPE'],
      rumah_santri_karya_daarut_tauhiid()['IMAGE_MAIN_LANDSCAPE'],
      rumah_graha_bukit_raya()['IMAGE_MAIN_LANDSCAPE'],
      gedung_4_lantai_dt_peduli()['IMAGE_MAIN_LANDSCAPE'],
      gedung_pesantren_masa_keemasan()['IMAGE_MAIN_LANDSCAPE']
    ],
    'IMAGE_MAIN_PORTRAIT': [
      masjidCianjur()['IMAGE_MAIN_PORTRAIT'],
      cluster_budi_asri()['IMAGE_MAIN_PORTRAIT'],
      stai_daarut_tauhiid()['IMAGE_MAIN_PORTRAIT'],
      dome_eco_pesantren()['IMAGE_MAIN_PORTRAIT'],
      masjid_daarut_tauhiid()['IMAGE_MAIN_PORTRAIT'],
      masjid_besar_ciparay()['IMAGE_MAIN_PORTRAIT'],
      perbaikan_masjid_cipaku()['IMAGE_MAIN_PORTRAIT'],
      rumah_santri_karya_daarut_tauhiid()['IMAGE_MAIN_PORTRAIT'],
      rumah_graha_bukit_raya()['IMAGE_MAIN_PORTRAIT'],
      gedung_4_lantai_dt_peduli()['IMAGE_MAIN_PORTRAIT'],
      gedung_pesantren_masa_keemasan()['IMAGE_MAIN_PORTRAIT']
    ],
    'PROJECT_NAME': [
      masjidCianjur()['PROJECT_NAME'],
      cluster_budi_asri()['PROJECT_NAME'],
      stai_daarut_tauhiid()['PROJECT_NAME'],
      dome_eco_pesantren()['PROJECT_NAME'],
      masjid_daarut_tauhiid()['PROJECT_NAME'],
      masjid_besar_ciparay()['PROJECT_NAME'],
      perbaikan_masjid_cipaku()['PROJECT_NAME'],
      rumah_santri_karya_daarut_tauhiid()['PROJECT_NAME'],
      rumah_graha_bukit_raya()['PROJECT_NAME'],
      gedung_4_lantai_dt_peduli()['PROJECT_NAME'],
      gedung_pesantren_masa_keemasan()['PROJECT_NAME']
    ],
    'HIGHLIGHT': [
      masjidCianjur()['HIGHLIGHT'],
      cluster_budi_asri()['HIGHLIGHT'],
      stai_daarut_tauhiid()['HIGHLIGHT'],
      dome_eco_pesantren()['HIGHLIGHT'],
      masjid_daarut_tauhiid()['HIGHLIGHT'],
      masjid_besar_ciparay()['HIGHLIGHT'],
      perbaikan_masjid_cipaku()['HIGHLIGHT'],
      rumah_santri_karya_daarut_tauhiid()['HIGHLIGHT'],
      rumah_graha_bukit_raya()['HIGHLIGHT'],
      gedung_4_lantai_dt_peduli()['HIGHLIGHT'],
      gedung_pesantren_masa_keemasan()['HIGHLIGHT']
    ]
  };

  static Map<String, dynamic> masjidCianjur() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': 'masjid_cianjur',
      'PROJECT_NAME': 'Proyek Rekonstruksi Masjid Cianjur',
      'HIGHLIGHT':
          'Pemulihan dan Rekonstruksi Masjid-masjid yang Terdampak Gempa',
      'DESCRIPTION':
          'Proyek ini bertujuan untuk membangun kembali masjid-masjid yang mengalami kerusakan serius akibat gempa di Cianjur. Kami berkomitmen untuk mengembalikan tempat ibadah yang aman dan nyaman bagi masyarakat setempat. Bantu kami mendukung rekonstruksi ini untuk memulihkan kehidupan masyarakat yang terdampak gempa.',
      'PROJECT_OWNER': 'Masyarakat Kota Cianjur',
      'KONTAK': '',
      'IMAGE_MAIN': '$imageDir/masjid_cianjur/masjid_cianjur_landscape_047.jpg',
      'IMAGE_MAIN_PORTRAIT':
          '$imageDir/masjid_cianjur/masjid_cianjur_portrait_127.jpg',
      'IMAGE_LIST_LANDSCAPE': [
        for (int i = 1; i <= 241; i++)
          '$imageDir/masjid_cianjur/masjid_cianjur_landscape_${i.toString().padLeft(3, '0')}.jpg',
      ],
      'IMAGE_LIST_PORTRAIT': [
        for (int i = 1; i <= 152; i++)
          '$imageDir/masjid_cianjur/masjid_cianjur_portrait_${i.toString().padLeft(3, '0')}.jpg',
      ],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION':
            'Proyek rekonstruksi masjid-masjid di Cianjur dihadapkan pada sejumlah tantangan serius, yang memerlukan solusi kreatif dan efisien. Berikut adalah gambaran tantangan dan solusi yang kami tawarkan:',
        'LIST': [
          {
            'POIN':
                "Tantangan: Kondisi jalan rusak - Akses ke lokasi proyek sangat sulit karena jalan rusak parah. Solusi: Kami menggunakan mobil yang disediakan oleh klien kami untuk dapat mengantarkan barang dan material bangunan, sehingga memastikan pasokan terus berjalan lancar meskipun kondisi jalan sulit.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Tantangan: Kerusakan wilayah - Gempa telah merusak sebagian besar wilayah, menyebabkan kesulitan dalam distribusi barang dan material. Solusi: Kami melakukan survei wilayah dengan teliti dan merencanakan rute terbaik untuk distribusi. Selain itu, kami bekerja sama dengan otoritas lokal untuk memperbaiki infrastruktur yang rusak.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Tantangan: Fasilitas kerja terbatas - Kami menghadapi kesulitan dalam menyediakan fasilitas kerja yang memadai di lokasi proyek. Solusi: Kami mendirikan kemah proyek yang dilengkapi dengan fasilitas lengkap untuk tim kami, termasuk tempat tinggal, dapur, dan area istirahat, sehingga tim kami dapat bekerja dengan efisien.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN': "Tantangan lainnya: ... - Solusi: ...",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION':
            'Lingkup pekerjaan ini mencakup berbagai tahapan dari survei lapangan hingga tahap finishing bangunan dalam proyek rekonstruksi masjid-masjid di Cianjur yang terdampak gempa.',
        'LIST': [
          {
            'POIN':
                "Survei Lapangan: Tim survei lapangan akan mengidentifikasi kerusakan pada masjid-masjid yang terkena dampak gempa, termasuk tingkat kerusakan dan kondisi struktur. Data ini akan menjadi dasar perencanaan rekonstruksi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pekerjaan Awal: Tahap ini melibatkan pemindahan material puing, pemagaran area, dan persiapan lahan. Selain itu, perizinan dan perencanaan teknis juga dilakukan pada tahap awal proyek.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pekerjaan Pembersihan: Pembersihan area rekonstruksi merupakan hal yang cukup sulit untuk dilakukan karena area menerima dampak kerusakan yang serius. Tim akan membersihkan puing, bahan berbahaya, dan mempersiapkan lahan untuk pembangunan kembali.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pembangunan Struktur: Tahap ini melibatkan konstruksi kembali bangunan masjid yang rusak. Ini mencakup pekerjaan pondasi, struktur utama, atap, dinding, dan fitur interior seperti lantai dan dinding dalam.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pekerjaan Finishing: Setelah pembangunan struktur selesai, tahap ini mencakup pekerjaan finishing seperti pengecatan, pemasangan lantai, dinding dalam, langit-langit, dan fitur-fitur dekoratif.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasangan Peralatan dan Perabotan: Dalam tahap ini, peralatan ibadah seperti mihrab, mimbar, lampu, serta perabotan seperti karpet dan kursi akan dipasang sesuai kebutuhan dan desain yang telah ditetapkan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Uji Coba dan Pemeriksaan Akhir: Sebelum masjid digunakan kembali, dilakukan uji coba dan pemeriksaan akhir untuk memastikan semua sistem, instalasi, dan keamanan memenuhi standar yang ditetapkan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      'LIST_OPT_3': {
        'LIST_TITLE': 'Mitra Kerja & Vendor',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "CV. Bersama: CV. Bersama adalah sebuah perusahaan yang bergerak dalam bidang Perencana Pembangunan Gedung dan Pengawas Pelaksanaan Konstruksi Bangunan. Perusahaan ini memiliki komitmen kuat untuk memberikan layanan berkualitas tinggi dalam perencanaan, perancangan, dan pengawasan pelaksanaan konstruksi bangunan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      'LIST_OPT_4': {
        'LIST_TITLE': 'Testimoni Klien',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {'POIN': "", 'POIN_IMAGE': '', 'POIN_VIDEO': ''},
        ],
      },
    };
  }

  static Map<String, dynamic> cluster_budi_asri() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Cluster Budi Asri',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan 12 rumah di Cimahi Utara dengan konsep rumah minimalis untuk membentuk sebuah Cluster hunian yang modern dan nyaman.',
      'DESCRIPTION':
          'Proyek Pembangunan Rumah Budi Asri adalah proyek pembangunan 12 rumah yang terletak di daerah Cimahi Utara. Proyek ini dirancang untuk membentuk sebuah Cluster dengan konsep rumah minimalis, menciptakan lingkungan hunian yang nyaman dan modern bagi para pemilik rumah.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN': '$imageDir/cluster_budi_asri/cluster_budi_asri_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [
        for (int i = 1; i <= 241; i++)
          '$imageDir/cluster_budi_asri/cluster_budi_asri_${i.toString().padLeft(3, '0')}.jpg',
      ],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Topografi Daerah: Daerah Cimahi Utara memiliki topografi yang tidak rata, sehingga memerlukan perataan lahan yang cermat. Melakukan survei topografi awal dan merancang penyesuaian lahan yang tepat dengan memanfaatkan teknik perataan dan penguatan lahan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Izin dan Regulasi: Mendapatkan izin konstruksi dan mematuhi peraturan daerah yang ketat. Mempekerjakan tim ahli hukum dan mengkomunikasikan dengan pihak berwenang untuk memastikan semua persyaratan izin terpenuhi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pasokan Material: Memastikan ketersediaan material konstruksi yang cukup untuk proyek dengan ukuran besar. Menyusun perencanaan logistik yang efisien, berkolaborasi dengan pemasok terpercaya, dan memiliki cadangan material.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Cuaca Ekstrem: Cuaca buruk dapat memperlambat kemajuan proyek. Menerapkan jadwal yang fleksibel, memiliki penutupan sementara untuk melindungi pekerjaan dari cuaca ekstrem, dan merencanakan aktivitas dalam jangka waktu yang lebih panjang.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Penggalian dan Persiapan Lahan: Mengekavasi dan meratakan lahan sesuai dengan rencana.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Struktur Bangunan: Membangun pondasi, struktur utama, dan kerangka rumah.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Finishing Interior dan Eksterior: Melakukan pemasangan bahan finishing seperti dinding, lantai, atap, dan penyelesaian interior seperti perabotan dan perangkat kamar mandi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Infrastruktur Cluster: Membangun infrastruktur cluster seperti jalan, taman, dan sistem keamanan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kualitas dan Pengujian: Melakukan pengujian berkala untuk memastikan kualitas bangunan dan kelengkapan infrastruktur.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Izin dan Dokumentasi: Memproses semua izin dan dokumen yang diperlukan selama dan setelah konstruksi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasaran dan Penjualan: Mengelola pemasaran dan penjualan rumah-rumah dalam cluster kepada calon pembeli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian kepada pemilik rumah yang telah membeli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> stai_daarut_tauhiid() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Gedung Pendidikan STAI Daarut Tauhiid',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan gedung pendidikan 5 lantai untuk Sekolah Tinggi Agama Islam Daarut Tauhiid, menciptakan fasilitas modern bagi mahasiswa.',
      'DESCRIPTION':
          'Proyek Pembangunan Gedung Pendidikan STAI Daarut Tauhiid adalah proyek konstruksi yang bertujuan membangun gedung pendidikan 5 lantai untuk kampus STAI Daarut Tauhiid. Gedung ini dirancang untuk menyediakan fasilitas pendidikan yang modern dan fungsional bagi mahasiswa, menciptakan lingkungan belajar yang berkualitas.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN': '$imageDir/stai/stai_022.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [
        for (int i = 1; i <= 241; i++)
          '$imageDir/stai/stai_${i.toString().padLeft(3, '0')}.jpg',
      ],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Kebutuhan Fasilitas Pendidikan yang Komprehensif: Memastikan semua fasilitas pendidikan yang dibutuhkan seperti ruang kelas, perpustakaan, dan laboratorium memenuhi standar pendidikan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kualitas Konstruksi yang Tinggi: Memastikan kualitas konstruksi yang tinggi untuk daya tahan jangka panjang.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Aksesibilitas: Membangun gedung yang mudah diakses oleh mahasiswa, termasuk yang memerlukan aksesibilitas khusus.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan dan Lingkungan: Memperhatikan faktor keamanan gedung dan praktik lingkungan yang sesuai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Penggalian dan Persiapan Lahan: Mengekavasi dan meratakan lahan sesuai dengan rencana.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Struktur Bangunan: Membangun pondasi, struktur utama, dan kerangka gedung pendidikan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Finishing Interior dan Eksterior: Melakukan pemasangan bahan finishing seperti dinding, lantai, atap, dan penyelesaian interior seperti perabotan dan perangkat kamar mandi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Infrastruktur Kampus: Membangun infrastruktur kampus seperti jalan, taman, dan sistem keamanan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kualitas dan Pengujian: Melakukan pengujian berkala untuk memastikan kualitas bangunan dan kelengkapan infrastruktur.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Izin dan Dokumentasi: Memproses semua izin dan dokumen yang diperlukan selama dan setelah konstruksi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian kepada pemilik gedung.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> dome_eco_pesantren() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Dome Eco Pesantren',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan Dome di Eco Pesantren yang akan diperuntukan menjadi lapangan indoor pesantren di Kab. Bandung Barat.',
      'DESCRIPTION':
          'Proyek Pembangunan Dome Eco Pesantren adalah proyek konstruksi yang bertujuan membangun Dome di Eco Pesantren, yang akan diperuntukan menjadi lapangan indoor pesantren di Kab. Bandung Barat. Dome ini akan menjadi fasilitas yang berharga untuk aktivitas olahraga dan kegiatan pesantren.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Perencanaan Desain yang Tepat: Memastikan desain Dome sesuai dengan kebutuhan pesantren dan aktivitas olahraga yang akan dilakukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penggunaan Material yang Ramah Lingkungan: Memilih material konstruksi yang ramah lingkungan sesuai dengan prinsip pesantren eco-friendly.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pengelolaan Sumber Daya Energi: Memaksimalkan penggunaan sumber daya energi terbarukan dalam operasional Dome.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan Konstruksi: Memastikan keamanan selama proses pembangunan Dome, terutama dalam hal pengerjaan struktur atap.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain dan Perencanaan: Merancang desain Dome yang sesuai dengan kebutuhan pesantren dan aktivitas olahraga.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konstruksi Dome: Membangun struktur Dome yang kuat, termasuk atap dan fasilitas terkait.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasangan Material Ramah Lingkungan: Memilih dan memasang material konstruksi yang ramah lingkungan, seperti material atap yang dapat memanfaatkan energi matahari.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Infrastruktur Pesantren: Membangun infrastruktur di sekitar Dome, seperti akses jalan dan fasilitas pendukung.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penggunaan Sumber Daya Energi Terbarukan: Memasang panel surya dan teknologi energi terbarukan untuk meminimalkan konsumsi energi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan Proyek: Menyusun rencana keamanan yang komprehensif untuk menjaga keamanan selama proses konstruksi Dome.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan dan perawatan Dome untuk menjaga keberlanjutan fasilitas.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> masjid_daarut_tauhiid() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Masjid Daarut Tauhiid',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan masjid Daarut Tauhiid yang akan menjadi salah satu ikon dari pesantren Daarut Tauhiid karena memiliki desain modern.',
      'DESCRIPTION':
          'Proyek Pembangunan Masjid Daarut Tauhiid adalah proyek konstruksi yang bertujuan membangun masjid yang akan menjadi salah satu ikon dari pesantren Daarut Tauhiid. Masjid ini memiliki desain yang modern dan unik, menciptakan tempat ibadah yang indah dan fungsional.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain yang Rumit: Membangun masjid dengan desain modern memerlukan perencanaan yang cermat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penggunaan Material Kualitas Tinggi: Untuk mencapai estetika yang tinggi, diperlukan penggunaan material berkualitas tinggi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pengembangan Lokasi: Pembangunan masjid ini dapat memerlukan pengembangan infrastruktur dan fasilitas di sekitarnya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan Proyek: Memastikan keamanan baik untuk pekerja maupun pengunjung selama konstruksi dan setelahnya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain dan Perencanaan: Merancang desain masjid yang modern dan unik dan menyusun perencanaan konstruksi yang detail.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konstruksi Masjid: Membangun bangunan masjid, termasuk struktur utama, kubah, dan menara.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Fasilitas dan Interior: Memasang fasilitas dalam masjid seperti mihrab, mimbar, karpet, dan pencahayaan yang indah.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemandangan dan Lanskap: Merancang pemandangan dan lanskap di sekitar masjid untuk menciptakan lingkungan yang indah dan damai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Infrastruktur: Memastikan aksesibilitas yang baik ke masjid dengan membangun jalan akses, tempat parkir, dan fasilitas penunjang lainnya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasangan Material Berkualitas Tinggi: Memilih dan memasang material konstruksi yang berkualitas tinggi seperti marmer dan batu.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan Proyek dan Pekerja: Menyusun rencana keamanan yang komprehensif, memasang sistem keamanan yang canggih, dan memberikan pelatihan keamanan kepada pekerja.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan dan perawatan untuk menjaga masjid tetap dalam kondisi yang baik setelah penyelesaian proyek.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> masjid_besar_ciparay() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Masjid Besar Ciparay',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan Masjid Besar Kota Ciparay, yang pada akhirnya menjadi masjid ikon kota Ciparay karena desainnya yang mirip dengan Taj Mahal.',
      'DESCRIPTION':
          'Proyek Pembangunan Masjid Besar Ciparay adalah proyek konstruksi yang bertujuan membangun masjid besar yang akan menjadi ikon kota Ciparay. Masjid ini memiliki desain yang khas, mirip dengan Taj Mahal, menciptakan tempat ibadah yang megah dan indah.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain yang Rumit: Membangun masjid dengan desain yang rumit dan mirip dengan Taj Mahal memerlukan keahlian desain dan konstruksi yang tinggi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penggunaan Material Kualitas Tinggi: Untuk mencapai estetika yang tinggi, diperlukan penggunaan material berkualitas tinggi seperti marmer dan batu.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan Konstruksi: Memastikan keamanan selama proses pembangunan, terutama dalam hal pengerjaan struktur atap yang kompleks.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Waktu dan Anggaran: Mengelola proyek dengan efisien sesuai waktu dan anggaran yang tersedia.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain dan Perencanaan: Merancang desain yang rumit dan memastikan bahwa semua detail sesuai dengan Taj Mahal.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konstruksi Masjid: Membangun struktur masjid yang megah, termasuk menara dan kubah yang mengesankan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasangan Material Berkualitas Tinggi: Memilih dan memasang material konstruksi yang berkualitas tinggi seperti marmer dan batu alam.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keamanan Konstruksi: Menyusun rencana keamanan yang komprehensif untuk menjaga keamanan selama proses konstruksi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Waktu dan Anggaran: Memantau dan mengendalikan proyek agar sesuai dengan waktu dan anggaran yang ditentukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pelaporan dan Dokumentasi: Membuat laporan berkala tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga masjid dalam kondisi yang baik setelah selesai dibangun.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> perbaikan_masjid_cipaku() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Perbaikan Masjid Daarut Tauhiid Cipaku, Jakarta',
      'HIGHLIGHT':
          'Proyek ini melibatkan perbaikan masjid Daarut Tauhiid yang berlokasi di Cipaku, Jakarta, untuk memastikan kondisi dan fasilitas masjid tetap terjaga.',
      'DESCRIPTION':
          'Proyek Perbaikan Masjid Daarut Tauhiid di Cipaku, Jakarta adalah proyek perbaikan dan pemeliharaan masjid yang berlokasi di Cipaku, Jakarta. Tujuan proyek ini adalah memastikan kondisi dan fasilitas masjid tetap terjaga dengan baik, sehingga pelayanan keagamaan dapat berjalan lancar.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Pemeliharaan Struktur dan Fasilitas: Menjaga kondisi bangunan dan fasilitas masjid yang sudah ada dengan perbaikan yang diperlukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemenuhan Standar Keamanan: Memastikan bahwa masjid memenuhi standar keamanan yang diperlukan dalam situasi darurat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konservasi dan Restorasi: Melakukan konservasi dan restorasi pada elemen-elemen bersejarah dalam masjid.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Waktu dan Anggaran Terbatas: Mengelola proyek dengan efisien sesuai waktu dan anggaran yang tersedia.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Pemeriksaan dan Evaluasi: Melakukan pemeriksaan dan evaluasi kondisi masjid untuk menentukan perbaikan yang diperlukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Perbaikan Struktur: Melakukan perbaikan pada struktur bangunan yang rusak atau lemah.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemulihan Fasilitas: Memulihkan fasilitas seperti perabotan, pencahayaan, dan audio visual.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Peningkatan Keamanan: Memasang sistem keamanan yang lebih baik, termasuk alarm kebakaran dan pemadam kebakaran.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konservasi Warisan: Melakukan konservasi pada elemen-elemen bersejarah dalam masjid, seperti ukiran dan kaligrafi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Waktu dan Anggaran: Memantau dan mengendalikan proyek agar sesuai dengan waktu dan anggaran yang ditentukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pelaporan dan Dokumentasi: Membuat laporan berkala tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga masjid dalam kondisi yang baik setelah perbaikan selesai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> rumah_santri_karya_daarut_tauhiid() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Unit Rumah Santri Karya Daarut Tauhiid',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan unit-unit rumah di pegunungan Eco Pesantren Kab. Bandung Barat dengan konsep rumah minimalis Islami untuk kebutuhan santri Daarut Tauhiid.',
      'DESCRIPTION':
          'Proyek Pembangunan Unit Rumah Santri Karya Daarut Tauhiid adalah proyek pembangunan unit-unit rumah yang terletak di pegunungan Eco Pesantren Kab. Bandung Barat. Rumah-rumah ini dirancang dengan konsep rumah minimalis Islami untuk memenuhi kebutuhan santri Daarut Tauhiid.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Kondisi Pegunungan: Menghadapi kondisi geografis di pegunungan yang dapat menghambat proses konstruksi. Memanfaatkan teknik konstruksi yang sesuai dengan kondisi pegunungan dan perlindungan lingkungan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kebutuhan Santri: Memahami kebutuhan khusus santri dalam rumah minimalis Islami. Merancang rumah-rumah dengan fasilitas yang sesuai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemilihan Material: Memilih material yang ramah lingkungan dan sesuai dengan prinsip rumah Islami.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Biaya: Memantau dan mengendalikan biaya agar sesuai dengan anggaran yang tersedia.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Pembangunan di Pegunungan: Membangun rumah-rumah di lingkungan pegunungan yang memerlukan teknik konstruksi khusus.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Desain Rumah Islami: Merancang rumah-rumah dengan prinsip-prinsip desain rumah Islami, termasuk fasilitas seperti ruang ibadah dan tata letak yang sesuai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemilihan Material Ramah Lingkungan: Memilih material konstruksi yang ramah lingkungan dan sesuai dengan nilai-nilai Islami.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Biaya: Mengelola anggaran dengan cermat dan memastikan semua pekerjaan sesuai dengan rencana anggaran.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pelaporan dan Dokumentasi: Membuat laporan tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk pemilik rumah yang telah membeli unit.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> rumah_graha_bukit_raya() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Unit Rumah Graha Bukit Raya',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan unit-unit rumah di Graha Bukit Raya, Kab. Bandung Barat, dengan konsep rumah modern untuk menciptakan hunian yang nyaman dan fungsional.',
      'DESCRIPTION':
          'Proyek Pembangunan Unit Rumah Graha Bukit Raya adalah proyek pembangunan unit-unit rumah yang terletak di Graha Bukit Raya, Kab. Bandung Barat. Proyek ini dirancang dengan konsep rumah modern untuk menciptakan hunian yang nyaman dan fungsional bagi pemilik rumah.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain Hunian Modern: Menciptakan desain hunian modern yang sesuai dengan kebutuhan dan ekspektasi calon pembeli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemilihan Material: Memilih material konstruksi yang berkualitas dan sesuai dengan konsep rumah modern.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Ketepatan Waktu: Mengelola proyek untuk memastikan ketepatan waktu dalam penyelesaian konstruksi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasaran dan Penjualan: Mengelola pemasaran dan penjualan unit-unit rumah kepada calon pembeli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain dan Perencanaan: Merancang desain rumah yang modern sesuai dengan permintaan calon pembeli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konstruksi Rumah: Membangun unit-unit rumah dengan struktur yang kokoh dan berkualitas.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasangan Material Berkualitas: Memilih dan memasang material konstruksi yang berkualitas tinggi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasaran dan Penjualan: Mengelola pemasaran dan penjualan unit-unit rumah kepada calon pembeli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Waktu dan Anggaran: Memantau dan mengendalikan proyek agar sesuai dengan waktu dan anggaran yang ditentukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pelaporan dan Dokumentasi: Membuat laporan berkala tentang perkembangan proyek dan mendokumentasikan semua pekerjaan yang telah dilakukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk pemilik rumah yang telah membeli unit.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> gedung_4_lantai_dt_peduli() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Gedung 4 Lantai DT Peduli',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan gedung kantor DT Peduli 4 lantai dengan desain modern yang unik.',
      'DESCRIPTION':
          'Proyek Pembangunan Gedung 4 Lantai DT Peduli adalah proyek pembangunan gedung kantor sebanyak empat lantai untuk DT Peduli. Gedung ini memiliki desain modern yang unik dan dirancang untuk memberikan fasilitas yang sesuai dengan kebutuhan perusahaan.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain Modern Unik: Menciptakan desain bangunan yang unik dan memenuhi ekspektasi perusahaan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Perizinan dan Regulasi: Mematuhi semua peraturan dan perizinan yang berkaitan dengan pembangunan gedung kantor.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemilihan Material: Memilih material konstruksi yang sesuai dengan desain modern dan berkualitas tinggi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Anggaran: Mengelola anggaran proyek dengan cermat untuk memastikan pemenuhan semua kebutuhan fasilitas kantor.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain dan Perencanaan: Merancang gedung kantor yang unik dan sesuai dengan kebutuhan DT Peduli.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konstruksi Gedung: Membangun gedung empat lantai dengan perencanaan struktural yang kuat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Fasilitas Kantor: Menyediakan fasilitas kantor yang sesuai dengan kebutuhan perusahaan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kualitas Konstruksi: Memastikan kualitas konstruksi dengan pengujian berkala dan pengawasan ketat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Perizinan dan Dokumentasi: Memproses semua perizinan yang diperlukan dan mendokumentasikan semua tahap pembangunan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga kondisi gedung yang baik setelah selesai dibangun.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> gedung_pesantren_masa_keemasan() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': 'Pembangunan Gedung Pesantren Masa Keemasan (PMK)',
      'HIGHLIGHT':
          'Proyek ini melibatkan pembangunan gedung 4 lantai yang diperuntukan bagi para manula untuk melakukan aktifitas belajar dan fasilitas asrama.',
      'DESCRIPTION':
          'Proyek Pembangunan Gedung Pesantren Masa Keemasan (PMK) adalah proyek pembangunan gedung empat lantai yang diperuntukan bagi para manula untuk melakukan aktifitas belajar dan fasilitas asrama. Gedung ini dirancang untuk memberikan fasilitas yang nyaman dan inklusif bagi para penghuni.',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN':
          '$imageDir/model_images/construction_model_landscape_002.jpg',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain Inklusif: Merancang gedung yang inklusif dan ramah lansia dengan mempertimbangkan aksesibilitas dan fasilitas khusus.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Peraturan Bangunan: Mematuhi peraturan bangunan dan perizinan yang berkaitan dengan pembangunan fasilitas publik untuk manula.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kualitas Konstruksi: Memastikan kualitas konstruksi yang tinggi untuk gedung empat lantai dengan perencanaan struktural yang kuat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kontrol Anggaran: Mengelola anggaran proyek dengan cermat untuk memastikan pemenuhan semua kebutuhan fasilitas.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {
            'POIN':
                "Desain dan Perencanaan: Merancang gedung empat lantai dengan perencanaan yang inklusif dan memenuhi peraturan bangunan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Konstruksi Gedung: Membangun gedung empat lantai dengan struktur yang kuat dan aman untuk para manula.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Fasilitas Asrama: Menyediakan fasilitas asrama yang nyaman dan sesuai dengan kebutuhan penghuni.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kualitas Konstruksi: Memastikan kualitas konstruksi dengan pengujian berkala dan pengawasan ketat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Perizinan dan Dokumentasi: Memproses semua perizinan yang diperlukan dan mendokumentasikan semua tahap pembangunan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Pasca-Penyelesaian: Menyediakan layanan pemeliharaan pasca-penyelesaian untuk menjaga kondisi gedung yang baik setelah selesai dibangun.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> function1() {
    return {
      'DATE_START': 'Senin, 01 Oktober 2023',
      'DATE_END': 'Senin, 01 Oktober 2023',
      'PROJECT_ID': '',
      'PROJECT_NAME': '',
      'HIGHLIGHT': '',
      'DESCRIPTION': '',
      'PROJECT_OWNER': '',
      'KONTAK': '',
      'IMAGE_MAIN': '',
      'IMAGE_MAIN_PORTRAIT': '',
      'IMAGE_LIST_LANDSCAPE': [],
      'IMAGE_LIST_PORTRAIT': [],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {'POIN': "", 'POIN_IMAGE': '', 'POIN_VIDEO': ''},
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {'POIN': "", 'POIN_IMAGE': '', 'POIN_VIDEO': ''},
        ],
      },
    };
  }
}
