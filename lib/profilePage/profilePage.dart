import "package:flutter/material.dart";
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio/profilePage/data.dart';
import '../mobileDetailsPage/mobilePage.dart';
import '../webdetailsPage/detailsPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _height = 290;
    const double _details_height = 215;
    const double _details_width = 89;

    return Scaffold(
        backgroundColor: Colors.grey[350],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: _height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: const EdgeInsets.only(top: 50),
                          height: 159,
                          width: 200,
                          child: Column(children: [
                            const CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage("images/man2.png")),
                            const SizedBox(height: 4),
                            const Text("Douglas Ibiba",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 4),
                            const Text("Port Harcourt, Nigeria",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 4),
                            SizedBox(
                              height: 20,
                              width: 80,
                              child: Row(children: const [
                                Icon(Icons.star, color: Colors.white, size: 14),
                                Icon(Icons.star, color: Colors.white, size: 14),
                                Icon(Icons.star, color: Colors.white, size: 14),
                                Icon(Icons.star, color: Colors.white, size: 14),
                                Icon(Icons.star, color: Colors.white, size: 14),
                              ]),
                            )
                          ])),
                    ),
                  ),

                  // Widget Sections //

                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        margin: const EdgeInsets.only(top: 247),
                        // height: MediaQuery.of(context).size.height / 1.0,
                        width: MediaQuery.of(context).size.width / 1.10,
                        // color: Colors.blue,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(children: [
                            NumberOfProjectSection(),
                            SizedBox(height: 10),
                            SkillBarSection(),
                            SizedBox(height: 10),
                            WebProjectSection(),
                            SizedBox(height: 20),
                            MobileProjectSection(),
                            SizedBox(height: 20),
                            SocialMediaSection()
                          ]),
                        )),
                  ),
                  AppBar(backgroundColor: Colors.transparent, elevation: 0),
                ],
              ),
            ],
          ),
        ));
  }
}

// Number of projects section //

class NumberOfProjectSection extends StatelessWidget {
  const NumberOfProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        height: 95,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            height: 60,
            width: 110,
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.wordpress, color: Colors.purple, size: 35),
              ),
              Column(children: const [
                Text(
                  "6",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 26, 26, 26)),
                ),
                SizedBox(height: 3),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.0,
                  ),
                  child: Text(
                    "Projects",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                )
              ])
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: SizedBox(
              height: 60,
              width: 110,
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.mobile_friendly,
                      color: Colors.purple, size: 35),
                ),
                Column(children: const [
                  Text(
                    "4",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 26, 26, 26)),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.0,
                    ),
                    child: Text(
                      "Projects",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  )
                ])
              ]),
            ),
          )
        ]),
      ),
    );
  }
}

// Skill Bar Section //

class SkillBarSection extends StatelessWidget {
  const SkillBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Colors.pink,
        ),
        child: Column(children: [
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Skill",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.work, size: 30, color: Colors.purple),
                  )
                ]),
          ),
          const SizedBox(height: 5),

          // Skill Bar Percentage//

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text("Wordpress",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                  const SizedBox(height: 5),
                  CircularPercentIndicator(
                    radius: 60,
                    percent: 0.9,
                    animation: true,
                    animationDuration: 2000,
                    backgroundColor: Colors.white,
                    progressColor: Colors.purple,
                    center:
                        const Text("90%", style: TextStyle(color: Colors.grey)),
                    lineWidth: 5.0,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("Flutter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                  const SizedBox(height: 5),
                  CircularPercentIndicator(
                    radius: 60,
                    animation: true,
                    percent: 0.7,
                    animationDuration: 2000,
                    backgroundColor: Colors.white,
                    progressColor: Colors.purple,
                    lineWidth: 5.0,
                    center:
                        const Text("70%", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("Python",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                  const SizedBox(height: 5),
                  CircularPercentIndicator(
                    radius: 60,
                    animation: true,
                    percent: 0.7,
                    animationDuration: 2000,
                    backgroundColor: Colors.white,
                    progressColor: Colors.purple,
                    center:
                        const Text("70%", style: TextStyle(color: Colors.grey)),
                    lineWidth: 5.0,
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}

// web Project Section //

class WebProjectSection extends StatelessWidget {
  const WebProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.30,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Colors.pink,
        ),
        child: Column(children: [
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.purple,
                // borderRadius: BorderRadius.circular(13),
                border: Border(bottom: BorderSide(color: Colors.white))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Web Projects",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.work, size: 30, color: Colors.white),
                  )
                ]),
          ),
          const SizedBox(height: 12),

          // Project section//
          Container(
            height: MediaQuery.of(context).size.height / 1.50,
            width: MediaQuery.of(context).size.width,
            // color: Colors.blue,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  WebProjectData item1 = data[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Card(
                      elevation: 16,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.30,
                        width: MediaQuery.of(context).size.width / 1.35,
                        // color: Colors.pink,
                        child: Column(
                          children: [
                            Image.asset("images/${item1.image}"),
                            Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  SizedBox(height: 10),
                                  Container(
                                    height: 40,
                                    width: 195,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "${item1.title}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Container(
                                      margin: const EdgeInsets.only(left: 35),
                                      child: Text("${item1.description}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                              fontSize: 12))),
                                  const SizedBox(height: 12),
                                  Container(
                                      height: 40,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text("Built with",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 17)),
                                      )),
                                  const SizedBox(height: 10),
                                  Text("${item1.technology}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15)),
                                  const SizedBox(height: 12),
                                  Container(
                                    margin: const EdgeInsets.only(left: 90),
                                    child: Row(
                                      children: [
                                        Icon(item1.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item1.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item1.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item1.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item1.icon,
                                            color: Colors.yellow, size: 20),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.purple,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      WebProjecDetailstPage(
                                                          item1)));
                                        },
                                        child: Center(
                                          child: Text("${item1.button}",
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  )
                                ]))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: data.length),
          )
        ]));
  }
}

// Mobile Project Section //

class MobileProjectSection extends StatelessWidget {
  const MobileProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.30,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Colors.pink,
        ),
        child: Column(children: [
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.purple,
                // borderRadius: BorderRadius.circular(13),
                border: Border(bottom: BorderSide(color: Colors.white))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Mobile Projects",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.work, size: 30, color: Colors.white),
                  )
                ]),
          ),
          const SizedBox(height: 12),

          // Project section//
          Container(
            height: MediaQuery.of(context).size.height / 1.50,
            width: MediaQuery.of(context).size.width,
            // color: Colors.blue,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  MobileProjectData item2 = data1[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Card(
                      elevation: 16,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.30,
                        width: MediaQuery.of(context).size.width / 1.35,
                        // color: Colors.pink,
                        child: Column(
                          children: [
                            Image.asset("images/${item2.image}",
                                height: 140, width: 160),
                            Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  const SizedBox(height: 10),
                                  Container(
                                    height: 40,
                                    width: 195,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "${item2.title}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                      margin: const EdgeInsets.only(left: 35),
                                      child: Text("${item2.description}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                              fontSize: 12))),
                                  const SizedBox(height: 12),
                                  Container(
                                      height: 40,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text("Built with",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 17)),
                                      )),
                                  const SizedBox(height: 10),
                                  Text("${item2.technology}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15)),
                                  const SizedBox(height: 12),
                                  Container(
                                    margin: const EdgeInsets.only(left: 90),
                                    child: Row(
                                      children: [
                                        Icon(item2.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item2.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item2.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item2.icon,
                                            color: Colors.yellow, size: 20),
                                        Icon(item2.icon,
                                            color: Colors.yellow, size: 20),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 40,
                                    width: 110,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.purple,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MobileProjectDetailsPage(
                                                          item2)));
                                        },
                                        child: Center(
                                          child: Text("${item2.button}",
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  )
                                ]))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: data1.length),
          )
        ]));
  }
}

// Social Media Section //

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.95,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //  color: Colors.pink,
        ),
        child: Column(children: [
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(13),
                border: Border(bottom: BorderSide(color: Colors.white))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Social Mediums",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.group, size: 30, color: Colors.purple),
                  )
                ]),
          ),
          SizedBox(height: 12),

          // Project section//
          Container(
              height: MediaQuery.of(context).size.height / 2.9,
              width: MediaQuery.of(context).size.width,
              // color: Colors.purple,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    SocialMediaData item3 = data2[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Card(
                        elevation: 16,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.11,
                          width: MediaQuery.of(context).size.width / 1.35,
                          // color: Colors.pink,
                          child: Column(
                            children: [
                              Image.asset("images/${item3.image}",
                                  height: 60, width: 70, color: Colors.purple),
                              Align(
                                  alignment: Alignment.center,
                                  child: Column(children: [
                                    SizedBox(height: 10),
                                    Container(
                                      height: 34,
                                      width: 195,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          "${item3.title}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      height: 40,
                                      width: 120,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.purple,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Center(
                                            child: Text("${item3.buttontitle}",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: data2.length))
        ]));
  }
}
