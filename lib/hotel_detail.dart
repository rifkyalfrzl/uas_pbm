// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raf_hotel/homepage.dart';
import 'package:raf_hotel/rooms.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/raf-hotel.jpg'), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(67, 0, 0, 0)),
                        //
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              const HomePage(),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white70,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: const Color.fromARGB(65, 0, 0, 0),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Located at Bali, RAF hotel is a perfect destination to spend unforgettable moments with your loved ones. This 30-suite room luxurious hotel is within walking distance to all the fun and leading places that make your perfect Bali Boutique Hotel vacation a vibrant and authentic one.",
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          'Start from ',
                                          style: GoogleFonts.playfairDisplay(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          '400K/Room',
                                          style: GoogleFonts.playfairDisplay(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RoomList()));
                                    },
                                    child: Container(
                                      height: 30.4,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9.6),
                                          color: Colors.white),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          child: FittedBox(
                                            child: Text(
                                              'Booking Now',
                                              style: GoogleFonts.nunitoSans(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
