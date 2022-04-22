class Clinic {
  String label;
  String imageUrl;
  double lat;
  double long;

  List<info> infos;

  Clinic(
      this.label,
      this.imageUrl,
      this.lat,
      this.long,
      this.infos,
      );

  static List<Clinic> samples = [
    Clinic(
      'Golden Jubilee Medical Center',
      'assets/images/clinic/Jubilee.jpg',
      13.787069903138319,
      100.3215114550491,
      [
        info('Tel: 02-849-6600',),
        info('Opening Hours: 24 hours',),
        info('888 Moo 6, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Clinic(
      'Student health care unit',
      'assets/images/clinic/Student health care.jpg',
      13.794110659066462, 100.32158314896556,
      [
        info('Tel: 028494529-30',),
        info('First floor of Mahidol Learning Center located opposite the canteen entrance',),
      ],
    ),
    Clinic(
      'Phutthamonthon Hospital',
      'assets/images/clinic/Phutthamonthon Hospital.jpg',
      13.799139084350218, 100.2888068922112,
      [
        info('Tel:  0-2444-6032',),
        info('Facebook: โรงพยาบาลพุทธมณฑล',),
        info('140 Moo.1 Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Clinic(
      'Drug Store, Faculty of Pharmacy',
      'assets/images/clinic/Pharmacy.jpg',
      13.76131382862706, 100.52801907277237,
      [
        info('Tel: 0-2644-4609 , 096-812-3561',),
        info('Email: mupydrugstore1@gmail.com',),
        info('Opening Hours: 08:00-17:00',),
        info('',),
      ],
    ),
    Clinic(
      'ร้านยานิยมเภสัช',
      'assets/images/clinic/Niyom.jpg',
      13.80080219834109, 100.31214950261752,
      [
        info('Tel: 087 490 5988, 081 557 0161',),
        info('Soi Ban Tangsin, Salaya Phutthamonthon, Nakhon Pathom 7317',),
      ],
    ),
    Clinic(
      'บัณฑิตเภสัช',
      'assets/images/clinic/bundit.jpg',
      13.798696821234389, 100.32769407192897,
      [
        info('Tel: 087 490 5988, 081 557 0161',),
        info('Opening Hours: 8 AM - 9:30 PM',),
        info('200/1 Moo 5 Salaya Phutthamonthon, Nakhon Pathom 73170',),
        info('Shopee: บัณฑิตเภสัช ศาลายา',),
      ],
    ),
    Clinic(
      'รักษ์ยาเภสัช',
      'assets/images/clinic/rukya.jpg',
      13.798102630494213, 100.32771598727298,
      [
        info('Tel: 02 800 3653',),
        info('135/175 Moo 5 Salaya Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    /*Clinic(
      'Fascino',
      'assets/images/clinic/fascino.jpg',
      13.805636853045746, 100.32625539392231,
      [
        info('Opening Hours: 7:30 - 20:00',),
        info('139/30  Moo 5 Salaya Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),*/
    Clinic(
      'ร้านขายยาบ้านเภสัชกร',
      'assets/images/clinic/banpe.jpg',
      13.763619154392602, 100.32917359992707,
      [
        info('Tel: 095 115 9793',),
        info('Opening Hours: 7:30 - 20:00',),
        info('136/10 Moo 6 Phutthamonthon Sai 4 Road, Salaya, Phutthamonthon, Nakhon Pathom',),
      ],
    ),
    Clinic(
      'ศาลายาเภสัช',
      'assets/images/clinic/salaya.jpg',
      13.80579363768377, 100.31252240904786,
      [
        info('Tel:  02 889 2038',),
        info('Opening Hours: 8:30 - 23:00',),
        info('66/12 Moo 4, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Clinic(
      'Chomchon Pharmacy',
      'assets/images/clinic/chomchon.jpg',
      13.79786571753502, 100.327713357214,
      [
        info('Tel: 02 889 2592',),
        info('200 Moo 5, Salaya, Phutthamonthon, Nakhon Pathom',),
      ],
    ),
    Clinic(
      'Healthy Max',
      'assets/images/clinic/HealthyMax.jpg',
      13.786793335475403, 100.32157208465081,
      [
        info('Tel: 02 441 9596',),
        info('Opening Hours: 8:00 - 20:00',),
        info('G Floor Golden Jubilee Medical Center',),
        info('Moo 5, Mahidol University 999 Borommaratchachonnani Rd., Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    ),
    Clinic(
      'รุ่งเรืองเภสัช',
      'assets/images/clinic/rungreung.jpg',
      13.82896904528611, 100.31427133226009,
      [
        info('Tel: 082 659 7411',),
        info('Opening Hours: 10:00 - 21:30',),
        info('180/8 Moo 5, Salaya, Phutthamonthon, Nakhon Pathom 73170',),
      ],
    )
  ];
}

class info{
  String detail;

  info(
      this.detail,
      );
}