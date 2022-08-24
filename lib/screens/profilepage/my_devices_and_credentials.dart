import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:subscribe_task/models/models.dart';

class MyDevicesAndCredentialsPage extends StatefulWidget {
  const MyDevicesAndCredentialsPage({Key? key}) : super(key: key);

  @override
  State<MyDevicesAndCredentialsPage> createState() =>
      _MyDevicesAndCredentialsPageState();
}

class _MyDevicesAndCredentialsPageState
    extends State<MyDevicesAndCredentialsPage> {
  final ScrollController _scrollcontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "asset/images/DarkThemeBackground1-013.png",
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 39, bottom: 24),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Devices",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 6, bottom: 42),
                        height: 420,
                        child: RawScrollbar(
                          thumbColor: Colors.white,
                          controller: _scrollcontroller,
                          isAlwaysShown: true,
                          radius: Radius.circular(10),
                          thickness: 3,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              controller: _scrollcontroller,
                              itemCount: myDevices.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 32),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.phone_android,
                                            size: 22,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Text(myDevices[index].name,
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 11),
                                    Text("App Version",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(myDevices[index].appVersion,
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text("Added on",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(myDevices[index].addedDate,
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ))
                                  ],
                                );
                              }),
                        )),
                    Text(" Credentials",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text("Zeal Heal",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("98xxxxxxxxx",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Added on:",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Text("2021-08-12 09:04:32 PM",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Last login:",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Text("2021-08-12 09:04:32 PM",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    )));
  }
}
