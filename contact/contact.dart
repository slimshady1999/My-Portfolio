import "package:flutter/material.dart";

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double backgroundHeight = 230;
    double detailstop = 190;
    double detailsleftpadding = 25;
    double detailsrightpadding = 25;

    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                  ),
                  // isScrollControlled: true,
                  context: context,
                  builder: (context) => Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Column(
                        children: const [
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.facebook, color: Colors.blue),
                              title: Text(
                                "Contact via Facebook",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.airplanemode_active,
                                  color: Colors.blue),
                              title: Text(
                                "Contact via Twitter",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.phone, color: Colors.blue),
                              title: Text(
                                "Contact via Phone Call",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )));
            },
            child: Icon(Icons.phone, color: Colors.white)),
        body: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: backgroundHeight,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink,
                child: Column(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 47),
                            height: 65,
                            width: MediaQuery.of(context).size.width / 2.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/man2.png")))),
                        const SizedBox(height: 8),
                        const Text("Douglas Ibiba",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        const Icon(Icons.contact_phone,
                            size: 30, color: Colors.white),
                      ],
                    ),
                  )
                ]),
              ),
              Positioned(
                top: detailstop,
                left: detailsleftpadding,
                right: detailsrightpadding,
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 2.55,
                        width: MediaQuery.of(context).size.width / 1.10,
                        color: Colors.blue,
                        child: Column(children: [
                          const Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.facebook, color: Colors.blue),
                              title: Text(
                                "Contact via Facebook",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.airplanemode_active,
                                  color: Colors.blue),
                              title: Text(
                                "Contact via Twitter",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Icon(Icons.phone, color: Colors.blue),
                              title: Text(
                                "Contact via Phone Call",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 40,
                            width: 112,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                            ),
                          )
                        ]))),
              )
            ]),
          ],
        ));
  }
}
