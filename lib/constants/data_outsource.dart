part of constants;

class DataOutsource {
  static const String imageDir = "assets/projects";
  static Map<String, List> myProjectsList = {
    'NAME': [outsourceRsai()],
    'IMAGE_MAIN': [outsourceRsai()['IMAGE_MAIN']],
    'IMAGE_MAIN_LANDSCAPE': [outsourceRsai()['IMAGE_MAIN_LANDSCAPE']],
    'IMAGE_MAIN_PORTRAIT': [outsourceRsai()['IMAGE_MAIN_PORTRAIT']],
    'PROJECT_NAME': [outsourceRsai()['PROJECT_NAME']],
    'HIGHLIGHT': [outsourceRsai()['HIGHLIGHT']]
  };
  static Map<String, dynamic> outsourceRsai() {
    return {
      'DATE_START': '01 Januari 2020',
      'DATE_END': '01 Januari 2020',
      'PROJECT_ID': 'outsource_rsai',
      'PROJECT_NAME': 'Outsource Helper RSAI Bandung',
      'HIGHLIGHT':
          'Menjaga kebersihan optimal di Rumah Sakit Al-Islam (RSAI) dengan pembersihan rutin, desinfeksi, penanganan limbah medis, dan koordinasi erat dengan tim medis.',
      'DESCRIPTION':
          'Proyek ini bertujuan untuk memberikan layanan cleaning service profesional di Rumah Sakit Al-Islam (RSAI) guna memastikan kebersihan dan sanitasi yang optimal. Pekerjaan cleaning service di RSAI adalah bagian integral dari menjaga standar kebersihan dan sanitasi yang tinggi di rumah sakit, dan itu sangat penting untuk mendukung kesehatan dan keselamatan pasien, staf medis, dan pengunjung.',
      'PROJECT_OWNER': 'RSAI',
      'KONTAK': '',
      'IMAGE_MAIN': '$imageDir/outsource_rsai/outsource_rsai_landscape_047.jpg',
      'IMAGE_MAIN_PORTRAIT':
          '$imageDir/outsource_rsai/outsource_rsai_portrait_002.jpg',
      'IMAGE_LIST_LANDSCAPE': [
        for (int i = 1; i <= 60; i++)
          '$imageDir/outsource_rsai/outsource_rsai_landscape_${i.toString().padLeft(3, '0')}.jpg',
      ],
      'IMAGE_LIST_PORTRAIT': [
        for (int i = 1; i <= 5; i++)
          '$imageDir/outsource_rsai/outsource_rsai_portrait_${i.toString().padLeft(3, '0')}.jpg',
      ],
      // ======================================== LIST 1
      'LIST_OPT_1': {
        'LIST_TITLE': 'Tantangan & Solusi',
        'LIST_DESCRIPTION':
            'Dalam pekerjaan cleaning service di rumah sakit, beberapa tantangan utama yang dihadapi adalah kontaminasi tinggi di ruang perawatan, volume limbah medis yang meningkat, koordinasi dengan staf medis, keadaan darurat kontaminasi, kebersihan area khusus seperti ruang operasi, penggunaan bahan kimia yang aman, pemeliharaan peralatan pembersih, dan pelaporan yang akurat. Solusi melibatkan jadwal pembersihan ketat, pengelolaan limbah medis yang cermat, komunikasi erat dengan staf medis, pelatihan dalam penanganan keadaan darurat, pematuhan protokol pembersihan area khusus, penggunaan bahan kimia yang sesuai, pemeliharaan rutin peralatan, dan pelaporan yang tepat waktu. Dengan demikian, tim cleaning service dapat menjaga standar kebersihan tinggi di rumah sakit sambil mengatasi berbagai tantangan yang ada.',
        'LIST': [
          {
            'POIN':
                "Kontaminasi Berpotensi Tinggi di Area Rawat Inap: Jadwal pembersihan yang ketat di ruang perawatan dan penggunaan peralatan desinfeksi untuk mengatasi risiko kontaminasi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Peningkatan Volume Limbah Medis: Pengelolaan yang cermat dan aman terhadap limbah medis sesuai dengan regulasi yang berlaku untuk meminimalkan risiko penularan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Koordinasi dengan Staf Medis: Komunikasi aktif dan kolaborasi dengan staf medis untuk merencanakan jadwal pembersihan yang tidak mengganggu pasien dan perawatan medis.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Keadaan Darurat Kontaminasi: Pelatihan dan peralatan khusus untuk merespons keadaan darurat yang melibatkan bahan berbahaya atau kontaminasi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kebersihan Area Khusus seperti Ruang Operasi: Pematuhan terhadap protokol ketat dalam pembersihan area-area khusus untuk memastikan sterilisasi yang tepat.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penggunaan Bahan Kimia yang Aman: Penggunaan bahan kimia yang sesuai dan aman, serta pemahaman yang baik tentang penggunaannya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Peralatan Pembersih: Pemeliharaan rutin dan pemeriksaan peralatan pembersih untuk memastikan ketersediaan peralatan yang berfungsi dengan baik.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pelaporan dan Dokumentasi yang Akurat: Pelaporan yang tepat waktu dan dokumen yang akurat untuk memantau kualitas layanan dan memenuhi standar regulasi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      // ======================================== LIST 2
      'LIST_OPT_2': {
        'LIST_TITLE': 'Lingkup Pekerjaan',
        'LIST_DESCRIPTION':
            'Pekerjaan Proyek Cleaning Service di Rumah Sakit Al-Islam (RSAI) adalah tugas yang melibatkan tim professional untuk menjaga kebersihan dan sanitasi optimal di seluruh area rumah sakit. Mereka melakukan pembersihan rutin harian, desinfeksi berkala, serta pengelolaan limbah medis dengan aman. Area khusus seperti ruang operasi diperlakukan dengan ketat dalam hal kebersihan. Tim cleaning service juga harus siap merespons keadaan darurat dan berkoordinasi dengan tim medis. Penggunaan peralatan pembersih yang aman dan perawatan peralatan adalah bagian penting dari pekerjaan ini. Semua tindakan mereka didokumentasikan untuk pemantauan kualitas dan keselamatan. Pekerjaan ini sangat penting untuk menjaga standar kualitas dalam pelayanan kesehatan di RSAI.',
        'LIST': [
          {
            'POIN':
                "Pembersihan Rutin: Tim akan melakukan pembersihan rutin harian untuk menjaga kebersihan seluruh area di RSAI, termasuk ruang perawatan, koridor, ruang tunggu, dan fasilitas umum lainnya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Desinfeksi: Selain pembersihan, tim juga akan melaksanakan desinfeksi secara berkala. Ini melibatkan penggunaan bahan-bahan desinfektan yang efektif untuk menghilangkan kuman dan mikroorganisme yang berpotensi membahayakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penanganan Limbah Medis: Tim akan mengelola dengan cermat dan aman limbah medis yang dihasilkan oleh rumah sakit, termasuk peralatan medis sekali pakai, jarum suntik, dan limbah biomedis lainnya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pengelolaan Area Khusus: Beberapa area di RSAI, seperti ruang operasi, perlu perhatian khusus dalam hal kebersihan dan sterilisasi. Tim akan mengikuti protokol ketat dalam pembersihan area ini.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penanganan Darurat: Tim cleaning service harus siap untuk merespons kejadian darurat yang melibatkan penanganan bahan berbahaya atau kontaminasi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kerja Sama dengan Tim Medis: Mereka akan berkoordinasi dengan staf medis RSAI untuk menjadwalkan pembersihan yang tepat agar tidak mengganggu pasien dan staf medis.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penggunaan Peralatan Pembersih: Tim akan menggunakan peralatan pembersih dan bahan kimia yang sesuai serta aman untuk lingkungan rumah sakit.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan dan Perawatan Peralatan: Merawat dan memeriksa peralatan pembersih secara teratur untuk memastikan mereka selalu dalam kondisi kerja yang optimal.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pelaporan dan Dokumentasi: Tim akan mencatat semua pekerjaan yang dilakukan, termasuk pembersihan khusus, kejadian kontaminasi, dan penggunaan bahan kimia. Informasi ini penting untuk pemantauan kualitas dan audit.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      'LIST_OPT_3': {
        'LIST_TITLE': 'Mitra Kerja & Vendor',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {'POIN': "", 'POIN_IMAGE': '', 'POIN_VIDEO': ''},
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
}
