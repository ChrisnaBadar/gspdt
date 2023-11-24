part of constants;

class DataOutsource {
  static const String imageDir = "assets/projects";
  static Map<String, List> myProjectsList = {
    "NAME": [outsourceRsai()],
    "IMAGE_MAIN": [outsourceRsai()["IMAGE_MAIN"]],
    "IMAGE_MAIN_LANDSCAPE": [outsourceRsai()["IMAGE_MAIN_LANDSCAPE"]],
    "IMAGE_MAIN_PORTRAIT": [outsourceRsai()["IMAGE_MAIN_PORTRAIT"]],
    "PROJECT_NAME": [outsourceRsai()["PROJECT_NAME"]],
    "HIGHLIGHT": [outsourceRsai()["HIGHLIGHT"]]
  };
  static Map<String, dynamic> outsourceRsai() {
    return {
      "DATE_START": "01 Januari 2020",
      "DATE_END": "01 Januari 2020",
      "PROJECT_ID": "outsource_rsai",
      "PROJECT_NAME": "Outsource Helper RSAI Bandung",
      "HIGHLIGHT":
          "Menjaga kebersihan optimal di Rumah Sakit Al-Islam (RSAI) dengan pembersihan rutin, desinfeksi, penanganan limbah medis, dan koordinasi erat dengan tim medis.",
      "DESCRIPTION":
          "Proyek ini bertujuan untuk memberikan layanan cleaning service profesional di Rumah Sakit Al-Islam (RSAI) guna memastikan kebersihan dan sanitasi yang optimal. Pekerjaan cleaning service di RSAI adalah bagian integral dari menjaga standar kebersihan dan sanitasi yang tinggi di rumah sakit, dan itu sangat penting untuk mendukung kesehatan dan keselamatan pasien, staf medis, dan pengunjung.",
      "PROJECT_OWNER": "RSAI",
      "KONTAK": "",
      "IMAGE_MAIN": "$imageDir/outsource_rsai/outsource_rsai_landscape_047.jpg",
      "IMAGE_MAIN_PORTRAIT":
          "$imageDir/outsource_rsai/outsource_rsai_portrait_002.jpg",
      "IMAGE_LIST_LANDSCAPE": [
        for (int i = 1; i <= 60; i++)
          "$imageDir/outsource_rsai/outsource_rsai_landscape_${i.toString().padLeft(3, "0")}.jpg",
      ],
      "IMAGE_LIST_PORTRAIT": [
        for (int i = 1; i <= 5; i++)
          "$imageDir/outsource_rsai/outsource_rsai_portrait_${i.toString().padLeft(3, "0")}.jpg",
      ],
      // ======================================== list 1
      "LIST_OPT_1": {
        "listTitle": "Tantangan & Solusi",
        "listDescription": "",
        "list": [
          {"poin": "", "poinImage": "", "poinVideo": ""},
          {"poin": "", "poinImage": "", "poinVideo": ""},
          {"poin": "", "poinImage": "", "poinVideo": ""}
        ]
      },
      // ======================================== list 2
      "LIST_OPT_2": {
        "listTitle": "Lingkup Pekerjaan",
        "listDescription":
            "Pekerjaan Proyek Cleaning Service di Rumah Sakit Al-Islam (RSAI) adalah tugas yang melibatkan tim professional untuk menjaga kebersihan dan sanitasi optimal di seluruh area rumah sakit. Mereka melakukan pembersihan rutin harian, desinfeksi berkala, serta pengelolaan limbah medis dengan aman. Area khusus seperti ruang operasi diperlakukan dengan ketat dalam hal kebersihan. Tim cleaning service juga harus siap merespons keadaan darurat dan berkoordinasi dengan tim medis. Penggunaan peralatan pembersih yang aman dan perawatan peralatan adalah bagian penting dari pekerjaan ini. Semua tindakan mereka didokumentasikan untuk pemantauan kualitas dan keselamatan. Pekerjaan ini sangat penting untuk menjaga standar kualitas dalam pelayanan kesehatan di RSAI.",
        "list": [
          {
            "poin":
                "Pembersihan Rutin: Tim akan melakukan pembersihan rutin harian untuk menjaga kebersihan seluruh area di RSAI, termasuk ruang perawatan, koridor, ruang tunggu, dan fasilitas umum lainnya.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Desinfeksi: Selain pembersihan, tim juga akan melaksanakan desinfeksi secara berkala. Ini melibatkan penggunaan bahan-bahan desinfektan yang efektif untuk menghilangkan kuman dan mikroorganisme yang berpotensi membahayakan.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penanganan Limbah Medis: Tim akan mengelola dengan cermat dan aman limbah medis yang dihasilkan oleh rumah sakit, termasuk peralatan medis sekali pakai, jarum suntik, dan limbah biomedis lainnya.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pengelolaan Area Khusus: Beberapa area di RSAI, seperti ruang operasi, perlu perhatian khusus dalam hal kebersihan dan sterilisasi. Tim akan mengikuti protokol ketat dalam pembersihan area ini.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penanganan Darurat: Tim cleaning service harus siap untuk merespons kejadian darurat yang melibatkan penanganan bahan berbahaya atau kontaminasi.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Kerja Sama dengan Tim Medis: Mereka akan berkoordinasi dengan staf medis RSAI untuk menjadwalkan pembersihan yang tepat agar tidak mengganggu pasien dan staf medis.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Penggunaan Peralatan Pembersih: Tim akan menggunakan peralatan pembersih dan bahan kimia yang sesuai serta aman untuk lingkungan rumah sakit.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pemeliharaan dan Perawatan Peralatan: Merawat dan memeriksa peralatan pembersih secara teratur untuk memastikan mereka selalu dalam kondisi kerja yang optimal.",
            "poinImage": "",
            "poinVideo": ""
          },
          {
            "poin":
                "Pelaporan dan Dokumentasi: Tim akan mencatat semua pekerjaan yang dilakukan, termasuk pembersihan khusus, kejadian kontaminasi, dan penggunaan bahan kimia. Informasi ini penting untuk pemantauan kualitas dan audit.",
            "poinImage": "",
            "poinVideo": ""
          },
        ],
      },
      "LIST_OPT_3": {
        "listTitle": "Mitra Kerja & Vendor",
        "listDescription": "",
        "list": [
          {"poin": "", "poinImage": "", "poinVideo": ""},
        ],
      },
      "LIST_OPT_4": {
        "listTitle": "Testimoni Klien",
        "listDescription": "",
        "list": [
          {"poin": "", "poinImage": "", "poinVideo": ""},
        ],
      },
    };
  }
}
