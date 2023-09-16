import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';

import '../Components/general_components.dart';

class HotelListPage extends StatefulWidget {
  @override
  _HotelListPageState createState() => _HotelListPageState();
}

class _HotelListPageState extends State<HotelListPage>
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
                          'Events',
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
            child: HotelList(),
          ),
        ],
      ),
    );
  }
}

class HotelList extends StatefulWidget {
  const HotelList({super.key});

  @override
  State<HotelList> createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
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
                    ListCard1(
                      title: 'The Langham, New York, Fifth Avenue',
                      location: 'New York City, New York',
                      price: 200,
                      rating: 4.6,
                      imageUrl:
                          'https://www.langhamhotels.com/content/dam/langhamhotels/dynamicmedia/north_america/the-langham-new-york-fifth-avenue-tlnyc/home/tlnyc-exterior-01.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: ' Post Ranch Inn',
                      location: 'Big Sur, California',
                      price: 300,
                      rating: 4.5,
                      imageUrl:
                          'https://drupal8-prod.visitcalifornia.com/sites/drupal8-prod.visitcalifornia.com/files/styles/fluid_1200/public/VCA_PostRanchInn_Supplied_Kodiak_MG_4521_1280x640.jpg?itok=qnN08YNh',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: 'Four Seasons Hotel New York Downtown',
                      location: ' New York City, New York',
                      price: 450,
                      rating: 4.7,
                      imageUrl:
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/07/52/0c/nyf-lobby.jpg?w=700&h=-1&s=1',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: 'The Peninsula Chicago',
                      location: ' Chicago, Illinois',
                      price: 300,
                      rating: 4.6,
                      imageUrl:
                          'https://www.peninsula.com/-/media/chicago-new-homepage/exterior-web-hero-photo.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: 'Grand del Mar',
                      location: 'San Diego, California',
                      price: 400,
                      rating: 4.5,
                      imageUrl:
                          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380261810.jpg?k=0f566bc992d8ea9d2c1420090ec82c0fa36bb04b6021985e2be615ed05d5e964&o=&hp=1',
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
