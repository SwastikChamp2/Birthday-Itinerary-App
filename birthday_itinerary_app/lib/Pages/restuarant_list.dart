import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';

import '../Components/general_components.dart';

class RestuarantListPage extends StatefulWidget {
  @override
  _RestuarantListPageState createState() => _RestuarantListPageState();
}

class _RestuarantListPageState extends State<RestuarantListPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30,
                          color: Color.fromARGB(255, 97, 95, 95),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Restuarants',
                          style: TextStyle(
                            color: Color(0xFF5E6980),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                SearchField(),
                SizedBox(height: 16.0),
              ],
            ),
          ),
          Expanded(
            child: RestuarantList(),
          ),
        ],
      ),
    );
  }
}

class RestuarantList extends StatefulWidget {
  const RestuarantList({super.key});

  @override
  State<RestuarantList> createState() => _RestuarantListState();
}

class _RestuarantListState extends State<RestuarantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
      body: SingleChildScrollView(
        child: Container(
          // width: 341,
          // height: 1151,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Column(
                  children: [
                    ListCard2(
                      title: 'The French Luxury',
                      location: 'Yountville, California',
                      priceRating: 4,
                      rating: 4.9,
                      imageUrl:
                          'https://images.squarespace-cdn.com/content/v1/58363e4f15d5db57b198bfeb/1549387763673-PLYQ1HKTLJOJ0QT2OOWZ/Flavors+of+Paris+restaurant.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard2(
                      title: 'Sierra Mar',
                      location: 'Big Sur, California',
                      priceRating: 3,
                      rating: 4.7,
                      imageUrl:
                          'https://resizer.otstatic.com/v2/photos/xlarge/2/48564030.webp',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard2(
                      title: 'Benu',
                      location: 'San Francisco, California',
                      priceRating: 4,
                      rating: 4.4,
                      imageUrl:
                          'https://media-cdn.tripadvisor.com/media/photo-s/15/f7/3a/1e/08286589-2732-4e49.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard2(
                      title: ' Atelier Crenn',
                      location: 'San Francisco, California',
                      priceRating: 4,
                      rating: 4.6,
                      imageUrl:
                          'https://cdn.vox-cdn.com/thumbor/zVLjyb42WNucumFROANtRe-eoIU=/0x0:2000x1333/1920x0/filters:focal(0x0:2000x1333):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/8407741/AtelierCrenn_PChang_2390.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard2(
                      title: 'Chez Panisse',
                      location: 'Berkeley, California',
                      priceRating: 3,
                      rating: 4.3,
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/ChezPanisse.jpg/375px-ChezPanisse.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(width: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
