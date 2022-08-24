import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:subscribe_task/models/payments.dart';

class MyBankPage extends StatefulWidget {
  const MyBankPage({Key? key}) : super(key: key);

  @override
  State<MyBankPage> createState() => _MyBankPageState();
}

class _MyBankPageState extends State<MyBankPage> {
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
            Text("Wallet",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 29),
              height: 106,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(21, 19, 43, 20),
                    height: 67,
                    width: 67,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 101, 244, 205),
                            Color.fromARGB(255, 90, 91, 243)
                          ]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: CircularPercentIndicator(
                      radius: 43,
                      backgroundColor: Colors.black,
                      progressColor: Color.fromARGB(255, 233, 231, 231),
                      percent: percentage / 100,
                      center: Text(
                        "%$percentage",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "\$768.00",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 19),
              child: Text(
                "Payment History",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            if (paymentHistory.length == 0) ...[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: EdgeInsets.only(top: 20),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "NO PAYMENT HISTORY",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(
                                255,
                                142,
                                142,
                                142,
                              ))),
                    )),
              )
            ] else ...[
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: paymentHistory.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 21),
                        height: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(19, 26, 21, 21),
                              child: Image.asset(
                                paymentHistory[index].imgUrl,
                                height: 25,
                                width: 25,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 21, bottom: 8),
                                  child: Text(
                                    paymentHistory[index].plan,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  paymentHistory[index].subscibed_date,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text(
                                  "\$" +
                                      paymentHistory[index]
                                          .price
                                          .toStringAsFixed(2),
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ],
        ),
      ),
    )));
  }
}
