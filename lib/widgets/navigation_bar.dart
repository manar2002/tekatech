import 'package:flutter/material.dart';
import 'package:tekatech/screens/messenger_screen.dart';
import '../constants.dart';
import 'my_text.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {

  int currentIndex = 0;

  List content = [
    ['Chats', 'Chats', MessengerScreen()],
    ['Calls', 'Calls', const Center(child: Text('Calls'))],
    ['People', 'People', const Center(child: Text('People'))],
    ['Stories', 'Stories', const Center(child: Text('Stories'))],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content[currentIndex][2],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (v) {
          currentIndex = v;
          setState(() {});
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kGrayColor,
        items: content.map((e) {
          final index = content.indexOf(e);
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    getAsset(e[0]),
                    height: 30,
                    width: 30,
                    color: currentIndex == index ? kPrimaryColor : kBlackColor,
                  ),
                ),
                MyText(
                  data: e[1],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: currentIndex == index ? kPrimaryColor : kGrayColor,
                ),
              ],
            ),
            label: '',
          );
        }).toList(),
      ),
    );
  }
}