import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:subscribe_task/models/user.dart';

class IdCard extends StatefulWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  double percentage = 75;
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
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 39,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Column(children: [
                            Text(
                              "H E A L E R",
                              style: GoogleFonts.mulish(
                                  textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                            Text("Society",
                                style: TextStyle(
                                  fontFamily: 'HessleyAndreas',
                                  fontSize: 53.2,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              height: 13.73,
                            ),
                            QrImage(
                              data: "Name:" +
                                  u1.name +
                                  "\nDate of birth(BS)" +
                                  u1.dateBS,
                              version: QrVersions.auto,
                              backgroundColor: Colors.white,
                              size: 158,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Santosh Poudel",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "C B D U S E S",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 34, 209, 41),
                                fontWeight: FontWeight.w700,
                              )),
                            ),
                          ])),
                      SizedBox(
                        height: 39,
                      ),
                      Text(
                        "Expiry Date",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "2023-01-01",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 34, 209, 41),
                          fontWeight: FontWeight.w700,
                        )),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        "Suffering From",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Anxiety, Stress",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 34, 209, 41),
                          fontWeight: FontWeight.w700,
                        )),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        "Span Card Number",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "1234",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 34, 209, 41),
                          fontWeight: FontWeight.w700,
                        )),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        "Date of Registration",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "2021-02-01",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 34, 209, 41),
                          fontWeight: FontWeight.w700,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    )));
  }
}
