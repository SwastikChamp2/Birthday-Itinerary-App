import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';

import '../Components/general_components.dart';

class EventListPage extends StatefulWidget {
  @override
  _EventListPageState createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage>
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
            child: EventList(),
          ),
        ],
      ),
    );
  }
}

class EventList extends StatefulWidget {
  const EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
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
                      title: 'Grand Canyon National Park Tour',
                      location: 'Arizona',
                      price: 200,
                      rating: 4.5,
                      imageUrl:
                          'https://www.nps.gov/grca/planyourvisit/images/mather-point-2021.jpg?maxwidth=1300&maxheight=1300&autorotate=false',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: 'Yellowstone National Park Tour',
                      location: 'Wyoming',
                      price: 300,
                      rating: 4.5,
                      imageUrl:
                          'https://www.yellowstonenationalparklodges.com/content/uploads/2018/06/Historic-Yellow-Bus-TIFF-61.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title:
                          ' Justin Bieber Music concert at Madison Square Garden',
                      location: ' New York City, New York',
                      price: 350,
                      rating: 4.9,
                      imageUrl:
                          'https://bridgeclubbers.com/wp-content/uploads/2017/02/Justin-Bieber-in-Mumbai.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: 'Broadway show in New York City',
                      location: 'New York City, New York',
                      price: 100,
                      rating: 4.0,
                      imageUrl:
                          'https://fashionista.com/.image/t_share/MTU4NDI1NTg3OTk5MzE5NTA5/best-new-york-fashion-week-street-style-spring-2019.jpg',
                      onTapRoute: TestScaffold(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListCard1(
                      title: ' Golden Gate Bridge tour in San Francisco',
                      location: 'San Francisco, California',
                      price: 200,
                      rating: 4.5,
                      imageUrl:
                          'https://cdn.getyourguide.com/img/tour/019e85bedae1a067.jpeg/98.jpg',
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
