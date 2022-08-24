import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
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
                        SizedBox(
                          height: 240,
                        ),
                        TextFormField(
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          )),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Username",
                            hintStyle: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username Empty!';
                            }
                            return null;
                          },
                          onChanged: (value) => {username = value},
                        ),
                        SizedBox(
                          height: 41,
                        ),
                        TextFormField(
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          )),
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Password",
                            hintStyle: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username Empty!';
                            }
                            return null;
                          },
                          onChanged: (value) => {password = value},
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () => {
                            if (_formKey.currentState!.validate())
                              {Navigator.pushNamed(context, MyRoutes.main)}
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
                                "Login ",
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
                        SizedBox(height: 138),
                        Text(
                          "Login with",
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
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset("asset/images/FacebookImage.png"),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset("asset/images/GoogleImage.png"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
