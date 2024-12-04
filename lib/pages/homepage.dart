import 'package:flutter/material.dart';
import 'package:ngopidulu/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hotCoffee = [
      {'image': 'https://drishop.co.id/wp-content/uploads/2024/02/kopi-espresso.jpg', 
      'name': 'Espresso', 'desc' : 'Kopi hitam pekat dan kuat'},
      {'image': 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-54187613/freshly_baked_by_origin_bakery_americano_full02_kd07blpv.jpg', 
      'name': 'Americano', 
      'desc' : 'Kopi hitam amerika'}
    ];

    final coldCoffee = [
      {
        'image':
            'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2Farchive%2F9eada0d203bfb580d801b478edd553465c7afb52',
        'name': 'Cold Brew',
        'desc' : 'Kopi hitam pekat dan kuat'
      },
      {
        'image':
            'https://d1r9hss9q19p18.cloudfront.net/uploads/2017/03/affogato_1280x720-sumber-.jpg',
        'name': 'Affogato',
        'desc' : 'Kopi es krim'
      },
    ];

    final username = ModalRoute.of(context)!.settings.arguments as String;

    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(width: 20.0),
                    Text(
                      'Hello, $username',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'It\'s A Great Day for Coffee', // Fixing the typo here too
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TabBar(
                  labelColor: Colors.brown,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'Hot Coffee'),
                    Tab(text: 'Cold Coffee'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(
                    children: [buildHotCoffeData(hotCoffee), buildColdCoffeData(coldCoffee)],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView buildHotCoffeData(List<Map<String, String>> hotCoffee) {
    return ListView.separated(
      itemCount: hotCoffee.length,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
        );
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(coffee: hotCoffee[index]),));
          },
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(hotCoffee[index]['image']!),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${hotCoffee[index]['name']}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  ListView buildColdCoffeData(List<Map<String, String>> coldCoffee) {
    return ListView.separated(
      itemCount: coldCoffee.length,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
        );
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(coffee: coldCoffee[index]),));
          },
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(coldCoffee[index]['image']!),
                    fit: BoxFit.cover)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
               decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12)),
               
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${coldCoffee[index]['name']}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
