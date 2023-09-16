import 'package:birthday_itinerary_app/Authentication/google_signin.dart';
import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/general_components.dart';

class RestuarantList extends StatefulWidget {
  const RestuarantList({super.key});

  @override
  State<RestuarantList> createState() => _RestuarantListState();
}

class _RestuarantListState extends State<RestuarantList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Heading',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                SearchField(),
                SizedBox(height: 16.0),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListofRestuarants(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListofRestuarants extends StatefulWidget {
  const ListofRestuarants({super.key});

  @override
  State<ListofRestuarants> createState() => _ListofRestuarantsState();
}

class _ListofRestuarantsState extends State<ListofRestuarants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: 341,
        // height: 1151,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Restuarants',
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
      ),
    );
  }
}
