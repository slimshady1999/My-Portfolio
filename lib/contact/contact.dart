import "package:flutter/material.dart";

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height / 4.95,
                    width: MediaQuery.of(context).size.width / 2.20,
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(90),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            )),
                        const SizedBox(height: 6),
                        const Center(
                            child: Text("Contact Us",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)))
                      ],
                    )),
                const SizedBox(height: 20),

                // Image Section //

                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "images/contact.png",
                    height: 80,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),

                // Developer Name //

                const Align(
                  alignment: Alignment.center,
                  child: Text("Douglas Ibiba",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black87,
                          fontWeight: FontWeight.w900)),
                ),
                const SizedBox(height: 20),

                // List of Reachable Medium //

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
                    ),
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
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 20),

                // Contact Button //
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40,
                      width: 100,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30))),
                                context: context,
                                builder: (context) => Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Column(children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Card(
                                            elevation: 12,
                                            child: ListTile(
                                              leading: Image.asset(
                                                  "images/facebook.png",
                                                  height: 30,
                                                  width: 35,
                                                  fit: BoxFit.cover,
                                                  color: Colors.purple),
                                              title: const Text("Facebook",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w900)),
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
                                                leading: Image.asset(
                                                    "images/github-logo.png",
                                                    height: 30,
                                                    width: 35,
                                                    fit: BoxFit.cover,
                                                    color: Colors.purple),
                                                title: const Text("Github",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w900)),
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
                                                leading: Image.asset(
                                                    "images/twitter.png",
                                                    height: 30,
                                                    width: 35,
                                                    fit: BoxFit.cover,
                                                    color: Colors.purple),
                                                title: const Text("Twitter",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w900)),
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
                                                  Navigator.of(context)
                                                      .pop(context);
                                                },
                                                icon: const Icon(
                                                    Icons
                                                        .arrow_downward_outlined,
                                                    color: Colors.purple,
                                                    size: 50)))

                                        // POP Button //
                                      ]),
                                    ));
                          },
                          child: const Center(
                            child: Text("contact",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
