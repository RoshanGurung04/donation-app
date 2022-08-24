import 'package:email_validator/email_validator.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscribe_task/models/user.dart';

class AccountPage extends StatefulWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String temp = "";
  String name = u1.name;
  String dateBS = u1.dateBS;
  String dateAD = u1.dateAD;
  String gender = u1.gender;
  String phonenum = u1.phonenum;
  String email = u1.email;
  String occupation = u1.occupation;
  String address = u1.address;
  String documentType = u1.documentType;
  bool editable = false;
  bool nameEdit = false;
  bool dobBSEdit = false;
  bool dobADEdit = false;
  bool phonenumEdit = false;
  bool occupationEdit = false;
  bool addressEdit = false;
  bool emailEdit = false;
  bool docEdit = false;
  bool invalidName = false;
  bool invalidDateBS = false;
  bool invalidDateAD = false;
  bool invalidEmail = false;
  bool invalidGender = false;
  bool invalidPhonenum = false;
  bool invalidOccupation = false;
  bool invalidAddress = false;
  bool invalidDoctype = false;
  bool genderEdit = false;

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
                padding: EdgeInsets.only(top: 39, bottom: 25),
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
              Row(
                children: [
                  Text(
                    "Personal Details ",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )),
                  ),
                  const Spacer(),
                  !editable
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              editable = !editable;
                            });
                          },
                          child: Text(
                            "Edit",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            (u1.name != name ||
                                    u1.dateBS != dateBS ||
                                    u1.dateAD != dateAD ||
                                    u1.gender != gender ||
                                    u1.phonenum != phonenum ||
                                    u1.email != email ||
                                    u1.occupation != occupation ||
                                    u1.address != address ||
                                    u1.documentType != documentType)
                                ? saveChanges()
                                : {};
                            setState(() {
                              editable = false;
                              nameEdit = false;
                              dobBSEdit = false;
                              dobADEdit = false;

                              phonenumEdit = false;
                              occupationEdit = false;
                              addressEdit = false;
                              emailEdit = false;
                              docEdit = false;
                              genderEdit = false;
                            });
                          },
                          child: Text(
                            "Done",
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 37),
                      child: Text(
                        "Full Name:",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
                      ),
                    ),
                    !nameEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = true;
                                      dobBSEdit = false;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = name;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 48,
                                child: Text(
                                  name,
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  )),
                                ),
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 6, bottom: 2),
                                height: 30,
                                child: TextField(
                                  autofocus: true,
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                    hintStyle: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none,
                                  ),
                                  onSubmitted: (value) {
                                    value.isNotEmpty
                                        ? validateName(value)
                                            ? setState(() {
                                                name = value;
                                                nameEdit = false;
                                                invalidName = false;
                                              })
                                            : setState(() {
                                                invalidName = true;
                                              })
                                        : setState(() {
                                            name = temp;
                                          });
                                  },
                                  onChanged: (value) {
                                    value.isNotEmpty
                                        ? validateName(value)
                                            ? setState(() {
                                                name = value;
                                                invalidName = false;
                                              })
                                            : setState(() {
                                                invalidName = true;
                                              })
                                        : setState(() {
                                            name = temp;
                                          });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Visibility(
                                    visible: invalidName,
                                    child: Text(
                                      "Invalid name",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    )),
                              )
                            ],
                          ),
                    Text(
                      "Date of Birth(B.S)",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !dobBSEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = true;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = dateBS;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                dateBS,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                autofocus: true,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                                decoration: InputDecoration(
                                    hintStyle: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onSubmitted: (value) {
                                  value.isNotEmpty
                                      ? setState(() {
                                          dateBS = value;

                                          dobBSEdit = false;
                                        })
                                      : setState(() {
                                          dobBSEdit = false;
                                        });
                                },
                                onChanged: (value) {
                                  value.isNotEmpty
                                      ? setState(() {
                                          dateBS = value;
                                        })
                                      : setState(() {
                                          dateBS = temp;
                                        });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Date of Birth(AD)",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !dobADEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = true;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = dateAD;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                dateAD,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                autofocus: true,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                                decoration: InputDecoration(
                                    hintStyle: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onSubmitted: (value) {
                                  value.isNotEmpty
                                      ? setState(() {
                                          dateAD = value;

                                          dobADEdit = false;
                                        })
                                      : setState(() {
                                          dobADEdit = false;
                                        });
                                },
                                onChanged: (value) {
                                  value.isNotEmpty
                                      ? setState(() {
                                          dateAD = value;
                                        })
                                      : setState(() {
                                          dateAD = temp;
                                        });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Gender",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !genderEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = dateAD;
                                      genderEdit = true;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                gender,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 26),
                            child: Container(
                              height: 30,
                              child: TextField(
                                autofocus: true,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )),
                                decoration: InputDecoration(
                                    hintStyle: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                    fillColor:
                                        Color.fromARGB(36, 255, 255, 255),
                                    filled: true,
                                    border: InputBorder.none),
                                onSubmitted: (value) {
                                  value.isNotEmpty
                                      ? setState(() {
                                          gender = value;

                                          genderEdit = false;
                                        })
                                      : null;
                                },
                                onChanged: (value) {
                                  value.isNotEmpty
                                      ? setState(() {
                                          gender = value;
                                        })
                                      : setState(() {
                                          gender = temp;
                                        });
                                },
                              ),
                            ),
                          ),
                    Text(
                      "Phone Number",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !phonenumEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = false;
                                      phonenumEdit = true;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = phonenum;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                phonenum,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 6, bottom: 2),
                                height: 30,
                                child: TextField(
                                  autofocus: true,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  decoration: InputDecoration(
                                      hintStyle: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )),
                                      fillColor:
                                          Color.fromARGB(36, 255, 255, 255),
                                      filled: true,
                                      border: InputBorder.none),
                                  onSubmitted: (value) {
                                    value.isNotEmpty
                                        ? validatePhonenum(value)
                                            ? setState(() {
                                                phonenum = value;
                                                invalidPhonenum = false;
                                                phonenumEdit = false;
                                              })
                                            : setState(() {
                                                invalidPhonenum = true;
                                              })
                                        : setState(() {
                                            phonenumEdit = false;
                                          });
                                  },
                                  onChanged: (value) {
                                    value.isNotEmpty
                                        ? validatePhonenum(value)
                                            ? setState(() {
                                                phonenum = value;
                                                invalidPhonenum = false;
                                              })
                                            : setState(() {
                                                invalidPhonenum = true;
                                              })
                                        : setState(() {
                                            phonenum = temp;
                                          });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Visibility(
                                    visible: invalidPhonenum,
                                    child: Text(
                                      "Invalid phone number",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    )),
                              )
                            ],
                          ),
                    Text(
                      "Email",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !emailEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = true;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = email;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                email,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 6, bottom: 26),
                                height: 30,
                                child: TextField(
                                  autofocus: true,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  decoration: InputDecoration(
                                      hintStyle: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )),
                                      fillColor:
                                          Color.fromARGB(36, 255, 255, 255),
                                      filled: true,
                                      border: InputBorder.none),
                                  onSubmitted: (value) {
                                    value.isNotEmpty
                                        ? EmailValidator.validate(value)
                                            ? setState(() {
                                                email = value;
                                                invalidEmail = false;
                                                emailEdit = false;
                                              })
                                            : setState(() {
                                                invalidEmail = true;
                                              })
                                        : setState(() {
                                            emailEdit = false;
                                          });
                                  },
                                  onChanged: (value) {
                                    value.isNotEmpty
                                        ? EmailValidator.validate(value)
                                            ? setState(() {
                                                email = value;
                                                invalidEmail = false;
                                              })
                                            : setState(() {
                                                invalidEmail = true;
                                              })
                                        : setState(() {
                                            email = temp;
                                          });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Visibility(
                                    visible: invalidEmail,
                                    child: Text(
                                      "Invalid email",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    )),
                              )
                            ],
                          ),
                    Text(
                      "Occupation",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !occupationEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = true;
                                      addressEdit = false;
                                      docEdit = false;
                                      temp = occupation;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                occupation,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 6, bottom: 26),
                                height: 30,
                                child: TextField(
                                    autofocus: true,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                    decoration: InputDecoration(
                                        hintStyle: GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        )),
                                        fillColor:
                                            Color.fromARGB(36, 255, 255, 255),
                                        filled: true,
                                        border: InputBorder.none),
                                    onSubmitted: (value) {
                                      value.isNotEmpty
                                          ? validateOccupation(value)
                                              ? setState(() {
                                                  occupation = value;
                                                  invalidOccupation = false;

                                                  occupationEdit = false;
                                                })
                                              : setState(() {
                                                  invalidOccupation = true;
                                                })
                                          : setState(() {
                                              occupationEdit = false;
                                            });
                                    },
                                    onChanged: (value) {
                                      value.isNotEmpty
                                          ? validateOccupation(value)
                                              ? setState(() {
                                                  occupation = value;
                                                  invalidOccupation = false;
                                                })
                                              : setState(() {
                                                  invalidOccupation = true;
                                                })
                                          : setState(() {
                                              occupation = temp;
                                            });
                                    }),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Visibility(
                                    visible: invalidOccupation,
                                    child: Text(
                                      "Invalid Occupation",
                                      style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      )),
                                    )),
                              )
                            ],
                          ),
                    Text(
                      "Address",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !addressEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = true;
                                      docEdit = false;
                                      temp = address;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                address,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 6, bottom: 26),
                                height: 30,
                                child: TextField(
                                  autofocus: true,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  decoration: InputDecoration(
                                      hintStyle: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )),
                                      fillColor:
                                          Color.fromARGB(36, 255, 255, 255),
                                      filled: true,
                                      border: InputBorder.none),
                                  onSubmitted: (value) {
                                    value.isNotEmpty
                                        ? validateAddress(value)
                                            ? setState(() {
                                                address = value;
                                                invalidAddress = false;
                                                addressEdit = false;
                                              })
                                            : setState(() {
                                                invalidAddress = true;
                                              })
                                        : setState(() {
                                            addressEdit = false;
                                            invalidAddress = false;
                                          });
                                  },
                                  onChanged: (value) {
                                    value.isNotEmpty
                                        ? validateAddress(value)
                                            ? setState(() {
                                                invalidAddress = false;
                                                address = value;
                                              })
                                            : setState(() {
                                                invalidAddress = true;
                                              })
                                        : setState(() {
                                            invalidAddress = false;
                                            address = temp;
                                          });
                                  },
                                ),
                              ),
                              Visibility(
                                  visible: invalidAddress,
                                  child: Text(
                                    "Invalid address",
                                    style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    )),
                                  ))
                            ],
                          ),
                    Text(
                      "Document type",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                    ),
                    !docEdit
                        ? GestureDetector(
                            onTap: () {
                              editable
                                  ? setState(() {
                                      nameEdit = false;
                                      dobBSEdit = false;
                                      dobADEdit = false;

                                      phonenumEdit = false;
                                      emailEdit = false;
                                      occupationEdit = false;
                                      addressEdit = false;
                                      docEdit = true;
                                      temp = documentType;
                                      genderEdit = false;
                                    })
                                  : {};
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 12, bottom: 33),
                              width: MediaQuery.of(context).size.width - 48,
                              child: Text(
                                documentType,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              ),
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.only(top: 6, bottom: 26),
                            height: 30,
                            child: TextField(
                              autofocus: true,
                              textAlignVertical: TextAlignVertical.bottom,
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              )),
                              decoration: InputDecoration(
                                  hintStyle: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )),
                                  fillColor: Color.fromARGB(36, 255, 255, 255),
                                  filled: true,
                                  border: InputBorder.none),
                              onSubmitted: (value) {
                                value.isNotEmpty
                                    ? setState(() {
                                        documentType = value;

                                        docEdit = false;
                                      })
                                    : setState(() {
                                        docEdit = false;
                                      });
                              },
                              onChanged: (value) {
                                value.isNotEmpty
                                    ? setState(() {
                                        documentType = value;
                                      })
                                    : setState(() {
                                        documentType = temp;
                                      });
                              },
                            ),
                          ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }

  Future saveChanges() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Save changes?"),
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  u1.name = name;
                  u1.dateBS = dateBS;
                  u1.dateAD = dateAD;
                  u1.gender = gender;
                  u1.phonenum = phonenum;
                  u1.email = email;
                  u1.occupation = occupation;
                  u1.documentType = u1.documentType;
                });
                Navigator.of(context).pop();
              },
              child: Text("Yes")),
          TextButton(
              onPressed: () {
                setState(() {
                  name = u1.name;
                  dateBS = u1.dateBS;
                  dateAD = u1.dateAD;
                  gender = u1.gender;
                  phonenum = u1.phonenum;
                  email = u1.email;
                  occupation = u1.occupation;
                  address = u1.address;
                  documentType = u1.documentType;
                });
                Navigator.of(context).pop();
              },
              child: Text("No"))
        ],
      ),
    );
  }

  bool validateName(String uname) {
    RegExp name = RegExp(
      r'^[a-zA-Z]+(?: [a-zA-Z]*)*$',
    );
    return name.hasMatch(uname);
  }

  bool validateAddress(String uaddress) {
    RegExp addr = RegExp(
        r'^[a-zA-Z]+(-[0-9]{1,2}){0,1}(,[a-zA-Z]+(-[0-9]{1,2}){0,2}?)*$');
    return addr.hasMatch(uaddress);
  }

  bool validateOccupation(String occ) {
    RegExp occupation = RegExp(
      r'^[a-zA-Z]+(?: [a-zA-Z]*)*$',
    );
    return occupation.hasMatch(occ);
  }

  bool validatePhonenum(String phnum) {
    RegExp num = RegExp(
      r'^((\+[0-9]{3})?[1-9][0-9]{9})*$',
    );
    return num.hasMatch(phnum);
  }

  DropdownMenuItem<String> buildMenuItems(String item) {
    return DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          )),
        ));
  }
}
