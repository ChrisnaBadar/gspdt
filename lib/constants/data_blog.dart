part of constants;

class DataBlog {
  static const String imageDir = "assets/blogs";
  static Map<String, dynamic> myArticlesList = {
    'NAME': [
      buildingCrackCauses(),
      keselamatanKonstruksi(),
      permasalahanKebocoran(),
      manfaatPerekrutanStafLayananKebersihan(),
      deepCleaningSteps()
    ],
    'IMAGE_MAIN': [
      buildingCrackCauses()['IMAGE_MAIN'],
      keselamatanKonstruksi()['IMAGE_MAIN'],
      permasalahanKebocoran()['IMAGE_MAIN'],
      manfaatPerekrutanStafLayananKebersihan()['IMAGE_MAIN'],
      deepCleaningSteps()['IMAGE_MAIN']
    ],
    'IMAGE_MAIN_PORTRAIT': [
      buildingCrackCauses()['IMAGE_MAIN_PORTRAIT'],
      keselamatanKonstruksi()['IMAGE_MAIN_PORTRAIT'],
      permasalahanKebocoran()['IMAGE_MAIN_PORTRAIT'],
      manfaatPerekrutanStafLayananKebersihan()['IMAGE_MAIN_PORTRAIT'],
      deepCleaningSteps()['IMAGE_MAIN_PORTRAIT']
    ],
    'TITLE': [
      buildingCrackCauses()['TITLE'],
      keselamatanKonstruksi()['TITLE'],
      permasalahanKebocoran()['TITLE'],
      manfaatPerekrutanStafLayananKebersihan()['TITLE'],
      deepCleaningSteps()['TITLE']
    ],
    'HIGHLIGHT': [
      buildingCrackCauses()['HIGHLIGHT'],
      keselamatanKonstruksi()['HIGHLIGHT'],
      permasalahanKebocoran()['HIGHLIGHT'],
      manfaatPerekrutanStafLayananKebersihan()['HIGHLIGHT'],
      deepCleaningSteps()['HIGHLIGHT']
    ]
  };

  static Map<String, dynamic> buildingCrackCauses() {
    return {
      'DATE': 'Senin, 01 Oktober 2023',
      'AUTHOR': 'Chris',
      'IMAGE_MAIN': '$imageDir/building_cracks.jpg',
      'IMAGE_MAIN_PORTRAIT': '$imageDir/building_cracks_portrait.jpg',
      'TITLE': 'Penyebab-Penyebab Keretakan Pada Dinding Bangunan',
      'HIGHLIGHT':
          'Keretakan pada bangunan bisa disebabkan oleh berbagai faktor, dan penyebabnya dapat bervariasi tergantung pada jenis bangunan, kondisi lingkungan, desain, dan material konstruksi.',
      'DESCRIPTION':
          'Ketahui penyebab-penyebab keretakan pada bangunan penting karena ini memiliki implikasi serius pada keselamatan, kenyamanan, dan keberlangsungan bangunan. Pengetahuan tentang penyebab keretakan memungkinkan kita untuk mengidentifikasi dan mencegah keretakan yang lebih parah atau bahkan potensi keruntuhan. Dengan pemahaman ini, kita dapat merencanakan perawatan yang tepat, perbaikan yang diperlukan, atau perubahan desain yang mungkin diperlukan. Selain itu, ini juga berdampak pada biaya jangka panjang, karena perbaikan yang dini dan tepat akan lebih murah daripada mengatasi masalah yang semakin memburuk. Lebih dari itu, pemahaman penyebab keretakan memberi kita dasar yang kuat untuk menghadapi perubahan lingkungan atau beban yang dapat memengaruhi bangunan. Dengan kata lain, pengetahuan tentang penyebab keretakan merupakan langkah kunci dalam menjaga integritas dan daya tahan bangunan serta melindungi investasi yang berharga.',
      'CONCLUSION':
          'Penting untuk melakukan pemantauan dan perawatan rutin pada bangunan untuk mencegah atau mengidentifikasi keretakan sejak dini, karena keretakan yang dibiarkan dapat mengakibatkan kerusakan yang lebih serius. Jika Anda curiga bahwa bangunan Anda mengalami keretakan yang signifikan, sebaiknya berkonsultasi dengan seorang insinyur sipil atau profesional konstruksi untuk mengevaluasi dan merencanakan perbaikan yang diperlukan.',
      'LIST_OPT_1': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': 'Penyebab Keretakan',
        'LIST_DESCRIPTION':
            'Beberapa penyebab umum keretakan pada bangunan termasuk:',
        'LIST': [
          {
            'POIN':
                "Penyusutan Tanah: Penyusutan tanah akibat perubahan musim, pengeboran, atau perubahan air tanah dapat menyebabkan keretakan pada bangunan. Ini sering disebut sebagai keretakan akibat pergerakan tanah.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Perubahan Suhu: Perubahan suhu yang ekstrem dapat menyebabkan material bangunan, seperti beton dan logam, mengembang dan menyusut, yang dapat menyebabkan keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Beban Berlebih: Beban yang melebihi kapasitas desain bangunan, seperti penambahan lantai atau peralatan berat, dapat mengakibatkan keretakan pada struktur.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Getaran: Getaran dari gempa bumi, konstruksi di sekitarnya, atau aktivitas industri dapat merusak integritas bangunan dan menyebabkan keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemuaian dan Penyusutan Material: Material bangunan, seperti beton, kayu, atau logam, bisa mengalami pemuaian dan penyusutan seiring berjalannya waktu, yang dapat menghasilkan keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pergerakan Tanah: Tanah yang longsor, mengendap, atau tererosi dapat menyebabkan pergeseran pada bangunan dan keretakan sebagai hasilnya.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Desain yang Buruk: Desain struktural yang tidak memadai atau kurang kuat dapat membuat bangunan rentan terhadap keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kelembapan Ekstrem: Kelembapan yang ekstrem, seperti kelembaban berlebih atau kekeringan, dapat mempengaruhi material bangunan dan menyebabkan keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Proses Konstruksi yang Tidak Tepat: Kesalahan selama proses konstruksi, seperti penggunaan beton yang tidak cukup tercampur, pengeringan yang terlalu cepat, atau kurangnya perawatan yang tepat, dapat menghasilkan keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Umur Bangunan: Seiring berjalannya waktu, bangunan akan mengalami penurunan struktural yang dapat menghasilkan keretakan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          }
        ],
      },
      'LIST_OPT_2': ''
    };
  }

  static Map<String, dynamic> keselamatanKonstruksi() {
    return {
      'DATE': 'Senin, 01 Oktober 2023',
      'AUTHOR': 'Chris',
      'IMAGE_MAIN': '$imageDir/keselamatan_pekerja.jpg',
      'IMAGE_MAIN_PORTRAIT': '$imageDir/keselamatan_pekerja_portrait.jpg',
      'TITLE':
          'Keselamatan Konstruksi: Menangani Resiko dan Keselamatan Pekerja',
      'HIGHLIGHT':
          'Resiko dalam konstruksi dapat beragam, mulai dari cedera fisik hingga kerugian finansial. Identifikasi resiko adalah langkah awal yang kritis dalam mengelola keselamatan konstruksi. ',
      'DESCRIPTION':
          'Industri konstruksi adalah salah satu industri paling berisiko di dunia. Dalam proses pembangunan dan renovasi bangunan, serangkaian bahaya dapat timbul, dan keselamatan pekerja menjadi perhatian utama. Faktanya, upaya untuk meminimalkan risiko di lokasi konstruksi dan meningkatkan keselamatan pekerja telah menjadi fokus utama dalam industri ini. Artikel ini akan membahas berbagai aspek keselamatan konstruksi, termasuk resiko yang mungkin muncul dan upaya-upaya untuk mengatasinya.\nResiko dalam konstruksi dapat beragam, mulai dari cedera fisik hingga kerugian finansial. Identifikasi resiko adalah langkah awal yang kritis dalam mengelola keselamatan konstruksi. ',
      'CONCLUSION':
          'Industri konstruksi memiliki potensi bahaya yang tinggi, tetapi dengan pendekatan yang tepat, banyak resiko ini dapat diminimalkan atau dihindari sama sekali. Keselamatan pekerja harus selalu menjadi prioritas utama dalam setiap proyek konstruksi. Dengan pelatihan yang baik, pemakaian peralatan keselamatan, manajemen risiko yang efektif, dan komunikasi yang jelas, kita dapat mencapai lingkungan kerja yang lebih aman bagi semua pekerja konstruksi. Dengan upaya bersama, kita dapat terus meningkatkan keselamatan konstruksi dan mengurangi risiko yang terkait dengan industri ini.',
      'LIST_OPT_1': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': 'Identifikasi Resiko',
        'LIST_DESCRIPTION':
            'Beberapa resiko umum yang harus diperhatikan meliputi:',
        'LIST': [
          {
            'POIN':
                "Resiko Keselamatan Pekerja: Ini mencakup cedera fisik, seperti jatuh dari ketinggian, terjepit, atau terkena benda tumpul. Resiko ini juga termasuk paparan bahaya seperti bahan kimia berbahaya atau debu.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Resiko Kualitas Konstruksi: Ini dapat mencakup ketidaksesuaian dengan standar atau rencana, yang dapat mengakibatkan kegagalan struktural dan bahaya jangka panjang.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Resiko Lingkungan: Pembangunan dapat berdampak pada lingkungan, termasuk pencemaran tanah dan air, serta dampak terhadap ekosistem.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Resiko Finansial: Proyek konstruksi sering melebihi anggaran awal, sehingga berisiko mengakibatkan kerugian finansial bagi pemilik proyek.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      'LIST_OPT_2': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': 'Upaya Meningkatkan Keselamatan Konstruksi',
        'LIST_DESCRIPTION':
            'Meningkatkan keselamatan konstruksi melibatkan serangkaian tindakan yang berfokus pada pencegahan dan mitigasi resiko. Berikut beberapa upaya yang dapat dilakukan:',
        'LIST': [
          {
            'POIN':
                "Pelatihan dan Sertifikasi: Memastikan bahwa semua pekerja dilatih dengan baik dan memiliki sertifikasi yang sesuai untuk pekerjaan mereka. Ini termasuk pelatihan dalam penggunaan peralatan, prosedur keselamatan, dan pertolongan pertama.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Peralatan Keselamatan: Memastikan bahwa pekerja memiliki peralatan keselamatan yang diperlukan, seperti helm, alat pengaman, tali pengaman, dan peralatan pelindung pribadi (PPE).",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Manajemen Risiko: Proses manajemen risiko yang efektif melibatkan identifikasi, penilaian, dan pengendalian resiko. Ini melibatkan pemantauan secara teratur dan evaluasi lingkungan kerja.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Protokol Keadaan Darurat: Menyiapkan protokol keadaan darurat yang jelas dan melatih pekerja dalam tindakan yang harus diambil saat terjadi kejadian darurat, seperti kebakaran atau kecelakaan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Komunikasi yang Efektif: Komunikasi yang jelas dan efektif antara manajemen, kontraktor, dan pekerja adalah kunci keselamatan yang baik.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> permasalahanKebocoran() {
    return {
      'DATE': 'Senin, 01 Oktober 2023',
      'AUTHOR': 'Chris',
      'IMAGE_MAIN': '$imageDir/permasalaham_kebocoran.jpg',
      'IMAGE_MAIN_PORTRAIT': '$imageDir/permasalaham_kebocoran_portrait.jpg',
      'TITLE':
          'Permasalahan Kebocoran Gedung & Rumah: Penyebab-penyebab kebocoran pada gedung & rumah dan cara menanggulanginya',
      'HIGHLIGHT':
          'Kebocoran adalah masalah umum yang sering mengganggu pemilik rumah dan gedung. Kebocoran dapat merusak properti, menyebabkan kerugian finansial, dan mengganggu kenyamanan penghuni. ',
      'DESCRIPTION':
          'Kebocoran adalah masalah umum yang sering mengganggu pemilik rumah dan gedung. Kebocoran dapat merusak properti, menyebabkan kerugian finansial, dan mengganggu kenyamanan penghuni. Artikel ini akan membahas penyebab-penyebab umum kebocoran pada gedung dan rumah, serta memberikan panduan tentang bagaimana cara menanggulangi masalah ini.',
      'CONCLUSION':
          'Kebocoran pada gedung dan rumah adalah masalah yang dapat mengganggu dan mahal untuk diperbaiki. Namun, dengan identifikasi penyebab yang tepat dan tindakan pencegahan yang sesuai, banyak kebocoran dapat dicegah atau diperbaiki sebelum merusak lebih banyak. Perawatan yang cermat dan tindakan pencegahan adalah kunci untuk menjaga kekeringan dan keamanan properti Anda. Dalam hal kebocoran, tindakan cepat dan penanganan yang benar adalah kunci untuk meminimalkan kerusakan dan biaya perbaikan yang lebih besar.',
      'LIST_OPT_1': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': 'Penyebab Kebocoran pada Gedung & Rumah',
        'LIST_DESCRIPTION':
            'Berikut adalah beberapa penyebab yang menjadi permasalahan kebocoran pada bangunan gedung & rumah:',
        'LIST': [
          {
            'POIN':
                "Atap yang Buruk: Salah satu penyebab paling umum kebocoran adalah atap yang buruk. Atap yang rusak, sobek, atau berlubang memungkinkan air hujan masuk ke dalam bangunan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Jendela dan Pintu yang Bocor: Jendela dan pintu yang tidak tahan air atau terpasang dengan buruk dapat menyebabkan air masuk ke dalam rumah atau gedung.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Saluran Pembuangan yang Tersumbat: Saluran pembuangan yang tersumbat atau rusak bisa mengakibatkan air limbah kembali ke dalam bangunan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kerusakan Pipa Air: Pipa air yang bocor atau pecah dapat menyebabkan kebocoran air yang merembes ke dalam dinding atau lantai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penyusutan Bangunan: Bangunan yang mengalami penyusutan seiring waktu dapat mengakibatkan celah dan keretakan yang memungkinkan air masuk.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Kelembaban Tinggi dan Kondensasi: Kelembaban berlebihan dalam ruangan atau kondensasi dapat mengakibatkan bercak air dan kebocoran pada dinding dan langit-langit.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      'LIST_OPT_2': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': 'Cara Menanggulangi Kebocoran',
        'LIST_DESCRIPTION':
            'Berikut adalah beberapa cara untuk menanggulangi permasalahan kebocoran:',
        'LIST': [
          {
            'POIN':
                "Perawatan Rutin: Melakukan perawatan rutin pada atap, jendela, pintu, dan saluran pembuangan untuk memastikan bahwa mereka dalam kondisi baik.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemasangan Kualitas: Pastikan jendela, pintu, dan atap dipasang dengan benar dan menggunakan bahan berkualitas tinggi yang tahan air.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Perbaikan Pipa: Segera perbaiki pipa air yang bocor atau pecah. Periksa juga pipa saluran pembuangan secara berkala.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penanganan Kelembaban: Jaga tingkat kelembaban yang tepat di dalam ruangan dengan ventilasi yang baik. Gunakan dehumidifier jika perlu.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penyegelan dan Perbaikan: Segera selidiki dan perbaiki setiap tanda kebocoran. Gunakan material penyegel yang sesuai untuk mengatasi kebocoran.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pemeliharaan Atap: Lakukan pemeriksaan rutin pada atap dan segera perbaiki atau ganti bahan yang rusak.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
    };
  }

  static Map<String, dynamic> manfaatPerekrutanStafLayananKebersihan() {
    return {
      'DATE': 'Jumat, 21 Oktober 2023',
      'AUTHOR': 'John Smith',
      'IMAGE_MAIN': '$imageDir/layanan_kebersihan.jpg',
      'IMAGE_MAIN_PORTRAIT': '$imageDir/layanan_kebersihan_portrait.jpg',
      'TITLE': 'Manfaat Perekrutan Staf Layanan Kebersihan untuk Gedung',
      'HIGHLIGHT':
          'Menjaga gedung tetap bersih dan higienis sangat penting karena berbagai alasan, dan perekrutan staf layanan kebersihan dapat sangat membantu mencapai tujuan ini.',
      'DESCRIPTION':
          'Menjaga kebersihan gedung bukan hanya tentang estetika; itu memiliki dampak signifikan pada kesejahteraan dan produktivitas penghuninya. Baik itu properti tinggal, ruang kantor, atau bangunan komersial, kebersihan memainkan peran penting. Berikut adalah beberapa manfaat utama dari perekrutan staf layanan kebersihan untuk gedung Anda:',
      'CONCLUSION':
          'Sebagai kesimpulan, mempekerjakan staf layanan kebersihan profesional untuk gedung Anda adalah investasi yang memberikan hasil dalam berbagai cara. Ini tidak hanya meningkatkan penampilan dan kebersihan gedung, tetapi juga berkontribusi pada kesehatan dan kepuasan penghuninya. Selain itu, dapat memperpanjang masa pakai komponen gedung dan mengurangi biaya perawatan jangka panjang. Jadi, jika Anda ingin menciptakan lingkungan yang bersih, aman, dan ramah, pertimbangkan untuk menggunakan jasa perusahaan layanan kebersihan yang terpercaya.',
      'LIST_OPT_1': {
        'LIST_IMAGE': '$imageDir/gedung_bersih.jpg',
        'LIST_TITLE': 'Keuntungan Perekrutan Staf Layanan Kebersihan',
        'LIST_DESCRIPTION':
            'Berikut adalah beberapa manfaat dari memiliki staf layanan kebersihan profesional di gedung Anda:',
        'LIST': [
          {
            'POIN':
                'Meningkatkan Kebersihan dan Kesehatan: Pembersih profesional menggunakan disinfektan dan teknik yang efektif untuk menghilangkan kuman dan bakteri. Ini mempromosikan lingkungan yang lebih sehat dan mengurangi risiko penyakit.',
            'POIN_IMAGE': '$imageDir/gedung_sehat.jpg',
          },
          {
            'POIN':
                'Meningkatkan Produktivitas: Tempat kerja yang bersih dan terorganisir dapat meningkatkan produktivitas dengan mengurangi gangguan dan membantu karyawan fokus pada tugas mereka.',
            'POIN_IMAGE': '$imageDir/gedung_produktif.jpg',
          },
          {
            'POIN':
                'Penghematan Waktu dan Biaya: Mengkontrak layanan kebersihan memungkinkan Anda untuk fokus pada aktivitas inti bisnis Anda, menghemat waktu, dan mungkin mengurangi biaya operasional.',
            'POIN_IMAGE': '$imageDir/penghematan_waktu.jpg',
          },
          {
            'POIN':
                'Umur Komponen Gedung yang Lebih Lama: Pembersihan dan perawatan berkala dapat memperpanjang umur komponen gedung seperti karpet, lantai, dan sistem HVAC.',
            'POIN_IMAGE': '$imageDir/gedung_tahan_lama.jpg',
          },
          {
            'POIN':
                'Kesan Positif Pertama: Gedung yang bersih dan terawat menciptakan kesan positif pertama pada pengunjung, klien, dan penyewa.',
            'POIN_IMAGE': '$imageDir/kesan_pertama.jpg',
          },
          {
            'POIN':
                'Solusi Kebersihan yang Disesuaikan: Perusahaan layanan kebersihan profesional dapat memberikan solusi yang disesuaikan dengan kebutuhan dan persyaratan khusus gedung Anda.',
            'POIN_IMAGE': '$imageDir/solusi_kebersihan.jpg',
          },
        ],
      },
      'LIST_OPT_2': ''
    };
  }

  static Map<String, dynamic> deepCleaningSteps() {
    return {
      'DATE': 'Senin, 01 Oktober 2023',
      'AUTHOR': 'Chris',
      'IMAGE_MAIN': '$imageDir/deep_cleaning.jpg',
      'IMAGE_MAIN_PORTRAIT': '$imageDir/deep_cleaning_portrait.jpg',
      'TITLE':
          'Langkah-Langkah Standar Deep Cleaning Sebuah Gedung Perkantoran',
      'HIGHLIGHT':
          'Deep cleaning pada sebuah gedung perkantoran merupakan proses penting dalam menjaga kebersihan dan kesehatan lingkungan kerja. Dalam artikel ini, kita akan membahas langkah-langkah standar untuk melakukan deep cleaning yang efektif.',
      'DESCRIPTION':
          'Deep cleaning adalah proses pembersihan yang mendalam dan menyeluruh yang bertujuan untuk menghilangkan kotoran, debu, bakteri, dan kuman yang mungkin terabaikan selama pembersihan rutin. Deep cleaning secara teratur membantu menciptakan lingkungan kerja yang sehat, nyaman, dan aman bagi seluruh penghuni gedung. Berikut adalah langkah-langkah standar yang dapat Anda ikuti untuk melakukan deep cleaning yang efektif pada sebuah gedung perkantoran:',
      'CONCLUSION':
          'Melakukan deep cleaning secara berkala merupakan investasi yang penting dalam menjaga kebersihan dan kesehatan bangunan perkantoran. Dengan mengikuti langkah-langkah standar yang telah disebutkan di atas, Anda dapat memastikan bahwa lingkungan kerja tetap bersih, nyaman, dan sehat untuk semua orang yang bekerja di dalamnya. Dengan demikian, deep cleaning bukan hanya merupakan tanggung jawab, tetapi juga investasi dalam produktivitas, kesejahteraan, dan reputasi perusahaan Anda.',
      'LIST_OPT_1': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': 'Langkah-Langkah Deep Cleaning',
        'LIST_DESCRIPTION':
            'Berikut adalah langkah-langkah standar deep cleaning sebuah gedung perkantoran:',
        'LIST': [
          {
            'POIN':
                "Evaluasi Lingkungan: Pertama, lakukan evaluasi menyeluruh terhadap area yang akan dibersihkan. Identifikasi area yang membutuhkan perhatian khusus, seperti ruang rapat, dapur, atau kamar mandi.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Persiapan dan Perlindungan: Pastikan bahwa tim pembersih memiliki peralatan pelindung pribadi yang sesuai, seperti sarung tangan dan masker. Lindungi peralatan dan furnitur yang tidak akan dibersihkan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Penghapusan Debu dan Kotoran: Mulai dengan membersihkan debu dan kotoran yang terakumulasi di permukaan, termasuk meja, rak, dan peralatan kantor.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pembersihan Lantai: Cuci dan sterilkan lantai menggunakan deterjen atau pembersih yang sesuai dengan jenis lantai. Pastikan lantai bersih dan kering sebelum digunakan kembali.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pembersihan Kamar Mandi: Bersihkan kamar mandi dengan teliti, termasuk toilet, wastafel, dan lantai. Ganti handuk dan perlengkapan kamar mandi yang diperlukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Sterilisasi Permukaan Sentuh: Fokus pada area yang sering disentuh, seperti gagang pintu, sakelar lampu, dan tombol lift. Sterilisasi menggunakan disinfektan yang sesuai.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Pembersihan Ruang Makan: Jika ada ruang makan atau dapur di gedung, pastikan bahwa area tersebut dibersihkan secara menyeluruh, termasuk peralatan makan dan dapur.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Ventilasi dan Udara Bersih: Pastikan sistem ventilasi berfungsi dengan baik dan bersihkan filter udara. Ini akan membantu menjaga kualitas udara dalam gedung.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Dispose Sampah dengan Benar: Pastikan bahwa sampah hasil pembersihan dibuang dengan benar sesuai peraturan dan pedoman daur ulang.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
          {
            'POIN':
                "Inspeksi dan Perbaikan: Setelah deep cleaning selesai, lakukan inspeksi untuk memastikan bahwa semua area telah dibersihkan dengan baik. Identifikasi dan perbaiki masalah jika ditemukan.",
            'POIN_IMAGE': '',
            'POIN_VIDEO': ''
          },
        ],
      },
      'LIST_OPT_2': ''
    };
  }

  static Map<String, dynamic> masjidCianjur() {
    return {};
  }

  static Map<String, dynamic> newPost() {
    return {
      'DATE': 'Senin, 01 Oktober 2023',
      'AUTHOR': '',
      'IMAGE_MAIN': '$imageDir/',
      'TITLE': '',
      'HIGHLIGHT': '',
      'DESCRIPTION': '',
      'CONCLUSION': '',
      'LIST_OPT_1': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': '',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {'POIN': "", 'POIN_IMAGE': '', 'POIN_VIDEO': ''},
        ],
      },
      'LIST_OPT_2': {
        'LIST_IMAGE': '$imageDir/',
        'LIST_TITLE': '',
        'LIST_DESCRIPTION': '',
        'LIST': [
          {'POIN': "", 'POIN_IMAGE': '', 'POIN_VIDEO': ''},
        ],
      },
    };
  }
}
