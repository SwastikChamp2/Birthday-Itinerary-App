import 'package:birthday_itinerary_app/Components/starting_page_UI.dart';
import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Authentication/google_signin.dart';

class StartingPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Something Went Wrong !"));
        } else if (snapshot.hasData) {
          return HomePage();
        } else {
          return StartingPageUI();
        }
      },
    );
  }
}
