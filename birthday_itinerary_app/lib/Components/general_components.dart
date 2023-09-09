import 'package:flutter/material.dart';

class FixedBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 739,
      child: Container(
        width: 375,
        height: 45,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 375,
                height: 73,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 14,
                      offset: Offset(0, -2),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 10,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigation route to home page button
                      },
                      child: Image.asset(
                        'assets/home page button selected.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 80),
                    GestureDetector(
                      onTap: () {
                        // Navigation route to explore page
                      },
                      child: Image.asset(
                        'assets/explore page button.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 80),
                    GestureDetector(
                      onTap: () {
                        // Navigation route to itinerary event page
                      },
                      child: Image.asset(
                        'assets/itinerary page button.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
