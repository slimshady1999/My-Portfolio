import "package:flutter/material.dart";
import 'package:portfolio/contact/contact.dart';

import '../profilePage/profilePage.dart';
import '../projects/projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 60,
        width: 90,
        child: FloatingActionButton(
            backgroundColor: Colors.purple,
            onPressed: () {},
            child: const Icon(Icons.phone)),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.80,
          width: MediaQuery.of(context).size.width,
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text("PoRtFoLiO",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.50,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.purple,
                      image: DecorationImage(
                          image: AssetImage("images/workingman1.png")),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(120),
                          topLeft: Radius.circular(10))),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: MediaQuery.of(context).size.height /* 2.20*/,
          width: MediaQuery.of(context).size.width,
          // color: Colors.purple,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 101,
                  width: 290,
                  // color: Colors.blue,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "FLUTTER & WORDPRESS",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("DEVELOPER",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        )
                      ]),
                ),
              ),
              Card(
                color: Colors.purple,
                elevation: 10.0,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProjectPage()));
                  },
                  title: const Text("Projects",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  trailing: const Icon(Icons.edit, color: Colors.white),
                ),
              ),
              Card(
                elevation: 12.0,
                child: ListTile(
                  enabled: true,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
                  },
                  title: const Text("Profile",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  trailing: const Icon(Icons.person, color: Colors.purple),
                ),
              ),
              Card(
                elevation: 12.0,
                child: ListTile(
                  enabled: true,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ContactPage()));
                  },
                  title: const Text("Contact Us",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  trailing: const Icon(Icons.phone, color: Colors.purple),
                ),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
