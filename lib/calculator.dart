// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final num_1 = TextEditingController();
  final num_2 = TextEditingController();
  final output = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
            child: Text("Calculator",
                style: GoogleFonts.roboto(
                    fontSize: 28, color: Colors.blueGrey[800]))),
      ),
      body: Column(
        
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("NUM1: ",
                    style: GoogleFonts.redressed(
                        fontSize: 24, color: Colors.white)),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // icon: Icon(Icons.mail,size:30,color: Colors.black),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hoverColor: Colors.red,
                        hintText: "Input first number",
                        // prefixIcon: Icon(Icons.numbers,color: Colors.blueGrey[900]),
                        fillColor: Colors.grey[200]),
                    controller: num_2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                Text("NUM2: ",
                    style: GoogleFonts.redressed(
                        fontSize: 24, color: Colors.white)),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // icon: Icon(Icons.mail,size:30,color: Colors.black),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hoverColor: Colors.red,
                        hintText: "Input second number",
                        // prefixIcon: Icon(Icons.numbers,color: Colors.blueGrey[900]),
                        fillColor: Colors.grey[200]),
                    controller: output,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("OUTP: ",
                    style: GoogleFonts.redressed(
                        fontSize: 24, color: Colors.white)),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // icon: Icon(Icons.mail,size:30,color: Colors.black),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hoverColor: Colors.red,
                        hintText: "Output",
                        // prefixIcon: Icon(Icons.numbers,color: Colors.blueGrey[900]),
                        fillColor: Colors.grey[200]),
                    controller: num_1,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 10),
           Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(
                          color: Colors.white,
                          height: 60,
                        )),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 8,top:8,bottom:8),
            child: Row(
              children: [
                SizedBox(width: size.width * 0.13),
                Container(
                  height: size.height * 0.16,
                  width: size.width * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/add.svg")
                  )
                ),
                SizedBox(width: size.width * 0.04),
                Container(
                  height: size.height * 0.16,
                  width: size.width * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // child: Center(
                  //   child: Icon(Icons.s,size: 40)
                  // )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 8,top:8),
            child: Row(
              children: [
                SizedBox(width: size.width * 0.13),
                Container(
                  height: size.height * 0.16,
                  width: size.width * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(Icons.add,size: 40)
                  )
                ),
                SizedBox(width: size.width * 0.04),
                Container(
                  height: size.height * 0.16,
                  width: size.width * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(Icons.add,size: 40)
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
