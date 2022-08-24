import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/screens/loginpage/welcome.dart';
import 'package:subscribe_task/utils/routes.dart';

class PhoneVerify extends StatefulWidget {
  const PhoneVerify({Key? key}) : super(key: key);

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  String p1 = '', p2 = '', p3 = '', p4 = '';
  bool otpVerify = false;
  bool resendOtp = false;
  bool verified = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 236),
                      Container(
                        width: 326,
                        height: 414,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 255, 255, 255),
                                  Color.fromARGB(255, 0, 0, 0)
                                ]),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "We sent an code to verify your phone ",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "98XXXXXX",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Image.asset(
                            "asset/images/verify.png",
                            height: 193.33,
                            width: 206.22,
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Enter your verification code",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Form(
                              child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 45,
                                    child: TextField(
                                      onChanged: (value) => {
                                        p1 = value,
                                        if (value.length == 1)
                                          {FocusScope.of(context).nextFocus()},
                                        otpComplete()
                                      },
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                    )),
                                SizedBox(
                                    width: 45,
                                    child: TextField(
                                      onChanged: (value) => {
                                        p2 = value,
                                        if (value.length == 1)
                                          {FocusScope.of(context).nextFocus()},
                                        otpComplete(),
                                        if (value.isEmpty || value.length == 0)
                                          {
                                            FocusScope.of(context)
                                                .previousFocus()
                                          }
                                      },
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                    )),
                                SizedBox(
                                    width: 45,
                                    child: TextField(
                                      onChanged: (value) => {
                                        p3 = value,
                                        if (value.length == 1)
                                          {FocusScope.of(context).nextFocus()},
                                        otpComplete(),
                                        if (value.isEmpty || value.length == 0)
                                          {
                                            FocusScope.of(context)
                                                .previousFocus()
                                          }
                                      },
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                    )),
                                SizedBox(
                                    width: 45,
                                    child: TextField(
                                      onChanged: (value) => {
                                        p4 = value,
                                        otpComplete(),
                                        if (value.isEmpty || value.length == 0)
                                          {
                                            FocusScope.of(context)
                                                .previousFocus()
                                          }
                                      },
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                    ))
                              ],
                            ),
                          ))
                        ]),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      otpVerify
                          ? GestureDetector(
                              onTap: () => {
                                {
                                  setState(() {
                                    verified = true;
                                  }),
                                  Future.delayed(Duration(seconds: 5), () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.welcome);
                                  })
                                },
                              },
                              child: Container(
                                width: 224,
                                height: 54,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromARGB(255, 101, 244, 205),
                                          Color.fromARGB(255, 90, 91, 243)
                                        ]),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    "Verify ",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => {
                                setState(() {
                                  resendOtp = true;
                                })
                              },
                              child: Container(
                                width: 224,
                                height: 54,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromARGB(255, 101, 244, 205),
                                          Color.fromARGB(255, 90, 91, 243)
                                        ]),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    "Request code ",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: resendOtp,
                        child: Text(
                          "OTP re-sent ",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Visibility(
                        visible: verified,
                        child: Text(
                          "Your Registration is completed.\nGive us a few seconds to \ntake you to homepage. ",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])),
      ),
    );
  }

  void otpComplete() {
    if (p1 != '' && p2 != '' && p3 != '' && p4 != '') {
      setState(() {
        otpVerify = true;
        resendOtp = false;
      });
    } else {
      setState(() {
        otpVerify = false;
      });
    }
  }
}
