import 'package:birthday_itinerary_app/Authentication/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/general_components.dart';

class RestuarantTabSection extends StatelessWidget {
  const RestuarantTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
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
                    title: "Morning Summer Camp",
                    location: "Ocean Avenue, Santa Monica",
                    rating: 4.6,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
                  ),
                  ExplorePagePopularCard(
                    title: "Morning Summer Camp",
                    location: "Ocean Avenue, Santa Monica",
                    rating: 4.6,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
                  ),
                  ExplorePagePopularCard(
                    title: "Morning Summer Camp",
                    location: "Ocean Avenue, Santa Monica",
                    rating: 4.6,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
                  ),
                  ExplorePagePopularCard(
                    title: "Morning Summer Camp",
                    location: "Ocean Avenue, Santa Monica",
                    rating: 4.6,
                    imageUrl:
                        "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
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
            ExploreCategoryCard(
              imageUrl:
                  "https://popmenucloud.com/xrpblwcd/85ba676e-8969-4793-ba64-46c7724547be.jpg",
              labelText: 'Indian Restaurants',
            ),
            ExploreCategoryCard(
              imageUrl:
                  "https://popmenucloud.com/xrpblwcd/85ba676e-8969-4793-ba64-46c7724547be.jpg",
              labelText: 'Indian Restaurants',
            ),
            SizedBox(width: 25),
            ElevatedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogout(); // Log out
              },
              child: const Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
