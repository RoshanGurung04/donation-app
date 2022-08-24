import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:subscribe_task/models/payments.dart';
import 'package:subscribe_task/models/victims.dart';
import 'package:subscribe_task/screens/donopage/components/card_builder.dart';
import 'package:subscribe_task/screens/donopage/components/stacked_image.dart';

class DonationPage extends StatefulWidget {
  final Victims item;
  const DonationPage({Key? key, required this.item}) : super(key: key);

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage>
    with TickerProviderStateMixin {
  int ammount = 0;
  @override
  Widget build(BuildContext context) {
    double target = 56900;
    double total = 43000;
    TabController _tabController =
        TabController(vsync: this, length: 2, initialIndex: 0);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
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
                padding: const EdgeInsets.only(top: 39, bottom: 25),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                widget.item.type,
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 29),
                height: 218,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(widget.item.imgurl),
                        fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 20,
                child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.red,
                    tabs: [
                      Tab(
                        text: "Summary",
                      ),
                      Tab(
                        text: "Donate",
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              widget.item.summary,
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Read More",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              height: 120,
                              color: Color.fromARGB(
                                38,
                                255,
                                255,
                                255,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 13, bottom: 16),
                                    child: Text(
                                      "Charity Target",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )),
                                    ),
                                  ),
                                  LinearPercentIndicator(
                                    percent: 43000 / 56900,
                                    progressColor: Colors.lightGreen,
                                    backgroundColor: Colors.white,
                                    trailing: Text(
                                      ((total / target) * 100)
                                              .floor()
                                              .toString() +
                                          "%",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 27),
                                    child: Row(
                                      children: [
                                        Text(
                                          "\$$total/\$$target",
                                          style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child: Text(
                                            "Raised",
                                            style: GoogleFonts.roboto(
                                                textStyle: const TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            )),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                            height: 20,
                                            child: buildStackedImages()),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Text(
                                            "+$donatorsNum donated",
                                            style: GoogleFonts.roboto(
                                                textStyle: const TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 27,
                            ),
                            Text(
                              "Payment Method",
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            Wrap(
                              spacing: 8,
                              children: [
                                for (var item in paymentWays)
                                  GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            15))),
                                            builder: (context) => Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: (Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Image.asset(item.imgUrl),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        item.identfier,
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                      TextField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        decoration:
                                                            InputDecoration(
                                                                hintStyle: GoogleFonts
                                                                    .roboto(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          51,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                )),
                                                                fillColor: Color
                                                                    .fromARGB(
                                                                        127,
                                                                        196,
                                                                        196,
                                                                        196),
                                                                filled: true,
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        "Amount:",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                      TextField(
                                                        controller:
                                                            TextEditingController(
                                                                text: ammount
                                                                    .toString()),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        decoration:
                                                            InputDecoration(
                                                                hintStyle: GoogleFonts
                                                                    .roboto(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          51,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                )),
                                                                fillColor: Color
                                                                    .fromARGB(
                                                                        127,
                                                                        196,
                                                                        196,
                                                                        196),
                                                                filled: true,
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        "Purpose:",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                      TextField(
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        decoration:
                                                            InputDecoration(
                                                                hintStyle: GoogleFonts
                                                                    .roboto(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          51,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                )),
                                                                fillColor: Color
                                                                    .fromARGB(
                                                                        127,
                                                                        196,
                                                                        196,
                                                                        196),
                                                                filled: true,
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        "Remarks",
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                      TextField(
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                        decoration:
                                                            InputDecoration(
                                                                hintStyle: GoogleFonts
                                                                    .roboto(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color
                                                                      .fromARGB(
                                                                          51,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                )),
                                                                fillColor: Color
                                                                    .fromARGB(
                                                                        127,
                                                                        196,
                                                                        196,
                                                                        196),
                                                                filled: true,
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(children: [
                                                        SizedBox(
                                                          width: 28,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      'Thankyou for donating')),
                                                            );
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          21),
                                                              gradient: LinearGradient(
                                                                  begin: Alignment
                                                                      .topCenter,
                                                                  end: Alignment.bottomCenter,
                                                                  colors: [
                                                                    Color.fromARGB(
                                                                        255,
                                                                        101,
                                                                        244,
                                                                        205),
                                                                    Color
                                                                        .fromARGB(
                                                                            255,
                                                                            90,
                                                                            91,
                                                                            243)
                                                                  ]),
                                                            ),
                                                            height: 30,
                                                            width: 120,
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "Donate",
                                                                style: GoogleFonts
                                                                    .roboto(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                )),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 41,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          21),
                                                              gradient: LinearGradient(
                                                                  begin: Alignment
                                                                      .topCenter,
                                                                  end: Alignment.bottomCenter,
                                                                  colors: [
                                                                    Color.fromARGB(
                                                                        255,
                                                                        101,
                                                                        244,
                                                                        205),
                                                                    Color
                                                                        .fromARGB(
                                                                            255,
                                                                            90,
                                                                            91,
                                                                            243)
                                                                  ]),
                                                            ),
                                                            height: 30,
                                                            width: 120,
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "Cancel",
                                                                style: GoogleFonts
                                                                    .roboto(
                                                                        textStyle:
                                                                            const TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                )),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ])
                                                    ],
                                                  )),
                                                ));
                                      },
                                      child: buildCard(item.imgUrl)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    ))));
  }

  Widget buildStackedImages() {
    final double size = 20;
    final double xShift = 5;

    final items = donators.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 1;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
