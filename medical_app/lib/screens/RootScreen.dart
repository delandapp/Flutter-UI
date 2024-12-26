import 'package:flutter/material.dart';
import 'package:medical_app/widgets/HomeWidget.dart';
import 'package:medical_app/widgets/ProfileWidget.dart';
import 'package:medical_app/widgets/SettingWidget.dart';

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key});

  @override
  State<Rootscreen> createState() => _RootscreenState();
}

class _RootscreenState extends State<Rootscreen> {
  List<Widget> pages = [Homewidget(), Profilewidget(), Settingwidget()];
  int index = 0;
  void handleTab(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          handleTab(index);
        },
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
