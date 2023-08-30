import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375,
              height: 812,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFF1FAFF)),
              child: Stack(
                children: [
                  ////FOR CHATGPT, Scrollable Part starts here
                  Positioned(
                    left: 17,
                    top: 101,
                    child: Container(
                      width: 341,
                      height: 1151,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 9,
                            top: 12,
                            child: Container(
                              width: 309,
                              height: 310.33,
                              child: Stack(
                                children: [
                                  //White background
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 309,
                                      height: 310.33,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(33.15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //Image Layout for Birthday Item
                                  Positioned(
                                    left: 17.24,
                                    top: 15.91,
                                    child: Container(
                                      width: 275.60,
                                      height: 208.21,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 275.60,
                                              height: 208.21,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFC4C4C4),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          26.52),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 291.76,
                                              height: 208.21,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/292x208"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          26.52),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Bookmark Icon on top right corner
                                  Positioned(
                                    left: 233.41,
                                    top: 31.83,
                                    child: Container(
                                      width: 34.48,
                                      height: 34.48,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 34.48,
                                              height: 34.48,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //Itinerary details text and rating chip.
                                  Positioned(
                                    left: 24,
                                    top: 243,
                                    child: Container(
                                      width: 253,
                                      height: 56,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 253,
                                              height: 56,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: SizedBox(
                                                      width: 253,
                                                      child: Text(
                                                        'Enchanted Garden Party\n',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF5E6980),
                                                          fontSize: 18.57,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 4,
                                                    top: 29,
                                                    child: Text(
                                                      '\$20',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF242527),
                                                        fontSize: 20,
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 184,
                                            top: 32,
                                            child: Container(
                                              width: 55.70,
                                              height: 23.87,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 55.70,
                                                      height: 23.87,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF5E6980),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      66.31),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 23.87,
                                                    top: 1.33,
                                                    child: Text(
                                                      '4.6',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13.26,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //Card ends
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //FOR CHATGPT, Scrollable Part ends here
                  //FOR CHATGPT, Top Fixed Bar starts here
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      height: 109,
                      padding: const EdgeInsets.only(
                        top: 48,
                        left: 22.50,
                        right: 75.50,
                        bottom: 31,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(color: Color(0xFFF1FAFF)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Handle button click (e.g., navigate back)
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color(0xFF5E6980),
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            'Choose a birthday itinerary',
                            style: TextStyle(
                              color: Color(0xFF5E6980),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //FOR CHATGPT, Top Fixed Bar ends here
                  //FOR CHATGPT, bottom bar starts here
                  Positioned(
                    left: 0,
                    top: 739,
                    child: Container(
                      width: 375,
                      height: 73,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 375,
                              height: 73,
                              decoration: BoxDecoration(
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
                            left: 64,
                            top: 21,
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 26.84,
                                    height: 26.51,
                                    child: Stack(children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        color: Colors.black,
                                      ),
                                    ]),
                                  ),
                                  const SizedBox(width: 80),
                                  Container(
                                    width: 39,
                                    height: 39,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/39x39"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 80),
                                  Container(
                                    width: 39,
                                    height: 39,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 39,
                                          height: 39,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 19.09,
                                                height: 19.09,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://via.placeholder.com/19x19"),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //FOR CHATGPT Bottom Bar Ends here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
