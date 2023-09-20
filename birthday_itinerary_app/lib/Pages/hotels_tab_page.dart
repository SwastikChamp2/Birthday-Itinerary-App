import 'package:birthday_itinerary_app/Authentication/google_signin.dart';
import 'package:birthday_itinerary_app/Pages/hotel_detail_page.dart';
import 'package:birthday_itinerary_app/Pages/hotel_list.dart';
import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/general_components.dart';

class HotelTabSection extends StatelessWidget {
  const HotelTabSection({super.key});

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
                  title: "The Ritz-Carlton",
                  location: "Central Park, New York City",
                  onTapRoute: HotelListPage(),
                  rating: 4.2,
                  imageUrl:
                      "https://cf.bstatic.com/xdata/images/hotel/max1024x768/446598387.jpg?k=9870e791bd08baf5eacb485b653320a78d6557c59dc8c9f355e60ecf67940b00&o=&hp=1",
                ),
                ExplorePagePopularCard(
                  title: "The Peninsula Beverly Hills ",
                  location: "Beverly Hills, California",
                  onTapRoute: HotelListPage(),
                  rating: 4.6,
                  imageUrl:
                      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/d6/c2/15/the-peninsula-beverly.jpg?w=1200&h=-1&s=1",
                ),
                ExplorePagePopularCard(
                  title: "The Biltmore Four Seasons Hotel",
                  location: "Atlanta, Georgia",
                  onTapRoute: HotelListPage(),
                  rating: 4.6,
                  imageUrl:
                      "https://s3-media0.fl.yelpcdn.com/bphoto/QcI5ghk1F6Jqh-Wr1r0VdQ/o.jpg",
                ),
                ExplorePagePopularCard(
                  title: "The Fairmont",
                  location: "San Francisco, California",
                  onTapRoute: HotelDetailPage(),
                  rating: 4.5,
                  imageUrl:
                      "https://www.fairmont.com/assets/0/104/2865/2870/4369/4370/afe2f225-173f-4246-ae37-e37f393361db.jpg",
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
                    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/8a/e0/b9/bellagio-las-vegas.jpg?w=1200&h=-1&s=1",
                labelText: 'Luxury Hotels',
                onTapRoute: HotelListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://www.southernliving.com/thmb/wgYAAkFG3jbDqQEwyWSlj6ADhVE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/eau-palm-hotel-beach-2000-b791165230e34f00bd1961cf3c33dffe.jpg",
                labelText: 'Beach Hotels',
                onTapRoute: HotelListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://www.travelandleisure.com/thmb/pCU_Y9fbQe4CT5Q73J9k2Bqd_bI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/header-grand-velas-los-cabos-MXALLINC0222-46d3772ad56f4493a83e1bcb49e119f9.jpg",
                labelText: 'Resorts',
                onTapRoute: HotelListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://www.lehighvalleylive.com/resizer/9avAJwqD8RmM-lwEvv6grQheewM=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/BV4QZRII2FA7TLSHQ4LU3JUY3A.jpg",
                labelText: 'Historic Hotels',
                onTapRoute: HotelListPage(),
              ),
              SizedBox(
                height: 15,
              ),
              ExploreCategoryCard(
                imageUrl:
                    "https://skift.com/wp-content/uploads/2018/03/RedDoorz-Room-Interior-Indonesia.jpg",
                labelText: 'Budget Hotels',
                onTapRoute: HotelListPage(),
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
