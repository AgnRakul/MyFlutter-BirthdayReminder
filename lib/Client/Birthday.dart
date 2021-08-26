import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Birthday_add.dart';

// ignore: must_be_immutable
class Birthday extends StatefulWidget {
  List<dynamic>? nclist = [];
  Birthday({this.nclist});

  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  int currentIndex = 0;
  final currentyearAge = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                // color: Colors.blue,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Remind Me',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.045,
                        ),
                        Text('Up Next Event',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(""" "Vino Birthday 05 Feb 2020 "  """,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.045,
                      ),
                      Text('Reminders',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ))
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  // color: Colors.yellow,
                  height: MediaQuery.of(context).size.height / 1.9,
                  child: _customlistviewbuilder(),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          // color: Colors.green,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
      floatingActionButton: Container(
        // color: Colors.green,
        height: 65.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddBirthday()));
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  _customlistviewbuilder() {
    return ListView.builder(
        itemCount: currentlist.length,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  "${currentlist[index].title} Birthday ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 17,
                  )),
                )
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.84,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey[400]),
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.white,
                            )),
                        Text(
                          currentlist[index].datef,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                        Text(
                          'Age ${currentyearAge.year - currentlist[index].date}',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        });
  }
}
