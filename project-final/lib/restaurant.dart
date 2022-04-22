class Restaurant {
  String label;
  String imageUrl;
  double lat;
  double long;

  List<info> infos;

  Restaurant(
      this.label,
      this.imageUrl,
      this.lat,
      this.long,
      this.infos,
      );

  static List<Restaurant> samples = [
    Restaurant(
      'Anya s Place',
      'assets/images/restaurant/Anya_s_Place.jpg',
      13.797552471708341, 100.3304201841582,
      [
        info('Tel: 02-800-3533',),
        info('Opening Hours: 11.00 a.m. - 10 p.m.',),
        info('152 Moo 5 Pinklao-Nakhon Chaisi Road, Salaya, Phutthamonthon, Nakhon Pathom',),
      ],
    ),
    Restaurant(
      'Cafe Salaya',
      'assets/images/restaurant/Cafe_Salaya.jpg',
      13.802019544781157, 100.31725647817599,
      [
        info('Tel: 081 869 -8280',),
        info('Email: cafesalaya@gmail.com',),
        info('Opening Hours: 11 am-8 pm ',),
        info('Facebook: Cafe Salaya',),
        info('',),
      ],
    ),
    Restaurant(
      'Chateau De Shabu',
      'assets/images/restaurant/Chateau_De_Shabu.jpg',
      13.801970204901444, 100.3177817688175,
      [
        info('Tel: 028893577',),
        info('Opening Hours: 11:00 - ',),
        info('26/6 Salaya-Nakhon Chaisri Road Phutthamonthon, Salaya',),
      ],
    ),
    Restaurant(
      'Music square',
      'assets/images/restaurant/Music_square.jpg',
      13.789162961441974, 100.32345298600444,
      [
        info('Tel: 06-391-36222',),
        info('Opening Hours: 10:00 - 20:00',),
        info('Email: musicsquare25@gmail.com',),
        info('Facebook: Music Square',),
        info('College of Music, Mahidol University',),
      ],
    ),
    Restaurant(
      'Tamtawan Coffee',
      'assets/images/restaurant/Tamtawan_Coffee.jpg',
      13.793912465570337, 100.32053765769732,
      [
        info('Tel: 0867977151',),
        info('Opening Hours: 12:30 - 20:00 ',),
        info('',),
      ],
    ),
    Restaurant(
      'ไม่ตก ไม่แตก',
      'assets/images/restaurant/maitok.jpg',
      13.796210353886702, 100.32768716881752,
      [
        info('Tel: 02 800 3610',),
        info('Opening Hours: 9:30 - 20:00',),
        info('135/139 Moo 6 Phutthamonthon Sai 4 Road, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Restaurant(
      'Lodiham steak house',
      'assets/images/restaurant/Lodiham.jpg',
      13.797657033079389, 100.3276144264879,
      [
        info('Tel: 081 822 3949',),
        info('Opening Hours: 10:30 - 21:30',),
        info('135/176 Moo 6 Phutthamonthon Sai 4 Road, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Restaurant(
      'ศรีจันทร์ ซีฟู๊ด',
      'assets/images/restaurant/srijan.jpg',
      13.796058354049723, 100.32765633998233,
      [
        info('Tel: 094 875 7004',),
        info('Opening Hours: 11:00 - 22:00',),
        info('135, 134-135 Phutthamonthon Sai 4 Road, Salaya Subdistrict, Phutthamonthon District, Nakhon Pathom 73170',),
      ],
    ),
    Restaurant(
      'Glom Glorm',
      'assets/images/restaurant/glom.jpg',
      13.795125700111551, 100.32923904182861,
      [
        info('Tel: 083 000 5125',),
        info('Opening Hours: 12:00 - 21:00',),
        info('135/585 Salaya Soi 11, Phutthamonthon Sai 4 Road, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Restaurant(
      'ปังป๊อ',
      'assets/images/restaurant/pangpo.jpg',
      13.79688349174707, 100.32746765532305,
      [
        info('',),
        info('Opening Hours: 12:00 - 21:00',),
        info('3310 Tambon Salaya, Phutthamonthon District, Nakhon Pathom 73170',),
      ],
    ),
    Restaurant(
      'พุทธรักษา2 เป็ดพะโล้',
      'assets/images/restaurant/pedpalo.jpg',
      13.796880472459131, 100.32765332648786,
      [
        info('Tel: 084-133-8484',),
        info('Opening Hours: 10:00 - 22:00',),
        info('200/444 Phutthamonthon Sai 4 Nakhon Pathom (opposite Mahidol University Located in Soi Salaya 3)',),
      ],
    ),
    Restaurant(
      'เสรี ผัดไทยกุ้งสด',
      'assets/images/restaurant/seri.jpg',
      13.797168033582006, 100.32742272648788,
      [
        info('Tel: 084-133-8484',),
        info('Opening Hours: 10:00 - 22:00',),
        info('200/444 Phutthamonthon Sai 4 Nakhon Pathom (opposite Mahidol University Located in Soi Salaya 3)',),
      ],
    ),
    Restaurant(
      'Brew & Bev',
      'assets/images/restaurant/brew.jpg',
      13.792379896978009, 100.32566789765262,
      [
        info('Opening Hours: Mon-Fri 7:30AM - 5:30PM',),
        info('IG: brewnbev',),
        info('Facebook: Brew & Bev (@brewnbev)',),
        info('MUIC building, Mahidol University',),
      ],
    ),
    Restaurant(
      'ปู๊ตี่บะหมี่เกี๊ยวกุ้ง',
      'assets/images/restaurant/pooti.jpg',
      13.795103755073345, 100.32757963998237,
      [
        info('Tel: 0841646656',),
        info('Opening Hours: 16:30 - 23:00',),
        info('Phutthamonthon Sai 4 Road, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
  ];
}

class info{
  String detail;

  info(
      this.detail,
      );
}

