class Dorm {
  String label;
  String imageUrl;
  double lat;
  double long;

  List<info> infos;

  Dorm(
      this.label,
      this.imageUrl,
      this.lat,
      this.long,
      this.infos,
      );

  static List<Dorm> samples = [
    Dorm(
      'Sritrang',
      'assets/images/dorm/Sritrang.jpg',
      13.79502036460755, 100.3196396111471,
      [
        info('Condition: FEMALE ONLY',),
        info('Tel: 02-441-9116 press 6',),
        info('Facebook: mahidoldorm',),
        info('Dormitory Fees: 9000 THB/semester/student',),
        info('Damage Insurance Fees: 1250 THB/semester/student',),
        info('999 Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'Leelawadee',
      'assets/images/dorm/Leelawadee.jpg',
      13.802403779859075, 100.32023800474452,
      [
        info('Condition: FEMALE ONLY',),
        info('Tel: 02-441-9116 press 5',),
        info('Facebook: mahidoldorm',),
        info('Dormitory Fees: 7000 THB/semester/student',),
        info('Damage Insurance Fees: 1100 THB/semester/student',),
        info('999 Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'Chaiyapruk',
      'assets/images/dorm/Chaiyapruk.jpg',
      13.792940176295833, 100.32005080349859,
      [
        info('Condition: MALE ONLY',),
        info('Tel: 02-441-9116 press 3',),
        info('Facebook: mahidoldorm',),
        info('Dormitory Fees: 7000 THB/semester/student',),
        info('Damage Insurance Fees: 1100 THB/semester/student',),
        info('999 Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'MU Condo D (Dusita)',
      'assets/images/dorm/MU_Condo.jpg',
      13.799904900939577, 100.3224334486437,
      [
        info('Condition: FEMALE ONLY',),
        info('Tel: 02-4419205',),
        info('Facebook: @mucondosalaya',),
        info('Rental Fees: 5500 - 6000 THB/MONTH',),
        info('Damage Insurance Fees: 11000 THB',),
        info('Website: http://condosalaya.mahidol.ac.th/',),
        info('25/25 Moo 5 Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'P5 Mansion',
      'assets/images/dorm/P5.jpg',
      13.76535646972769, 100.3051261688173,
      [
        info('Tel: 085-379-5577, 080-061-4751, 084-709-1451',),
        info('Facebook: P5 Mansion',),
        info('Line: 0847091451',),
        info('Rental Fees: 2400 THB/MONTH',),
        info('Soi Bangkratuk 11 Putthamontonsai 5 Road, Bang Krathuk, Sam Phran, Nakhon Pathom 73210',),
      ],
    ),
    Dorm(
      'Triple A Residence',
      'assets/images/dorm/TripleA.jpg',
      13.790948315988237, 100.32933439949899,
      [
        info('Tel: 086-374-4588, 02-88-930-88 ',),
        info('Facebook: Triple A Residence',),
        info('Rental Fees: 4,500 - 5,000 THB/MONTH OR 600 - 700 THB/DAY',),
        info('Damage Insurance Fees: 5000 THB',),
        info('187-189 Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'The Enter Salaya',
      'assets/images/dorm/TheEnter.jpg',
      13.802595532833353, 100.3140113706638,
      [
        info('Tel: 098-5525931',),
        info('Facebook: The Enter Salaya',),
        info('Rental Fees: 6200 - 7400 THB/MONTH',),
        info('99/58-59 Moo 5 Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'KPN Place',
      'assets/images/dorm/KPN.jpg',
      13.799379188847489, 100.31316472648777,
      [
        info('Tel: 089-995-0092, 02-408-9570',),
        info('Rental Fees: 5500 - 5800 THB/MONTH',),
        info('135/405 Moo 5 Salaya Soi 7, Phuthamonthon, Nakornpathom, Thailand 73170',),
      ],
    ),
    Dorm(
      'M Residence',
      'assets/images/dorm/MResidence.jpg',
      13.796815795358569, 100.3278510976527,
      [
        info('Tel: 02 800 2230',),
        info('Website: http://www.msalaya.com/',),
        info('Soi Salaya 7, Salaya, Phuttha Mon Thon, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'The September Salaya',
      'assets/images/dorm/theseptember.jpg',
      13.800090407169694, 100.3111956399823,
      [
        info('Website: http://www.theseptembersalaya.com/',),
        info('Rental Fees: 7500 - 15000 THB/MONTH',),
        info('59 Moo 4  Soi Tangsin, Salaya-Nakhon Chaisri Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'Crystal Place',
      'assets/images/dorm/crystalplace.jpg',
      13.801454952835106, 100.31271318231192,
      [
        info('Tel: 02-800-2905-8, 083-2444258, 063-6544258',),
        info('Rental Fees: 5400 THB/MONTH',),
        info('Facebook: Crystal Place Apartment Salaya',),
      ],
    ),
    Dorm(
      'LOFT Salaya',
      'assets/images/dorm/loft.jpg',
      13.798560309015912, 100.32835476881748,
      [
        info('Tel: 02-800-2899, 082-580-5005',),
        info('Email: info@l-residence.com',),
        info('Website: www.l-residence.com',),
        info('289 Moo5 Salaya, Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'Bundit House',
      'assets/images/dorm/bundit.jpg',
      13.799692450152222, 100.31166063998234,
      [
        info('Tel: 02 444 6611',),
        info('Email: bundithouse@gmail.com',),
        info('Website: http://www.bundithouse.com/',),
        info('Rental Fees: 6900-8000 THB/MONTH OR 900 THB/DAY',),
        info('58 Salaya, Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'Uniloft',
      'assets/images/dorm/Uniloft.jpg',
      13.7994281737315, 100.31238051114715,
      [
        info('Tel: 02-444-6605 / 081-8012253',),
        info('Facebook: Uniloft',),
        info('Moo 4, 81-83 Soi Tangsin Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Dorm(
      'The Dearly Residence',
      'assets/images/dorm/dearly.jpg',
      13.79670747265232, 100.32877772648789,
      [
        info('Tel: 02 800 3559',),
        info('LINE: @thedearlyresidence',),
        info('Rental Fees: 5000THB/MONTH',),
        info('135/369 Moo.6 Salaya, Phuttamonthon 4 Road, Salaya, Nakhon Pathom 73170',),
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