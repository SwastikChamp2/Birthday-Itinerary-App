import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Authentication/google_signin.dart';

class StartingPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: 375,
              height: 812,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Color(0xFFA1DEFB)),
              child: Stack(
                children: [
                  Positioned(
                    left: -249,
                    top: 65,
                    child: Container(
                      width: 638,
                      height: 676,
                      //big circle
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD7EFFB),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 38,
                    top: 224,
                    child: Container(
                      width: 237,
                      height: 401,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 2,
                            top: 85,
                            child: Text(
                              'LIKE NEVER BEFORE',
                              style: TextStyle(
                                color: Color(0xFF425884),
                                fontSize: 25,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 0,
                            top: 25,
                            child: Text(
                              'BIRTHDAY',
                              style: TextStyle(
                                color: Color(0xFF425884),
                                fontSize: 48,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'HAVE A ',
                              style: TextStyle(
                                color: Color(0xFF425884),
                                fontSize: 25,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 5,
                            top: 140,
                            child: SizedBox(
                              width: 231,
                              child: Text(
                                'Say goodbye to planning stress and hello to a curated birthday extravaganza! transforms birthdays into a seamless blend of excitement, elegance, and surprise',
                                style: TextStyle(
                                  color: Color(0xFF425884),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 351,
                            child: ElevatedButton(
                              onPressed: () async {
                                // Code for Sign in
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Ink(
                                width: 156,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(-0.98, -0.22),
                                    end: Alignment(0.98, 0.22),
                                    colors: [
                                      Color(0xFF8BD8F9),
                                      Color(0xFF5395FF),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                  child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 272,
                    top: -79,
                    child: Container(
                      width: 249,
                      height: 243,
                      //top right most corner circle
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xCCD7EFFB), Color(0x00D7EFFB)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33D7EFFB),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 217,
                    top: 647,
                    child: Container(
                      width: 249,
                      height: 243,
                      //bottom big circle
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter, //Alignment.topCenter
                          end: Alignment.topLeft, //Alignment.bottomCenter
                          colors: [Color(0xCCD7EFFB), Color(0x00D7EFFB)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33D7EFFB),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 117,
                    top: 741,
                    child: Container(
                      width: 127,
                      height: 124,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter, //Alignment.topCenter
                          end: Alignment.topLeft, //Alignment.bottomCenter
                          colors: [Color(0xCCD7EFFB), Color(0x00D7EFFB)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33D7EFFB),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 187,
                    top: -51,
                    child: Container(
                      width: 127,
                      height: 124,
                      //top circle 1
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xCCD7EFFB), Color(0x00D7EFFB)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33D7EFFB),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
