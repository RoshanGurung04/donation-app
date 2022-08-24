import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/utils/routes.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Welcome",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        height: 56,
                      ),
                      Text(
                        "On Board",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        "All the fun starts here! \nWanna feel these happy vibes? \nCreate an account and you’re all set to go",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () =>
                            {Navigator.pushNamed(context, MyRoutes.signup)},
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
                              "Sign up",
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
                        height: 56,
                      ),
                      Text(
                        "Have an account? Cool!",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                {Navigator.pushNamed(context, MyRoutes.login)},
                            child: Text(
                              "Login",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                          Text(
                            " then!",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () =>
                            {Navigator.pushNamed(context, MyRoutes.main)},
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
                              "Demo user",
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
                    ],
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
