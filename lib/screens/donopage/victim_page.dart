import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/models/victims.dart';
import 'package:subscribe_task/screens/donopage/donation_page.dart';

class VictimPage extends StatefulWidget {
  const VictimPage({Key? key}) : super(key: key);

  @override
  State<VictimPage> createState() => _VictimPageState();
}

class _VictimPageState extends State<VictimPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "asset/images/DarkThemeBackground1-013.png",
              ),
              fit: BoxFit.cover)),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
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
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 17, 0, 20),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon:
                            Icon(Icons.search, size: 18, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21)),
                      ),
                    )),
                Row(
                  children: [
                    Text(
                      "Total Amount Given",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 4, 30, 0),
                      height: 31,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff65F4CD)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "\$500",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 37, bottom: 23),
                    child: Text(
                      "Featured Givelists",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 120,
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: victimsList.length,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200, mainAxisSpacing: 14),
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    DonationPage(item: victimsList[index])));
                          },
                          child: Container(
                              width: 120,
                              height: 120,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(21),
                                        topRight: Radius.circular(21)),
                                    child: Image.asset(
                                      victimsList[index].imgurl,
                                      height: 97,
                                      width: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(top: 5),
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(21),
                                            bottomRight: Radius.circular(21)),
                                      ),
                                      child: Text(
                                        victimsList[index].type,
                                        style: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 9,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        )),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        );
                      }),
                ),
                Text(
                  "Giving History",
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Text(
                        "Date",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      Spacer(),
                      Text(
                        "Note",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                      Spacer(),
                      Text(
                        "Amount",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: donationHistory.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 34,
                          color: Color.fromARGB(36, 255, 255, 255),
                          child: Row(
                            children: [
                              Text(
                                donationHistory[index].date,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                              Spacer(),
                              Text(
                                "Fund" + donationHistory[index].fund,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                              Spacer(),
                              Text(
                                "\$" +
                                    donationHistory[index]
                                        .ammount
                                        .toStringAsPrecision(4),
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        )
      ]),
    )));
  }
}
