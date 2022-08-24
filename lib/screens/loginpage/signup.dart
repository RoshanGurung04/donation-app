import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/utils/routes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:email_validator/email_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  bool uploadedDocs = false;
  String name = '';
  String password = '';
  String email = '';
  String phone = '';
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
                          height: 200,
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
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Username cannot be empty';
                              }
                              return null;
                            },
                            onChanged: (text) {
                              setState(() {
                                name = text;
                              });
                            }),
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
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Email Address",
                            hintStyle: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Email cannot be empty';
                            }
                            if (!EmailValidator.validate(text)) {
                              return "Invalid Email";
                            }
                            return null;
                          },
                          onChanged: (text) {
                            setState(() {
                              email = text;
                            });
                          },
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
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Password cannot be empty';
                            }
                            if (text.length < 4) {
                              return "Password too short";
                            }
                            return null;
                          },
                          onChanged: (text) {
                            setState(() {
                              password = text;
                            });
                          },
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
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Phone number",
                            hintStyle: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Phonenumber cannot be empty';
                            }
                            return null;
                          },
                          onChanged: (text) {
                            setState(() {
                              phone = text;
                            });
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              uploadedDocs = !uploadedDocs;
                            });
                          },
                          child: Container(
                            width: 224,
                            height: 54,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    uploadedDocs
                                        ? Color.fromARGB(255, 101, 244, 205)
                                            .withOpacity(0.5)
                                        : Color.fromARGB(255, 101, 244, 205),
                                    uploadedDocs
                                        ? Color.fromARGB(255, 90, 91, 243)
                                            .withOpacity(0.5)
                                        : Color.fromARGB(255, 90, 91, 243)
                                  ]),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset.zero,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "UPLOAD ",
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
                          height: 21,
                        ),
                        Text(
                          "Submit your Document Here ",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "(Example: Passport/ Citizenship) ",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 138, 136, 136),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: uploadedDocs
                              ? () => {
                                    if (_formKey.currentState!.validate())
                                      {
                                        Navigator.pushNamed(
                                            context, MyRoutes.phoneVerify)
                                      }
                                  }
                              : null,
                          child: Container(
                            width: 224,
                            height: 54,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    !uploadedDocs
                                        ? Color.fromARGB(255, 101, 244, 205)
                                            .withOpacity(0.5)
                                        : Color.fromARGB(255, 101, 244, 205),
                                    !uploadedDocs
                                        ? Color.fromARGB(255, 90, 91, 243)
                                            .withOpacity(0.5)
                                        : Color.fromARGB(255, 90, 91, 243)
                                  ]),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset.zero,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Sign up ",
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
              ),
            ])),
      ),
    );
  }
}
