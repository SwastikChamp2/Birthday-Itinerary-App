import 'package:birthday_itinerary_app/Components/birthday_itinerary_card_homepage.dart';
import 'package:birthday_itinerary_app/Components/general_components.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../Authentication/google_signin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
      body: Column(
        children: [
          FixedTopBarforHome(),
          Expanded(
            child: SingleChildScrollView(
              child: HomePageContent(),
            ),
          ),
          FixedBottomBar(),
        ],
      ),
    );
  }
}

class FixedTopBarforHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      padding: const EdgeInsets.only(
        top: 48,
        left: 22.50,
        right: 22.50, // Adjusted right padding
        bottom: 31,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0xFFF1FAFF)),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // IconButton(
          //   onPressed: () {
          //     // Handle button click (e.g., navigate back)
          //   },
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Color(0xFF5E6980),
          //     size: 24,
          //   ),
          // ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              'Choose a birthday itinerary',
              style: TextStyle(
                color: Color(0xFF5E6980),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 17,
      top: 101,
      child: Container(
        // width: 341,
        // height: 1151,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            BirthdayItineraryCard(
              title: 'Enchanted Garden Party',
              price: '\$70',
              rating: '4.6',
              imageUrl:
                  'https://www.feelgoodevents.com.au/wp-content/uploads/2022/06/DSC01422-scaled.jpg',
            ),
            const SizedBox(
              height: 25,
            ),
            BirthdayItineraryCard(
              title: 'Adventure Delight',
              price: '\$80',
              rating: '4.4',
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/a/ab/Whitewater_Rafting_-_geograph.org.uk_-_1530594.jpg?20110303081056',
            ),
            const SizedBox(
              height: 25,
            ),
            BirthdayItineraryCard(
              title: 'Culinary Fiest Delight',
              price: '\$90',
              rating: '4.5',
              imageUrl:
                  'https://mumbaimirror.indiatimes.com/thumb/79228089.cms?resizemode=4&width=400',
            ),
            const SizedBox(
              height: 25,
            ),
            BirthdayItineraryCard(
              title: 'Pamper & Paint Retreat',
              price: '\$70',
              rating: '4.6',
              imageUrl:
                  'https://img.etimg.com/thumb/msid-62296874,width-650,height-488,imgsize-221288,,resizemode-75/.jpg',
            ),
            const SizedBox(
              height: 25,
            ),
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
