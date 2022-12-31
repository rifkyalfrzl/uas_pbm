// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raf_hotel/hotel_card.dart';
import 'package:raf_hotel/rooms_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                      child: Text(
                        'RAF Hotel',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 18, right: 10.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications),
                              iconSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Based on user experience',
                    style: GoogleFonts.nunitoSans(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 253,
                  width: MediaQuery.of(context).size.width,
                  child: HotelCard(imgPath: 'img/raf-hotel.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "For You",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: RoomCard(
                      imgPath: 'img/standart-room.jpg',
                      roomType: 'Standart Room'),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: RoomCard(
                      imgPath: 'img/deluxe-room.jpg', roomType: 'Deluxe Room'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
