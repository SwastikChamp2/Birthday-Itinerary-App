import 'package:birthday_itinerary_app/Authentication/google_signin.dart';
import 'package:birthday_itinerary_app/Pages/restuarant_detail_page.dart';
import 'package:birthday_itinerary_app/Pages/restuarant_list.dart';
import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/general_components.dart';

class RestuarantTabSection extends StatelessWidget {
  const RestuarantTabSection({super.key});

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
                  title: "Bella's Pizza Joint",
                  location: "Ocean Avenue Santa Monica",
                  rating: 4.2,
                  onTapRoute: RestuarantListPage(),
                  imageUrl:
                      "https://lh3.googleusercontent.com/p/AF1QipP7ghoOnxi1shPHWcgzb4lf4iTXdKV5JfzvGecI=s1360-w1360-h1020",
                ),
                ExplorePagePopularCard(
                  title: "Bar Raval",
                  location: "New York City, New York",
                  rating: 4.6,
                  onTapRoute: RestuarantDetailPage(),
                  imageUrl:
                      "https://media.cntraveler.com/photos/5b22cabaf0cc9956e5adca3c/16:9/w_2560,c_limit/Bar-Raval_36361674480_70a3ef47c9_o.jpg",
                ),
                ExplorePagePopularCard(
                  title: "Guelaguetza",
                  location: "Los Angeles, California",
                  rating: 4.6,
                  onTapRoute: RestuarantListPage(),
                  imageUrl:
                      "https://www.gayot.com/images/reviews/guelaguetza-los-angeles.jpg",
                ),
                ExplorePagePopularCard(
                  title: "The Optimist",
                  location: "Atlanta, Georgia",
                  onTapRoute: RestuarantListPage(),
                  rating: 4.5,
                  imageUrl:
                      "https://images.otstatic.com/prod/23751941/1/huge.jpg",
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
                    "https://media-cdn.tripadvisor.com/media/photo-s/14/c8/3c/b8/happy-rajah-indian-restaurant.jpg",
                labelText: 'Indian Restaurants',
                onTapRoute: RestuarantListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_800,h_534/w_49,x_9,y_9,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/c823wviodtazer6pnyoe/DiningExperienceatGoldenMonkeyChineseRestaurantUbud.jpg",
                labelText: 'Chinese Restaurants',
                onTapRoute: RestuarantListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://assets.gqindia.com/photos/5dcd32036cce8200089fcb49/16:9/w_2560%2Cc_limit/LaLola-Interiors.jpg",
                labelText: 'Italian Restaurants',
                onTapRoute: RestuarantListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://media-cdn.tripadvisor.com/media/photo-s/12/db/04/1b/pai-tong-thai-restaurant.jpg",
                labelText: 'Thai Restaurants',
                onTapRoute: RestuarantListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://popmenucloud.com/xrpblwcd/85ba676e-8969-4793-ba64-46c7724547be.jpg",
                labelText: 'Mexican Restaurants',
                onTapRoute: RestuarantListPage(),
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
