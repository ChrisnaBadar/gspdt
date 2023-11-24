part of constants;

class DataDonation {
  static const String imageDirD = "assets/donation";
  static const String imageDirP = "assets/projects";
  static Map<String, List> myDonationsList = {
    'NAME': [masjidCianjur()],
    'IMAGE_MAIN': [masjidCianjur()['IMAGE_MAIN']],
    'IMAGE_MAIN_LANDSCAPE': [masjidCianjur()['IMAGE_MAIN_LANDSCAPE']],
    'IMAGE_MAIN_PORTRAIT': [masjidCianjur()['IMAGE_MAIN_PORTRAIT']],
    'DONATION_NAME': [masjidCianjur()['DONATION_NAME']],
    'HIGHLIGHT': [masjidCianjur()['HIGHLIGHT']]
  };

  static Map<String, dynamic> projectData() {
    return {
      'DONATORS': '',
    };
  }

  static Map<String, dynamic> masjidCianjur() {
    return {
      'ID': 'masjid_cianjur',
      'CATEGORY': 'donation',
      'RELATED_PROJECT': null,
      'RELATED_ARTICLE': null,
      'NAME': 'Restoring Mosques in Cianjur City, Rebuild Lives',
      'HIGHLIGHT':
          'Your support can be the means by which these mosques are rebuilt, and the hearts of the faithful are healed. Together, we can make a difference in the lives of the people of Cianjur City.',
      'DESCRIPTION': {
        'OPENING':
            'PT. Global Solution Provider\nRestoring Mosques, Rebuilding Lives\n\nIn the name of Allah, the Most Gracious, the Most Merciful,\n\nAssalamu Alaikum Wa Rahmatullahi Wa Barakatuhu!\n\nAs-salamu alaykum, dear brothers and sisters,\n',
        'DESCRIPTION':
            'We are PT. Global Solution Provider, an organization with a sincere commitment to helping the communities in need. We have been privileged to work on a project close to our hearts – rebuilding mosques in Cianjur City that were tragically destroyed by an earthquake. The mosques are not just bricks and mortar; they are the heart of the community, a place of spiritual solace, unity, and refuge.\n\nThe Quran reminds us of the significance of places of worship:\n\n"And [He revealed] that the mosques are for Allah, so do not invoke with Allah anyone." (Quran, Surah Al-Jinn, 72:18)\n\nOur Prophet Muhammad (peace be upon him) said:\n\n"Whoever builds a mosque for Allah, then Allah will build for him a house like it in Paradise." (Sahih Al-Bukhari)\n\nToday, we humbly request your support in this noble cause to help us reconstruct these places of worship. Your generous contributions can make a significant impact in the lives of those affected by this disaster and ensure that the community can continue to find peace, guidance, and solace in their places of worship.\n\nHere are a few ways you can contribute:\n\nFinancial Support: Your monetary donations will directly contribute to the construction of the mosques, providing the community with a safe and sacred space once again.\n\nVolunteer: If you have the skills, time, and resources to volunteer for the construction effort, your help would be invaluable.\n\nPrayers: Remember the people of Cianjur City in your prayers. Pray for their well-being, strength, and the successful rebuilding of their mosques.\n\nLet\'s come together as a global community, united in our love for Allah and His creations, and in the spirit of brotherhood and sisterhood. As Allah has blessed us, let us, in turn, bless those in need.\n',
        'WAY_TO_CONTRIBUTES': {
          'heading': 'Here are a few ways you can contribute:',
          'LIST': [
            '1. Financial Support: Your monetary donations will directly contribute to the construction of the mosques, providing the community with a safe and sacred space once again.',
            '2. Volunteer: If you have the skills, time, and resources to volunteer for the construction effort, your help would be invaluable.',
            '3. Prayers: Remember the people of Cianjur City in your prayers. Pray for their well-being, strength, and the successful rebuilding of their mosques.'
          ]
        },
        'QURAN_VERSE':
            '"And those who give whatever they (have to) give while their hearts are trembling, because they will be returning to their Lord." (Quran, Surah Al-Mu\'minun, 23:60)\n\nYour support can be the means by which these mosques are rebuilt, and the hearts of the faithful are healed. Together, we can make a difference in the lives of the people of Cianjur City.\n',
        'HADITH':
            'May Allah reward you abundantly for your compassion and generosity. May He accept our efforts and guide us in helping those in need. Ameen.\n\n"Allah is the ally of those who believe. He brings them out from darkness into the light." (Quran, Surah Al-Baqarah, 2:257)\n',
        'CLOSING_WORDS':
            'PT. Global Solution Provider\nRestoring Mosques, Rebuilding Lives\n\nTo donate or offer your support, please contact us at [Contact Information]. Your generosity will not only rebuild mosques but also bring hope, unity, and healing to a community in need.'
      },
      'MAIN_IMAGE': '$imageDirD/masjid_cianjur/a_masjid_cianjur_005.jpg',
      'ORGANIZER': 'PT. Global Solution Provider',
      'CONTACT': 'Chrisna Badar',
      'LOCATION': 'Cianjur, West Java',
      'DATE_CREATED': 'August 25th, 2023',
      'DATE_START': '',
      'DATE_END': '',
      'DONATORS': [
        {
          'NAME': 'Lina Bagus',
          'AMOUNT': 5000,
          'TIMESTAMP': '27/10/2023 23:20',
          'ALIAS': true
        },
        {
          'NAME': 'Windi Aris',
          'AMOUNT': 10000,
          'TIMESTAMP': '26/10/2023 20:22',
          'ALIAS': false
        },
        {
          'NAME': 'Trisna Dede',
          'AMOUNT': 1000,
          'TIMESTAMP': '15/10/2023 10:51',
          'ALIAS': true
        },
        {
          'NAME': 'Wulan Lutfi',
          'AMOUNT': 5000,
          'TIMESTAMP': '15/10/2023 00:37',
          'ALIAS': true
        },
        {
          'NAME': 'Ari Handoko',
          'AMOUNT': 100000,
          'TIMESTAMP': '14/10/2023 04:20',
          'ALIAS': true
        },
        {
          'NAME': 'Fitri Hermawan',
          'AMOUNT': 10000,
          'TIMESTAMP': '09/10/2023 13:25',
          'ALIAS': false
        },
        {
          'NAME': 'Dian Melinda',
          'AMOUNT': 1000,
          'TIMESTAMP': '04/10/2023 16:33',
          'ALIAS': true
        },
        {
          'NAME': 'Maya Suryani',
          'AMOUNT': 1000,
          'TIMESTAMP': '27/09/2023 13:35',
          'ALIAS': false
        },
        {
          'NAME': 'Bambang Sujono',
          'AMOUNT': 1000,
          'TIMESTAMP': '25/09/2023 14:07',
          'ALIAS': false
        },
        {
          'NAME': 'Dimas Iwan',
          'AMOUNT': 1000,
          'TIMESTAMP': '25/09/2023 10:46',
          'ALIAS': true
        },
        {
          'NAME': 'Susanti Bambang',
          'AMOUNT': 5000,
          'TIMESTAMP': '25/09/2023 03:03',
          'ALIAS': true
        },
        {
          'NAME': 'Yoga Fitria',
          'AMOUNT': 2000,
          'TIMESTAMP': '23/09/2023 17:27',
          'ALIAS': true
        },
        {
          'NAME': 'Agustina Yuliana',
          'AMOUNT': 1000,
          'TIMESTAMP': '22/09/2023 18:52',
          'ALIAS': true
        },
        {
          'NAME': 'Yuliana Anton',
          'AMOUNT': 10000,
          'TIMESTAMP': '21/09/2023 20:58',
          'ALIAS': false
        },
        {
          'NAME': 'Dwi Sujadi',
          'AMOUNT': 1000,
          'TIMESTAMP': '20/09/2023 02:00',
          'ALIAS': true
        },
        {
          'NAME': 'Dewi Rini',
          'AMOUNT': 50000,
          'TIMESTAMP': '16/09/2023 01:41',
          'ALIAS': false
        },
        {
          'NAME': 'Ariyanto Aulia',
          'AMOUNT': 5000,
          'TIMESTAMP': '12/09/2023 15:29',
          'ALIAS': false
        },
        {
          'NAME': 'Adi Susanti',
          'AMOUNT': 5000,
          'TIMESTAMP': '11/09/2023 04:23',
          'ALIAS': true
        },
        {
          'NAME': 'Putri Cahaya',
          'AMOUNT': 2000,
          'TIMESTAMP': '09/09/2023 16:38',
          'ALIAS': true
        },
        {
          'NAME': 'Arief Riana',
          'AMOUNT': 10000,
          'TIMESTAMP': '07/09/2023 08:59',
          'ALIAS': false
        },
        {
          'NAME': 'Adnan Suryani',
          'AMOUNT': 10000,
          'TIMESTAMP': '01/09/2023 11:27',
          'ALIAS': true
        },
        {
          'NAME': 'Melinda Rahmawati',
          'AMOUNT': 5000,
          'TIMESTAMP': '31/08/2023 21:26',
          'ALIAS': false
        },
        {
          'NAME': 'Sigit Utami',
          'AMOUNT': 5000,
          'TIMESTAMP': '31/08/2023 20:55',
          'ALIAS': true
        },
        {
          'NAME': 'Rudi Teguh',
          'AMOUNT': 10000,
          'TIMESTAMP': '30/08/2023 22:02',
          'ALIAS': true
        },
        {
          'NAME': 'Wijaya Dodi',
          'AMOUNT': 5000,
          'TIMESTAMP': '30/08/2023 15:43',
          'ALIAS': true
        },
        {
          'NAME': 'Setiawan Suyono',
          'AMOUNT': 5000,
          'TIMESTAMP': '28/08/2023 01:59',
          'ALIAS': true
        },
        {
          'NAME': 'Arya Nurcahya',
          'AMOUNT': 5000,
          'TIMESTAMP': '27/08/2023 01:01',
          'ALIAS': false
        },
        {
          'NAME': 'Subagio Ami',
          'AMOUNT': 5000,
          'TIMESTAMP': '26/08/2023 12:13',
          'ALIAS': true
        },
        {
          'NAME': 'Wulan Rahmawati',
          'AMOUNT': 10000,
          'TIMESTAMP': '22/08/2023 17:33',
          'ALIAS': false
        },
        {
          'NAME': 'Putu Sari',
          'AMOUNT': 5000,
          'TIMESTAMP': '20/08/2023 03:22',
          'ALIAS': true
        },
        {
          'NAME': 'Santi Widi',
          'AMOUNT': 50000,
          'TIMESTAMP': '18/08/2023 04:05',
          'ALIAS': false
        },
        {
          'NAME': 'Tuti Windarti',
          'AMOUNT': 10000,
          'TIMESTAMP': '12/08/2023 08:33',
          'ALIAS': false
        },
        {
          'NAME': 'Siswanto Rizki',
          'AMOUNT': 2000,
          'TIMESTAMP': '09/08/2023 03:05',
          'ALIAS': false
        },
        {
          'NAME': 'Wira Wijaya',
          'AMOUNT': 1000,
          'TIMESTAMP': '07/08/2023 04:48',
          'ALIAS': true
        },
        {
          'NAME': 'Wulan Lutfi',
          'AMOUNT': 1000,
          'TIMESTAMP': '05/08/2023 11:49',
          'ALIAS': true
        },
        {
          'NAME': 'Dina Yani',
          'AMOUNT': 1000,
          'TIMESTAMP': '04/08/2023 17:12',
          'ALIAS': true
        },
        {
          'NAME': 'Melati Novi',
          'AMOUNT': 5000,
          'TIMESTAMP': '30/07/2023 16:10',
          'ALIAS': true
        },
        {
          'NAME': 'Jaya Ika',
          'AMOUNT': 1000,
          'TIMESTAMP': '30/07/2023 03:17',
          'ALIAS': true
        },
        {
          'NAME': 'Lutfi Agustin',
          'AMOUNT': 1000,
          'TIMESTAMP': '28/07/2023 22:07',
          'ALIAS': true
        },
        {
          'NAME': 'Vita Iwan',
          'AMOUNT': 1000,
          'TIMESTAMP': '26/07/2023 18:57',
          'ALIAS': true
        },
        {
          'NAME': 'Nani Supri',
          'AMOUNT': 2000,
          'TIMESTAMP': '25/07/2023 12:02',
          'ALIAS': true
        },
        {
          'NAME': 'Widi Haryanto',
          'AMOUNT': 5000,
          'TIMESTAMP': '25/07/2023 08:44',
          'ALIAS': false
        },
        {
          'NAME': 'Aditya Wibowo',
          'AMOUNT': 10000,
          'TIMESTAMP': '17/07/2023 19:13',
          'ALIAS': false
        },
        {
          'NAME': 'Wahyuni Kusuma',
          'AMOUNT': 2000,
          'TIMESTAMP': '16/07/2023 03:23',
          'ALIAS': true
        },
        {
          'NAME': 'Sugeng Indah',
          'AMOUNT': 50000,
          'TIMESTAMP': '15/07/2023 11:36',
          'ALIAS': false
        },
        {
          'NAME': 'Adinda Widi',
          'AMOUNT': 1000,
          'TIMESTAMP': '13/07/2023 01:44',
          'ALIAS': false
        },
        {
          'NAME': 'Rina Suryani',
          'AMOUNT': 50000,
          'TIMESTAMP': '12/07/2023 13:18',
          'ALIAS': true
        },
        {
          'NAME': 'Eka Darmawan',
          'AMOUNT': 5000,
          'TIMESTAMP': '12/07/2023 04:55',
          'ALIAS': true
        },
        {
          'NAME': 'Tri Sugeng',
          'AMOUNT': 50000,
          'TIMESTAMP': '11/07/2023 19:53',
          'ALIAS': false
        },
        {
          'NAME': 'Astuti Nurcahya',
          'AMOUNT': 5000,
          'TIMESTAMP': '10/07/2023 00:42',
          'ALIAS': false
        },
        {
          'NAME': 'Faisal Riana',
          'AMOUNT': 1000,
          'TIMESTAMP': '08/07/2023 21:27',
          'ALIAS': true
        },
        {
          'NAME': 'Bintang Windarti',
          'AMOUNT': 10000,
          'TIMESTAMP': '07/07/2023 07:45',
          'ALIAS': false
        },
        {
          'NAME': 'Intan Wahyuni',
          'AMOUNT': 1000,
          'TIMESTAMP': '05/07/2023 15:45',
          'ALIAS': true
        },
        {
          'NAME': 'Bambang Syamsul',
          'AMOUNT': 50000,
          'TIMESTAMP': '04/07/2023 19:48',
          'ALIAS': false
        },
        {
          'NAME': 'Listy Wulan',
          'AMOUNT': 10000,
          'TIMESTAMP': '04/07/2023 06:53',
          'ALIAS': false
        },
        {
          'NAME': 'Prabowo Rizal',
          'AMOUNT': 5000,
          'TIMESTAMP': '27/06/2023 15:49',
          'ALIAS': true
        },
        {
          'NAME': 'Yuli Juna',
          'AMOUNT': 50000,
          'TIMESTAMP': '22/06/2023 05:42',
          'ALIAS': false
        },
        {
          'NAME': 'Ratna Yeni',
          'AMOUNT': 1000,
          'TIMESTAMP': '21/06/2023 08:09',
          'ALIAS': true
        },
        {
          'NAME': 'Dody Wira',
          'AMOUNT': 1000,
          'TIMESTAMP': '19/06/2023 20:06',
          'ALIAS': true
        },
        {
          'NAME': 'Rangga Febrian',
          'AMOUNT': 10000,
          'TIMESTAMP': '12/06/2023 08:09',
          'ALIAS': false
        },
        {
          'NAME': 'Wahyu Bagus',
          'AMOUNT': 2000,
          'TIMESTAMP': '12/06/2023 03:44',
          'ALIAS': false
        },
        {
          'NAME': 'Indah Hidayat',
          'AMOUNT': 5000,
          'TIMESTAMP': '09/06/2023 09:06',
          'ALIAS': true
        },
        {
          'NAME': 'Sri Mira',
          'AMOUNT': 5000,
          'TIMESTAMP': '08/06/2023 09:30',
          'ALIAS': false
        },
        {
          'NAME': 'Ida Ratna',
          'AMOUNT': 1000,
          'TIMESTAMP': '06/06/2023 22:25',
          'ALIAS': true
        },
        {
          'NAME': 'Rizki Arief',
          'AMOUNT': 5000,
          'TIMESTAMP': '27/05/2023 22:49',
          'ALIAS': true
        },
        {
          'NAME': 'Dewi Suryani',
          'AMOUNT': 2000,
          'TIMESTAMP': '27/05/2023 00:10',
          'ALIAS': false
        },
        {
          'NAME': 'Iwan Utami',
          'AMOUNT': 1000,
          'TIMESTAMP': '23/05/2023 21:57',
          'ALIAS': false
        },
        {
          'NAME': 'Febri Yuliana',
          'AMOUNT': 1000,
          'TIMESTAMP': '23/05/2023 10:40',
          'ALIAS': true
        },
        {
          'NAME': 'Bagus Laras',
          'AMOUNT': 10000,
          'TIMESTAMP': '22/05/2023 05:03',
          'ALIAS': false
        },
        {
          'NAME': 'Riana Melati',
          'AMOUNT': 50000,
          'TIMESTAMP': '18/05/2023 13:06',
          'ALIAS': true
        },
        {
          'NAME': 'Sari Murni',
          'AMOUNT': 1000,
          'TIMESTAMP': '16/05/2023 12:15',
          'ALIAS': false
        },
        {
          'NAME': 'Hariyanto Rendra',
          'AMOUNT': 10000,
          'TIMESTAMP': '15/05/2023 02:56',
          'ALIAS': false
        },
        {
          'NAME': 'Tari Widi',
          'AMOUNT': 50000,
          'TIMESTAMP': '14/05/2023 13:10',
          'ALIAS': false
        },
        {
          'NAME': 'Andri Guntur',
          'AMOUNT': 1000,
          'TIMESTAMP': '12/05/2023 08:14',
          'ALIAS': false
        },
        {
          'NAME': 'Wisnu Adnan',
          'AMOUNT': 1000,
          'TIMESTAMP': '10/05/2023 17:51',
          'ALIAS': true
        },
        {
          'NAME': 'Wibowo Agnes',
          'AMOUNT': 1000,
          'TIMESTAMP': '08/05/2023 02:53',
          'ALIAS': true
        },
        {
          'NAME': 'Lina Krisna',
          'AMOUNT': 10000,
          'TIMESTAMP': '05/05/2023 07:08',
          'ALIAS': false
        },
        {
          'NAME': 'Ratu Adnan',
          'AMOUNT': 1000,
          'TIMESTAMP': '28/04/2023 19:14',
          'ALIAS': true
        },
        {
          'NAME': 'Santoso Lisa',
          'AMOUNT': 100000,
          'TIMESTAMP': '25/04/2023 14:04',
          'ALIAS': true
        },
        {
          'NAME': 'Krisna Darmawan',
          'AMOUNT': 50000,
          'TIMESTAMP': '24/04/2023 23:14',
          'ALIAS': true
        },
        {
          'NAME': 'Sugianto Alit',
          'AMOUNT': 10000,
          'TIMESTAMP': '23/04/2023 23:39',
          'ALIAS': true
        },
        {
          'NAME': 'Sujono Mirna',
          'AMOUNT': 1000,
          'TIMESTAMP': '23/04/2023 09:01',
          'ALIAS': true
        },
        {
          'NAME': 'Desi Yuni',
          'AMOUNT': 5000,
          'TIMESTAMP': '23/04/2023 00:41',
          'ALIAS': true
        },
        {
          'NAME': 'Trisna Citra',
          'AMOUNT': 5000,
          'TIMESTAMP': '21/04/2023 03:04',
          'ALIAS': false
        },
        {
          'NAME': 'Agustin Bintang',
          'AMOUNT': 10000,
          'TIMESTAMP': '17/04/2023 07:39',
          'ALIAS': true
        },
        {
          'NAME': 'Suryanto Sri',
          'AMOUNT': 1000,
          'TIMESTAMP': '16/04/2023 17:25',
          'ALIAS': false
        },
        {
          'NAME': 'Wahyudi Dimas',
          'AMOUNT': 5000,
          'TIMESTAMP': '09/04/2023 05:35',
          'ALIAS': true
        },
        {
          'NAME': 'Wawan Haryanto',
          'AMOUNT': 5000,
          'TIMESTAMP': '07/04/2023 20:26',
          'ALIAS': false
        },
        {
          'NAME': 'Triyono Eka',
          'AMOUNT': 10000,
          'TIMESTAMP': '04/04/2023 05:43',
          'ALIAS': true
        },
        {
          'NAME': 'Dita Edo',
          'AMOUNT': 10000,
          'TIMESTAMP': '03/04/2023 17:21',
          'ALIAS': true
        },
        {
          'NAME': 'Agnes Mardi',
          'AMOUNT': 50000,
          'TIMESTAMP': '03/04/2023 01:15',
          'ALIAS': false
        },
        {
          'NAME': 'Denny Saputra',
          'AMOUNT': 1000,
          'TIMESTAMP': '02/04/2023 01:01',
          'ALIAS': true
        },
        {
          'NAME': 'Suryani Wulan',
          'AMOUNT': 10000,
          'TIMESTAMP': '01/04/2023 00:32',
          'ALIAS': false
        },
        {
          'NAME': 'Amin Sugeng',
          'AMOUNT': 5000,
          'TIMESTAMP': '31/03/2023 11:37',
          'ALIAS': true
        },
        {
          'NAME': 'Teguh Arief',
          'AMOUNT': 5000,
          'TIMESTAMP': '30/03/2023 23:12',
          'ALIAS': false
        },
        {
          'NAME': 'Rangga Iswanto',
          'AMOUNT': 2000,
          'TIMESTAMP': '30/03/2023 13:16',
          'ALIAS': true
        },
        {
          'NAME': 'Nurcahya Mardi',
          'AMOUNT': 50000,
          'TIMESTAMP': '28/03/2023 06:39',
          'ALIAS': true
        },
        {
          'NAME': 'Rini Purnomo',
          'AMOUNT': 10000,
          'TIMESTAMP': '25/03/2023 04:50',
          'ALIAS': false
        },
        {
          'NAME': 'Ani Santoso',
          'AMOUNT': 2000,
          'TIMESTAMP': '21/03/2023 21:59',
          'ALIAS': true
        },
        {
          'NAME': 'Fitria Yuliana',
          'AMOUNT': 1000,
          'TIMESTAMP': '20/03/2023 03:01',
          'ALIAS': false
        },
        {
          'NAME': 'Ningsih Fikri',
          'AMOUNT': 5000,
          'TIMESTAMP': '20/03/2023 02:58',
          'ALIAS': false
        },
        {
          'NAME': 'Rini Yulianto',
          'AMOUNT': 100000,
          'TIMESTAMP': '18/03/2023 08:17',
          'ALIAS': true
        },
        {
          'NAME': 'Dewa Vivi',
          'AMOUNT': 10000,
          'TIMESTAMP': '15/03/2023 03:19',
          'ALIAS': true
        },
        {
          'NAME': 'Erna Ami',
          'AMOUNT': 5000,
          'TIMESTAMP': '13/03/2023 00:26',
          'ALIAS': false
        },
        {
          'NAME': 'Sujadi Edo',
          'AMOUNT': 10000,
          'TIMESTAMP': '12/03/2023 20:33',
          'ALIAS': true
        },
        {
          'NAME': 'Haryanto Syamsul',
          'AMOUNT': 5000,
          'TIMESTAMP': '12/03/2023 01:09',
          'ALIAS': false
        },
        {
          'NAME': 'Jati Wisnu',
          'AMOUNT': 50000,
          'TIMESTAMP': '11/03/2023 20:14',
          'ALIAS': true
        },
        {
          'NAME': 'Slamet Fauzi',
          'AMOUNT': 50000,
          'TIMESTAMP': '10/03/2023 19:59',
          'ALIAS': false
        },
        {
          'NAME': 'Indra Edi',
          'AMOUNT': 50000,
          'TIMESTAMP': '09/03/2023 22:01',
          'ALIAS': false
        },
        {
          'NAME': 'Nur Erna',
          'AMOUNT': 10000,
          'TIMESTAMP': '08/03/2023 13:34',
          'ALIAS': true
        },
        {
          'NAME': 'Miranti Bambang',
          'AMOUNT': 100000,
          'TIMESTAMP': '08/03/2023 05:58',
          'ALIAS': false
        },
        {
          'NAME': 'Aziz Melati',
          'AMOUNT': 1000,
          'TIMESTAMP': '07/03/2023 22:44',
          'ALIAS': true
        },
        {
          'NAME': 'Novi Anisa',
          'AMOUNT': 2000,
          'TIMESTAMP': '05/03/2023 10:45',
          'ALIAS': true
        },
        {
          'NAME': 'Bayu Prabowo',
          'AMOUNT': 1000,
          'TIMESTAMP': '05/03/2023 05:02',
          'ALIAS': false
        },
        {
          'NAME': 'Nurul Agnes',
          'AMOUNT': 1000,
          'TIMESTAMP': '01/03/2023 15:02',
          'ALIAS': false
        },
        {
          'NAME': 'Mira Septi',
          'AMOUNT': 10000,
          'TIMESTAMP': '25/02/2023 21:48',
          'ALIAS': false
        },
        {
          'NAME': 'Kartika Sari',
          'AMOUNT': 5000,
          'TIMESTAMP': '24/02/2023 17:30',
          'ALIAS': false
        },
        {
          'NAME': 'Yulianto Agustina',
          'AMOUNT': 100000,
          'TIMESTAMP': '23/02/2023 21:39',
          'ALIAS': false
        },
        {
          'NAME': 'Yeni Tari',
          'AMOUNT': 10000,
          'TIMESTAMP': '23/02/2023 12:31',
          'ALIAS': false
        },
        {
          'NAME': 'Evi Tari',
          'AMOUNT': 10000,
          'TIMESTAMP': '20/02/2023 04:51',
          'ALIAS': true
        },
        {
          'NAME': 'Dwi Gede',
          'AMOUNT': 2000,
          'TIMESTAMP': '19/02/2023 09:29',
          'ALIAS': true
        },
        {
          'NAME': 'Nita Laras',
          'AMOUNT': 50000,
          'TIMESTAMP': '18/02/2023 15:12',
          'ALIAS': false
        },
        {
          'NAME': 'Edi Dani',
          'AMOUNT': 1000,
          'TIMESTAMP': '17/02/2023 06:33',
          'ALIAS': true
        },
        {
          'NAME': 'Jati Anisa',
          'AMOUNT': 2000,
          'TIMESTAMP': '15/02/2023 23:41',
          'ALIAS': false
        },
        {
          'NAME': 'Handoko Endah',
          'AMOUNT': 1000,
          'TIMESTAMP': '14/02/2023 01:32',
          'ALIAS': false
        },
        {
          'NAME': 'Agus Fikri',
          'AMOUNT': 10000,
          'TIMESTAMP': '11/02/2023 22:14',
          'ALIAS': false
        },
        {
          'NAME': 'Dian Bambang',
          'AMOUNT': 2000,
          'TIMESTAMP': '04/02/2023 20:51',
          'ALIAS': false
        },
        {
          'NAME': 'Fajar Widi',
          'AMOUNT': 2000,
          'TIMESTAMP': '04/02/2023 11:13',
          'ALIAS': true
        },
        {
          'NAME': 'Yuliana Mira',
          'AMOUNT': 5000,
          'TIMESTAMP': '03/02/2023 18:24',
          'ALIAS': true
        },
        {
          'NAME': 'Purnomo Hidayat',
          'AMOUNT': 5000,
          'TIMESTAMP': '03/02/2023 05:35',
          'ALIAS': false
        },
        {
          'NAME': 'Rina Aziz',
          'AMOUNT': 50000,
          'TIMESTAMP': '02/02/2023 06:48',
          'ALIAS': true
        },
        {
          'NAME': 'Cahaya Sigit',
          'AMOUNT': 5000,
          'TIMESTAMP': '01/02/2023 14:35',
          'ALIAS': false
        },
        {
          'NAME': 'Yudi Tito',
          'AMOUNT': 5000,
          'TIMESTAMP': '26/01/2023 23:57',
          'ALIAS': false
        },
        {
          'NAME': 'Sinta Rizki',
          'AMOUNT': 2000,
          'TIMESTAMP': '25/01/2023 10:31',
          'ALIAS': false
        },
        {
          'NAME': 'Bima Bagus',
          'AMOUNT': 10000,
          'TIMESTAMP': '24/01/2023 09:00',
          'ALIAS': false
        },
        {
          'NAME': 'Yanto Bintang',
          'AMOUNT': 10000,
          'TIMESTAMP': '23/01/2023 12:04',
          'ALIAS': false
        },
        {
          'NAME': 'Nugroho Dani',
          'AMOUNT': 5000,
          'TIMESTAMP': '22/01/2023 13:27',
          'ALIAS': false
        },
        {
          'NAME': 'Nurhayati Dini',
          'AMOUNT': 50000,
          'TIMESTAMP': '19/01/2023 02:38',
          'ALIAS': true
        },
        {
          'NAME': 'Joko Nugroho',
          'AMOUNT': 1310,
          'TIMESTAMP': '18/01/2023 19:33',
          'ALIAS': false
        },
        {
          'NAME': 'Murni Hendro',
          'AMOUNT': 5000,
          'TIMESTAMP': '18/01/2023 17:51',
          'ALIAS': false
        },
        {
          'NAME': 'Suyono Fauzi',
          'AMOUNT': 10000,
          'TIMESTAMP': '17/01/2023 21:23',
          'ALIAS': false
        },
        {
          'NAME': 'Hadi Novi',
          'AMOUNT': 5000,
          'TIMESTAMP': '17/01/2023 02:58',
          'ALIAS': true
        },
        {
          'NAME': 'Widya Indah',
          'AMOUNT': 50000,
          'TIMESTAMP': '14/01/2023 09:12',
          'ALIAS': true
        },
        {
          'NAME': 'Ratih Mira',
          'AMOUNT': 5000,
          'TIMESTAMP': '09/01/2023 19:48',
          'ALIAS': true
        },
        {
          'NAME': 'Ayu Laras',
          'AMOUNT': 10000,
          'TIMESTAMP': '09/01/2023 03:36',
          'ALIAS': true
        },
        {
          'NAME': 'Heri Sujono',
          'AMOUNT': 10000,
          'TIMESTAMP': '04/01/2023 11:33',
          'ALIAS': true
        },
        {
          'NAME': 'Laras Septi',
          'AMOUNT': 10000,
          'TIMESTAMP': '01/01/2023 00:02',
          'ALIAS': true
        },
        {
          'NAME': 'Aldi Mira',
          'AMOUNT': 5000,
          'TIMESTAMP': '31/12/2022 22:29',
          'ALIAS': true
        },
        {
          'NAME': 'Ami Guntur',
          'AMOUNT': 50000,
          'TIMESTAMP': '25/12/2022 16:41',
          'ALIAS': false
        },
        {
          'NAME': 'Rika Melinda',
          'AMOUNT': 5000,
          'TIMESTAMP': '25/12/2022 07:12',
          'ALIAS': true
        },
        {
          'NAME': 'Citra Aditya',
          'AMOUNT': 10000,
          'TIMESTAMP': '22/12/2022 10:32',
          'ALIAS': true
        },
        {
          'NAME': 'Yuni Widi',
          'AMOUNT': 50000,
          'TIMESTAMP': '20/12/2022 11:55',
          'ALIAS': true
        },
        {
          'NAME': 'Kusuma Anton',
          'AMOUNT': 5000,
          'TIMESTAMP': '13/12/2022 04:32',
          'ALIAS': true
        },
        {
          'NAME': 'Agus Hadi',
          'AMOUNT': 2000,
          'TIMESTAMP': '11/12/2022 14:09',
          'ALIAS': false
        },
        {
          'NAME': 'Kartini Narto',
          'AMOUNT': 2000,
          'TIMESTAMP': '09/12/2022 05:50',
          'ALIAS': true
        },
        {
          'NAME': 'Surya Bambang',
          'AMOUNT': 2000,
          'TIMESTAMP': '08/12/2022 20:36',
          'ALIAS': true
        },
        {
          'NAME': 'Rina Lina',
          'AMOUNT': 5000,
          'TIMESTAMP': '08/12/2022 00:08',
          'ALIAS': true
        },
        {
          'NAME': 'Mega Darmawan',
          'AMOUNT': 50000,
          'TIMESTAMP': '07/12/2022 22:39',
          'ALIAS': false
        },
        {
          'NAME': 'Septi Siti',
          'AMOUNT': 50000,
          'TIMESTAMP': '05/12/2022 11:16',
          'ALIAS': false
        },
        {
          'NAME': 'Slamet Agustina',
          'AMOUNT': 100000,
          'TIMESTAMP': '05/12/2022 03:42',
          'ALIAS': true
        },
        {
          'NAME': 'Widi Suyono',
          'AMOUNT': 5000,
          'TIMESTAMP': '04/12/2022 10:39',
          'ALIAS': true
        },
        {
          'NAME': 'Rizki Hermawan',
          'AMOUNT': 10000,
          'TIMESTAMP': '03/12/2022 16:40',
          'ALIAS': false
        },
        {
          'NAME': 'Fita Wibowo',
          'AMOUNT': 10000,
          'TIMESTAMP': '03/12/2022 06:18',
          'ALIAS': true
        },
        {
          'NAME': 'Rara Arya',
          'AMOUNT': 2000,
          'TIMESTAMP': '30/11/2022 07:22',
          'ALIAS': true
        },
        {
          'NAME': 'Agung Krisna',
          'AMOUNT': 10000,
          'TIMESTAMP': '29/11/2022 17:41',
          'ALIAS': false
        },
        {
          'NAME': 'Endah Sri',
          'AMOUNT': 1000,
          'TIMESTAMP': '24/11/2022 05:05',
          'ALIAS': true
        },
        {
          'NAME': 'Siti Wibowo',
          'AMOUNT': 1500,
          'TIMESTAMP': '23/11/2022 10:50',
          'ALIAS': true
        },
        {
          'NAME': 'Arif Kusuma',
          'AMOUNT': 2000,
          'TIMESTAMP': '22/11/2022 12:38',
          'ALIAS': true
        },
        {
          'NAME': 'Darmawan Bambang',
          'AMOUNT': 100000,
          'TIMESTAMP': '20/11/2022 14:51',
          'ALIAS': true
        },
        {
          'NAME': 'Yani Melinda',
          'AMOUNT': 1000,
          'TIMESTAMP': '19/11/2022 12:55',
          'ALIAS': false
        },
        {
          'NAME': 'Bagus Ningsih',
          'AMOUNT': 2000,
          'TIMESTAMP': '18/11/2022 02:58',
          'ALIAS': true
        },
        {
          'NAME': 'Suharto Hadi',
          'AMOUNT': 10000,
          'TIMESTAMP': '17/11/2022 21:24',
          'ALIAS': false
        },
        {
          'NAME': 'Tito Edi',
          'AMOUNT': 50000,
          'TIMESTAMP': '14/11/2022 06:39',
          'ALIAS': true
        },
        {
          'NAME': 'Budi Kusuma',
          'AMOUNT': 1000,
          'TIMESTAMP': '06/11/2022 23:24',
          'ALIAS': false
        },
        {
          'NAME': 'Rizal Sari',
          'AMOUNT': 5000,
          'TIMESTAMP': '06/11/2022 09:51',
          'ALIAS': false
        },
        {
          'NAME': 'Sari Ningsih',
          'AMOUNT': 2000,
          'TIMESTAMP': '04/11/2022 06:21',
          'ALIAS': false
        },
      ]
    };
  }
}
