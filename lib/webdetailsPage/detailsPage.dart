import "package:flutter/material.dart";
import 'package:portfolio/profilePage/data.dart';

class WebProjecDetailstPage extends StatelessWidget {
  WebProjectData mount;
  WebProjecDetailstPage(this.mount, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final selectedItem = this.mount;
    return Scaffold(
        // appBar: AppBar(),

        body: SafeArea(
      child: Column(children: [
        Stack(children: [
          Image.asset("images/${selectedItem.image}",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 1.50,
              width: MediaQuery.of(context).size.width),
          AppBar(
            backgroundColor: Colors.transparent,
          )
        ]),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(Icons.add_link, color: Colors.purple),
                const Text("views",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700)),
                const SizedBox(height: 7),
                const Icon(Icons.favorite, color: Colors.purple),
                const SizedBox(height: 7),
                const Text("favorites",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700)),
                const SizedBox(height: 7),
                const SizedBox(height: 4),
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
                const SizedBox(height: 7),
                const Text("Ratings",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w700)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("About Project",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900)),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.purple,
                  child: Center(
                    child: Text("${selectedItem.description}",
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w900)),
                  ),
                )
              ],
            )
          ],
        )
      ]),
    ));
  }
}
