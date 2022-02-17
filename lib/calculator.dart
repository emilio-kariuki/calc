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
  var num1 = 0, num2 = 0, sum = 0;
  void doAddition() {
    setState(() {
      num1 = int.parse(num_1.text);
      num2 = int.parse(num_2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(num_1.text);
      num2 = int.parse(num_2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(num_1.text);
      num2 = int.parse(num_2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(num_1.text);
      num2 = int.parse(num_2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      num_1.text = "0";
      num_2.text = "0";
    });
  }

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
      body: SingleChildScrollView(
        child: Column(
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
                      keyboardType: TextInputType.number,
                      // obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  num_2.clear();
                                });
                              },
                              icon: Icon(Icons.clear),
                              color: Colors.black),
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
                      keyboardType: TextInputType.number,
                      // obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  num_2.clear();
                                });
                              },
                              icon: Icon(Icons.clear),
                              color: Colors.black),
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
                  Text("$sum",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.white))
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
              padding:
                  const EdgeInsets.only(left: 15, right: 8, top: 8, bottom: 8),
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.13),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        doAddition();
                      });
                    },
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: SvgPicture.asset("assets/addition.svg",
                                height: size.height * 0.04))),
                  ),
                  SizedBox(width: size.width * 0.04),
                  GestureDetector(
                    onTap: doMul,
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: SvgPicture.asset("assets/multiply.svg",
                                height: size.height * 0.06))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 8, top: 8),
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.13),
                  GestureDetector(
                    onTap: doSub,
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: SvgPicture.asset("assets/minus.svg",
                                height: size.height * 0.04))),
                  ),
                  SizedBox(width: size.width * 0.04),
                  GestureDetector(
                    onTap: doDiv,
                    child: Container(
                        height: size.height * 0.16,
                        width: size.width * 0.32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: SvgPicture.asset("assets/divide.svg",
                                height: size.height * 0.06))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
