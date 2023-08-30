import 'package:birthday_itinerary_app/Pages/home_page.dart';
import 'package:birthday_itinerary_app/Pages/testpage.dart';
import 'package:flutter/material.dart';
import 'Pages/starting_page.dart';

void main() {
  runApp(const BirthdayApp());
}

class BirthdayApp extends StatelessWidget {
  const BirthdayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
