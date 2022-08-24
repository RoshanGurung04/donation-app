import 'package:flutter/material.dart';
import 'package:subscribe_task/screens/donopage/victim_page.dart';
import 'package:subscribe_task/screens/loginpage/login.dart';
import 'package:subscribe_task/screens/loginpage/phoneverification.dart';
import 'package:subscribe_task/screens/loginpage/signup.dart';
import 'package:subscribe_task/screens/loginpage/welcome.dart';
import 'package:subscribe_task/screens/profilepage/account_profile.dart';
import 'package:subscribe_task/screens/profilepage/id_card.dart';
import 'package:subscribe_task/screens/profilepage/my_bank.dart';
import 'package:subscribe_task/screens/profilepage/my_devices_and_credentials.dart';
import 'package:subscribe_task/screens/profilepage/profile_page.dart';
import 'package:subscribe_task/screens/profilepage/settings.dart';
import 'package:subscribe_task/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Welcome(),
        MyRoutes.account: (context) => AccountPage(),
        MyRoutes.myBank: (context) => MyBankPage(),
        MyRoutes.myDevicesandCredentials: (context) =>
            MyDevicesAndCredentialsPage(),
        MyRoutes.settings: (context) => Settings(),
        MyRoutes.idCard: (context) => IdCard(),
        MyRoutes.signup: ((context) => Signup()),
        MyRoutes.phoneVerify: ((context) => PhoneVerify()),
        MyRoutes.welcome: (context) => Welcome(),
        MyRoutes.main: (context) => MainPage(),
        MyRoutes.login: (context) => Login()
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _current_index = 0;
  List pages = [VictimPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: pages[_current_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: Color.fromARGB(255, 41, 40, 40),
        currentIndex: _current_index,
        iconSize: 17,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        selectedFontSize: 13,
        onTap: (index) {
          setState(() {
            _current_index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/heart1 1.png"),
              ),
              label: "Donation"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/images/Vectorprofile.png"),
              ),
              label: "Profile"),
        ],
      ),
    ));
  }
}
