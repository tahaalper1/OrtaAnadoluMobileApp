import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class col extends StatefulWidget {
  const col({ Key? key }) : super(key: key);

  @override
  State<col> createState() => _colState();
}

class _colState extends State<col> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/col2.png"),fit: BoxFit.fill))
          )
          ),
      ),

        body: ListView(children: [
          // resimlerin ekranda sıralanması için listview özelliği verdim
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/blues1.png"),
            // resmi ekrana sığdırdım
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: Container(
            height: 200,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/ready1.png"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),
          ),

           Padding(padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.black,
            child: Container(
            height: 200,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/fee1.png"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),
          ),

           Padding(padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.black,
            child: Container(
            height: 200,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/coop1.png"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),
          ),

           Padding(padding: EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            color: Colors.black,
            child: Container(
            height: 200,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/the1.png"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),
          ),

          

        ],
        ),
      
        );
   
    return scaffold;
  }
}