// import 'package:birthday_itinerary_app/Components/birthday_itinerary_card_homepage.dart';
// import 'package:birthday_itinerary_app/Components/general_components.dart';
// import 'package:birthday_itinerary_app/Pages/restuarant_page_tab.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:provider/provider.dart';
// import '../Authentication/google_signin.dart';

// class ExplorePage extends StatefulWidget {
//   @override
//   _ExplorePageState createState() => _ExplorePageState();
// }

// class _ExplorePageState extends State<ExplorePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   String restuarantTabStyle = 'Gradient';
//   String hotelTabStyle = 'Grey';
//   String eventTabStyle = 'Grey';
//   String tabTitle = 'Restaurant'; // Initialize tabTitle

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   // Callback function to change tabTitle
//   void changeTabTitle(String newTabTitle) {
//     setState(() {
//       tabTitle = newTabTitle;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(241, 251, 255, 1),
//       body: Column(
//         children: [
//           FixedTopBarforHome(),
//           SearchField(),
//           const SizedBox(
//             height: 20,
//           ),
//           TabBar(
//             indicatorColor:
//                 Color.fromRGBO(255, 255, 255, 0), //tab indicator is hidden
//             controller: _tabController,
//             tabs: [
//               Tab(
//                 child: ExplorePageButton(
//                   text: 'Restuarant',
//                   style: restuarantTabStyle,
//                   onPressed: () {
//                     setState(() {
//                       restuarantTabStyle = 'Gradient';
//                       hotelTabStyle = 'Grey';
//                       eventTabStyle = 'Grey';
//                     });
//                     changeTabTitle('Restaurant'); // Update tabTitle
//                   },
//                 ),
//               ),
//               Tab(
//                 child: ExplorePageButton(
//                   text: 'Hotel',
//                   style: hotelTabStyle,
//                   onPressed: () {
//                     setState(() {
//                       restuarantTabStyle = 'Grey';
//                       hotelTabStyle = 'Gradient';
//                       eventTabStyle = 'Grey';
//                     });
//                     changeTabTitle('Hotels'); // Update tabTitle
//                   },
//                 ),
//               ),
//               Tab(
//                 child: ExplorePageButton(
//                   text: 'Event',
//                   style: eventTabStyle,
//                   onPressed: () {
//                     setState(() {
//                       restuarantTabStyle = 'Grey';
//                       hotelTabStyle = 'Grey';
//                       eventTabStyle = 'Gradient';
//                     });
//                     changeTabTitle('Events'); // Update tabTitle
//                   },
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: TabBarView(
//               physics: NeverScrollableScrollPhysics(),
//               controller: _tabController,
//               children: [
//                 ExplorePageContent(tabTitle: tabTitle),
//                 ExplorePageContent(tabTitle: tabTitle),
//                 ExplorePageContent(tabTitle: tabTitle),
//               ],
//             ),
//           ),
//           FixedBottomBar(),
//         ],
//       ),
//     );
//   }
// }

// class FixedTopBarforHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 109,
//       padding: const EdgeInsets.only(
//         top: 48,
//         left: 22.50,
//         right: 22.50, // Adjusted right padding
//         bottom: 20,
//       ),
//       clipBehavior: Clip.antiAlias,
//       decoration: const BoxDecoration(color: Color(0xFFF1FAFF)),
//       child: const Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           SizedBox(width: 20),
//           Expanded(
//             child: Text(
//               'Explore',
//               style: TextStyle(
//                 color: Color(0xFF5E6980),
//                 fontSize: 18,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ExplorePageContent extends StatelessWidget {
//   final String tabTitle;

//   ExplorePageContent({required this.tabTitle});

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       left: 17,
//       top: 101,
//       child: Column(
//         children: [
//           Container(
//             // Existing content for the Restaurant tab
//             child: Column(
//               children: [
//                 if (tabTitle == 'Restaurant') ...[
//                   RestuarantTabSection(),
//                 ],
//                 if (tabTitle == 'Hotels') ...[
//                   Text(
//                     'Hotel Content here',
//                     style: TextStyle(
//                       color: Color(0xFF5E6980),
//                       fontSize: 18,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ],
//                 if (tabTitle == 'Events') ...[
//                   Text(
//                     'Events',
//                     style: TextStyle(
//                       color: Color(0xFF5E6980),
//                       fontSize: 18,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ],
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Positioned(
//       left: 17,
//       top: 101,
//       child: Container(
//         // width: 341,
//         // height: 1151,
//         clipBehavior: Clip.antiAlias,
//         decoration: const BoxDecoration(),
//         child: Column(
//           children: [
//             Container(
//               width: 331,
//               height: 47,
//               decoration: BoxDecoration(
//                 color: Color(0xFFD1DFE0),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Search",
//                           hintStyle: TextStyle(
//                             color: Color(0xFF5E6A81),
//                           ),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     Icon(
//                       Icons.search,
//                       color: Color(0xFF5E6A81),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 8.0,
//                 horizontal: 20,
//               ),
//               child: Row(
//                 children: [
//                   ExplorePageGradientButton(
//                       text: 'Restuarant', onPressed: () {}),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   ExplorePageGreyButton(text: 'Hotels', onPressed: () {}),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   ExplorePageGreyButton(text: 'Events', onPressed: () {}),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ExplorePagePopularCard(
//                     title: "Morning Summer Camp",
//                     location: "Ocean Avenue, Santa Monica",
//                     rating: 4.6,
//                     imageUrl:
//                         "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
//                   ),
//                   ExplorePagePopularCard(
//                     title: "Morning Summer Camp",
//                     location: "Ocean Avenue, Santa Monica",
//                     rating: 4.6,
//                     imageUrl:
//                         "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
//                   ),
//                   ExplorePagePopularCard(
//                     title: "Morning Summer Camp",
//                     location: "Ocean Avenue, Santa Monica",
//                     rating: 4.6,
//                     imageUrl:
//                         "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
//                   ),
//                   ExplorePagePopularCard(
//                     title: "Morning Summer Camp",
//                     location: "Ocean Avenue, Santa Monica",
//                     rating: 4.6,
//                     imageUrl:
//                         "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/f4/5f/42/f45f42aa-ac67-4e07-899f-76a465681982/artwork.jpg/1200x1200bf-60.jpg",
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Categories',
//                   style: TextStyle(
//                     color: Color(0xFF5E6980),
//                     fontSize: 18,
//                     fontFamily: 'Mulish',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 final provider =
//                     Provider.of<GoogleSignInProvider>(context, listen: false);
//                 provider.googleLogout(); // Log out
//               },
//               child: const Text("Log Out"),
//             ),
//           ],
//         ),
//       ),
//     );

import 'package:flutter/material.dart';

class TestScaffold extends StatefulWidget {
  const TestScaffold({super.key});

  @override
  State<TestScaffold> createState() => _TestScaffoldState();
}

class _TestScaffoldState extends State<TestScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is a test scaffold")),
    );
  }
}
