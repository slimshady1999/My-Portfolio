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
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  context: context,
                  builder: (context) => Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(children: [
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            elevation: 12,
                            child: ListTile(
                              leading: Image.asset("images/facebook.png",
                                  height: 30,
                                  width: 35,
                                  fit: BoxFit.cover,
                                  color: Colors.purple),
                              title: const Text("Facebook",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900)),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.phone,
                                    color: Colors.purple,
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            elevation: 12,
                            child: ListTile(
                                leading: Image.asset("images/github-logo.png",
                                    height: 30,
                                    width: 35,
                                    fit: BoxFit.cover,
                                    color: Colors.purple),
                                title: const Text("Github",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w900)),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.phone,
                                      color: Colors.purple,
                                    ))),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            elevation: 12,
                            child: ListTile(
                                leading: Image.asset("images/twitter.png",
                                    height: 30,
                                    width: 35,
                                    fit: BoxFit.cover,
                                    color: Colors.purple),
                                title: const Text("Twitter",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w900)),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.phone,
                                      color: Colors.purple,
                                    ))),
                          ),
                        ),
                        const SizedBox(height: 30),

                        // POP Button//

                        Align(
                            alignment: Alignment.center,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                icon: const Icon(Icons.arrow_downward_outlined,
                                    color: Colors.purple, size: 45)))
                      ])));
            },
            child: const Icon(Icons.phone)),
      ),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 3.75,
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
                    height: 40,
                    width: 95,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text("PoRtFoLiO",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.95,
                  width: 195,
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
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 75,
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
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("DEVELOPER",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
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
        )
      ]),
    );
  }
}
