// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, duplicate_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raf_hotel/hotel_detail.dart';

class HotelCard extends StatelessWidget {
  final String imgPath;

  const HotelCard({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 18.0, right: 18),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgPath), fit: BoxFit.cover, scale: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enjoy your\nVacation",
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 20,
                      endIndent: 200,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Text(
                          "RAF Hotel",
                          style: GoogleFonts.playfairDisplay(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HotelDetail()));
                                },
                                child: Container(
                                  height: 30.4,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.6),
                                      color: Colors.white),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      child: FittedBox(
                                        child: Text(
                                          'Explore now',
                                          style: GoogleFonts.nunitoSans(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
