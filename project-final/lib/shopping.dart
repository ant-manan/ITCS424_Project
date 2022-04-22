class Shopping {
  String label;
  String imageUrl;
  double lat;
  double long;

  List<info> infos;

  Shopping(
      this.label,
      this.imageUrl,
      this.lat,
      this.long,
      this.infos,
      );

  static List<Shopping> samples = [
    Shopping(
      'Don Wai Floating Market',
      'assets/images/shopping/Donwai.jpg',
      13.77073288061328, 100.28389477283335,
      [
        info('Opening Hours: 8.00 a.m. - 5.00 p.m. (Weekday), 7.00 a.m. - 6.30 p.m. (Weekend)',),
        info('Wat Don Wai, Tha Talat Subdistrict, Sampran District, Nakhon Pathom',),
      ],
    ),
    Shopping(
      'Salaya Market',
      'assets/images/shopping/SalayaMa.jpg',
      13.803919016271255, 100.32605895696123,
      [
        info('Opening Hours: 6:00 - 20:00',),
        info('Tel: 024410989',),
      ],
    ),
    Shopping(
      'Central Plaza Westgate',
      'assets/images/shopping/Central Plaza Westgate.jpg',
      13.87734576663137, 100.41134829765315,
      [
        info('Opening Hours: 11.00 - 20.00',),
        info('Tel: 02 594 9999',),
        info('199/3 Moo.6 Sao Thong Hin Subdistrict, Bang Yai District, Nonthaburi  11140',),
      ],
    ),
    Shopping(
      'The Salaya Leisure Park',
      'assets/images/shopping/TheSalaya.jpg',
      13.803692926874497, 100.32040746881752,
      [
        info('Opening Hours: 9:30 - 21:00',),
        info('Tel: 02 429 8401',),
        info('8/8 Moo.5 Salaya-Bangphasee Road, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Shopping(
      'Central Salaya',
      'assets/images/shopping/Central Salaya.jpg',
      13.787073983409606, 100.2761526264878,
      [
        info('Opening Hours: 11.00 - 20.00',),
        info('Tel: 02 473 8999',),
        info('99/21 Moo 2, Bang Toei Subdistrict, Sampran District, Nakhon Pathom 73210',),
      ],
    ),
    Shopping(
      'Makro Salaya',
      'assets/images/shopping/makro.jpg',
      13.801746305171578, 100.3055100688175,
      [
        info('Tel: 034-108-734',),
        info('87/18 Moo.3 Salaya, Nakhon Pathom 73170,'),
      ],
    ),
    Shopping(
      'Brio Mall',
      'assets/images/shopping/brio.png',
      13.786419403898686, 100.3296171264878,
      [
        info('199 Phutthamonthon Sai 4, Moo 6, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Shopping(
      'Groove Market',
      'assets/images/shopping/groove.jpg',
      13.798211751740379, 100.31232672648792,
      [
        info('Opening Hours: 17:00 - 00:00',),
        info('Website: https://www.taraestate.co.th/?utm_source=worldplaces.me&utm_medium=organic',),
        info('Soi Ban Tangsin, Salaya, Nakhon Pathom 73170',),
      ],
    ),
    Shopping(
      'Tesco Lotus',
      'assets/images/shopping/lotus.jpg',
      13.786453865570008, 100.29812019765262,
      [
        info('Facebook: โลตัส สาขา ศาลายา - สาย5',),
        info('99/14 Borommaratchachonnani, Bang Toei Subdistrict, Sampran District, Nakhon Pathom 73210',),
      ],
    ),
    Shopping(
      'MiniBigC Salaya Mahidol',
      'assets/images/shopping/minibigc.jpg',
      13.801987943009006, 100.31251179580636,
      [
        info('Tel: 0-2308-4666',),
        info('Facebook: Big C',),
        info('Website: https://www.bigc.co.th/',),
        info('88/2 Moo 4 Salaya, Nakhon Pathom 73170',),
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