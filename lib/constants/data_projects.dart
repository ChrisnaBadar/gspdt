part of constants;

class DataProjects {
  static const String imageDir = "assets/projects";
  static Map<String, List> myProjectsList = {
    'NAME': [masjidCianjur()],
    'IMAGE_MAIN': [masjidCianjur()['IMAGE_MAIN']],
    'IMAGE_MAIN_LANDSCAPE': [masjidCianjur()['IMAGE_MAIN_LANDSCAPE']],
    'IMAGE_MAIN_PORTRAIT': [masjidCianjur()['IMAGE_MAIN_PORTRAIT']],
    'PROJECT_NAME': [masjidCianjur()['PROJECT_NAME']],
    'HIGHLIGHT': [masjidCianjur()['HIGHLIGHT']]
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
}
