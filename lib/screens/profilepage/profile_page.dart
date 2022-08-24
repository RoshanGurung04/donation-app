import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/utils/routes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "asset/images/DarkThemeBackground1-013.png",
                      ),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 39),
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
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("asset/images/profile.png"),
                            radius: 90,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 26, bottom: 11),
                            child: Text(
                              "Zeal Heal",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                          ),
                          Text(
                            "+97XXXXXXXXX",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                          Container(
                            height: 52,
                            width: 213,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(vertical: 35),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff65F4CD)),
                              borderRadius: BorderRadius.circular(21),
                            ),
                            child: Text(
                              "Balance: \$ 768.00",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 34, top: 23),
                            child: InkWell(
                              onTap: () => {
                                Navigator.pushNamed(context, MyRoutes.account)
                              },
                              child: Row(
                                children: [
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 6, right: 36),
                                      child: ImageIcon(
                                        AssetImage(
                                            "asset/images/informationicon.png"),
                                        color: Colors.white,
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Account",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                      ),
                                      Text(
                                        "View your personal details",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 34, top: 23),
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(top: 6, right: 36),
                                    child: Icon(
                                      Icons.account_balance,
                                      color: Colors.white,
                                    )),
                                GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, MyRoutes.myBank),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "My Bank Account",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                      ),
                                      Text(
                                        "Connected Banks",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.myDevicesandCredentials),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 34, top: 23),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 6, right: 36),
                                      child: Icon(
                                        Icons.devices,
                                        color: Colors.white,
                                      )),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 143,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "My Device and Credentials",
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          )),
                                        ),
                                        Text(
                                          "Manage device, credentials & notification IDS",
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          )),
                                          softWrap: true,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, MyRoutes.settings),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 34, top: 23),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 6, right: 36),
                                      child: Icon(
                                        Icons.settings,
                                        color: Colors.white,
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Settings",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                      ),
                                      Text(
                                        "Manage Setings",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, MyRoutes.idCard),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 34, top: 23),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 6, right: 36),
                                      child: Icon(
                                        Icons.qr_code,
                                        color: Colors.white,
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Generate ID card",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                      ),
                                      Text(
                                        "Generate ID card and QR code",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.welcome);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 34, top: 23),
                              child: Row(
                                children: [
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 6, right: 36),
                                      child: Icon(
                                        Icons.exit_to_app,
                                        color: Colors.white,
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Logout",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                      ),
                                      Text(
                                        "Signout from this device",
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )))
    ]));
  }
}
