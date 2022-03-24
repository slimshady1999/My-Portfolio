import "package:flutter/material.dart";

class ProjectPage extends StatelessWidget {
  const ProjectPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
         leading: 
         IconButton(icon: const Icon(Icons.arrow_back_ios,), onPressed: (){ 
           Navigator.pop(context);
         },)
      ),
      
    );
  }
}