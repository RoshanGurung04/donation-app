import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:subscribe_task/models/models.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final ScrollController _scrollcontroller = ScrollController();
  String notificationFrequency = "Normal";
  List<String> notificationFrequencyOptions = [
    'Frequent',
    'Normal',
    'Periodically'
  ];
  bool pauseNotifications = false;
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
          Row(children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 15),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.pop(context),
            ),
            Spacer(),
            Text(
              "Settings",
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )),
            ),
            Spacer()
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Notifications",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 112,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                            36,
                            255,
                            255,
                            255,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Frequency",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                    icon: Icon(
                                      CupertinoIcons.forward,
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                      size: 14,
                                    ),
                                    hint: Text(
                                      notificationFrequency,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.5),
                                        fontWeight: FontWeight.w600,
                                      )),
                                    ),
                                    items: notificationFrequencyOptions
                                        .map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          )),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        notificationFrequency = newValue!;
                                      });
                                    }),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 2,
                            color: Color.fromARGB(
                              36,
                              255,
                              255,
                              255,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Frequency",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              Switch(
                                  value: pauseNotifications,
                                  inactiveTrackColor: Colors.white,
                                  activeColor: Color.fromARGB(255, 33, 32, 32),
                                  activeTrackColor: Colors.blue,
                                  inactiveThumbColor:
                                      Color.fromARGB(255, 33, 32, 32),
                                  onChanged: toggleSwitch)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 19),
                    Container(
                      height: 112,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                            36,
                            255,
                            255,
                            255,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 23,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Country\\Region",
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                Spacer(),
                                Icon(
                                  CupertinoIcons.forward,
                                  size: 14,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 2,
                              color: Color.fromARGB(
                                36,
                                255,
                                255,
                                255,
                              ),
                            ),
                            SizedBox(
                              height: 20.5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Change Password",
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                Spacer(),
                                Icon(
                                  CupertinoIcons.forward,
                                  size: 14,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 19),
                    Container(
                      height: 230,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                            36,
                            255,
                            255,
                            255,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 23,
                          ),
                          Row(
                            children: [
                              Text(
                                "About us",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.forward,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            height: 2,
                            color: Color.fromARGB(
                              36,
                              255,
                              255,
                              255,
                            ),
                          ),
                          SizedBox(
                            height: 20.5,
                          ),
                          Row(
                            children: [
                              Text(
                                "FAQ/Contact us",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.forward,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Divider(
                            height: 2,
                            color: Color.fromARGB(
                              36,
                              255,
                              255,
                              255,
                            ),
                          ),
                          SizedBox(
                            height: 20.5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Terms of use",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.forward,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Divider(
                            height: 2,
                            color: Color.fromARGB(
                              36,
                              255,
                              255,
                              255,
                            ),
                          ),
                          SizedBox(
                            height: 20.5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Privacy policy",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.forward,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Divider(
                            height: 2,
                            color: Color.fromARGB(
                              36,
                              255,
                              255,
                              255,
                            ),
                          ),
                          SizedBox(
                            height: 20.5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Help/Feedback",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.forward,
                                size: 14,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }

  void toggleSwitch(bool value) {
    pauseNotifications
        ? setState(() {
            pauseNotifications = false;
          })
        : setState(() {
            pauseNotifications = true;
          });
  }
}
