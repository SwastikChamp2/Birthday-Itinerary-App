import 'package:birthday_itinerary_app/Authentication/google_signin.dart';
import 'package:birthday_itinerary_app/Pages/event_list.dart';
import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/general_components.dart';

class EventTabSection extends StatelessWidget {
  const EventTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 341,
      // height: 1151,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ExplorePagePopularCard(
                  title: "Mountain Top Skiing",
                  location: "Aspen, Colorado",
                  rating: 4.6,
                  onTapRoute: EventListPage(),
                  imageUrl:
                      "https://www.aspensnowmass.com/-/media/aspen-snowmass/images/hero/hero-image/winter/2022-23/tickets-and-passes-hero-image-082522.jpg?mw=1506&mh=930&hash=190C09B75EC96992C1ED1AB16C3477FB",
                ),
                ExplorePagePopularCard(
                  title: "California Beach Scuba Diving",
                  location: "Morro Bay, California",
                  rating: 4.6,
                  onTapRoute: EventListPage(),
                  imageUrl:
                      "https://www.innsofmonterey.com/resourcefiles/blogsmallimages/scuba-diving-adventures-in-the-monterey-bay-national-marine-sanctuary.jpg",
                ),
                ExplorePagePopularCard(
                  title: "Jackson Hole Paragliding",
                  location: "Jackson Hole, Wyoming",
                  onTapRoute: EventListPage(),
                  rating: 4.6,
                  imageUrl:
                      "http://jacksonhole-traveler-production.s3.amazonaws.com/wp-content/uploads/2014/05/11113830/Jackson-Hole-Paragliding-1920x1281.jpg",
                ),
                ExplorePagePopularCard(
                  title: "Bungee Jumping in Mt. St. Helens",
                  location: "Mt. St. Helens, Washington",
                  onTapRoute: EventListPage(),
                  rating: 4.5,
                  imageUrl:
                      "https://www.jumpinheights.com/assets/images/gallery/bungy/04.jpg",
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xFF5E6980),
                  fontSize: 18,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              ExploreCategoryCard(
                imageUrl:
                    "https://i.natgeofe.com/n/3ea82492-db0c-4b58-9bf9-247dab302e22/bir-billing-paragliding-adventure-sports-india_square.jpg",
                labelText: 'Adventure activities',
                onTapRoute: EventListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://tourscanner.com/blog/wp-content/uploads/2017/10/Featured-image.jpg",
                labelText: 'Water Activities',
                onTapRoute: EventListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://boombarstick.com/wp-content/uploads/2020/11/Music-Festivals-1024x682.jpg",
                labelText: 'Music Events',
                onTapRoute: EventListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://d3vjn2zm46gms2.cloudfront.net/blogs/2016/09/27004221/HHP046-1300x938.jpg",
                labelText: 'Theater and Comedy',
                onTapRoute: EventListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://images.onwardstate.com/uploads/2022/07/Artsfest1-13.jpg",
                labelText: 'Art festivals',
                onTapRoute: EventListPage(),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          SizedBox(width: 25),
          // ElevatedButton(
          //   onPressed: () {
          //     final provider =
          //         Provider.of<GoogleSignInProvider>(context, listen: false);
          //     provider.googleLogout(); // Log out
          //   },
          //   child: const Text("Log Out"),
          // ),
        ],
      ),
    );
  }
}
