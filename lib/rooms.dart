// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:raf_hotel/hotel_detail.dart';
import 'package:raf_hotel/rooms_card.dart';

class RoomList extends StatefulWidget {
  const RoomList({super.key});

  @override
  State<RoomList> createState() => _RoomListState();
}

class _RoomListState extends State<RoomList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 0, 145, 255),
          leading:

              //
              IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                const HotelDetail(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
          ),
          title: Text(
            "Room",
            style: GoogleFonts.playfairDisplay(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      imgPath: 'img/junior-suite-room.jpg',
                      roomType: 'Junior Suite Room'),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: RoomCard(
                      imgPath: 'img/double-room.jpg', roomType: 'Double Room'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
