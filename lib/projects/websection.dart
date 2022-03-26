import "package:flutter/material.dart";

import '../profilePage/data.dart';

// Web Project Section //

class WebSection extends StatelessWidget {
  const WebSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.15,
      width: MediaQuery.of(context).size.width,
      // color: Colors.purple,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (context, index) {
            WebProjectData item1 = data[index];
            return Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 14,
                child: Container(
                    height: 181,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        // color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 9.0, top: 11),
                            child: Text("Approved",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w900)),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 9.0, top: 1),
                            child: Text("${item1.title}",
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.grey)),
                          ),
                          const SizedBox(height: 10),
                          Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("images/${item1.image}")),
                                ),
                                SizedBox(width: 20),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text("Developer: ",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 6.0),
                                            child: Text("Douglas Ibiba",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w800)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        height: 30,
                                        width: 210,
                                        // color: Colors.blue,
                                        child: Text("${item1.description}",
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      ),
                                    ])
                              ])
                        ])),
              ),
            );
          }),
    );
  }
}
