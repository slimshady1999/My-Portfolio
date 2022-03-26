import "package:flutter/material.dart";
import 'package:portfolio/profilePage/profilePage.dart';
import 'package:portfolio/projects/mobilesection.dart';
import 'package:portfolio/projects/websection.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  int _currentIndex = 0;
  final List<Widget> screenList = [const WebSection(), const MobileSection()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Project Status",
              style: TextStyle(fontSize: 19, color: Colors.black54)),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.purple,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.purple,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          onTap: tapped,
          items: const [
            BottomNavigationBarItem(
                label: "Web Projects", icon: Icon(Icons.web)),
            BottomNavigationBarItem(
                label: "Mobile Projects", icon: Icon(Icons.mobile_friendly))
          ]),
      body: screenList[_currentIndex],
    );
  }

  void tapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
