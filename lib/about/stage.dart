import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortapplication/about/about.dart';
class about_stage extends StatefulWidget {
  const about_stage({ Key? key }) : super(key: key);

  @override
  State<about_stage> createState() => _about_ortaState();
}

class _about_ortaState extends State<about_stage> {
  @override
  Widget build(BuildContext context) {
     var scaffold = Scaffold(
      appBar: PreferredSize(
        //appbar büyüklüğü ve resmi ekledim.
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/orta3.jpg"),fit: BoxFit.fill))
          )
          ),
      ),
      //listview ile sayfanın kaydırılabilir olmasını sağladım.
      body: ListView(children: [
         Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            //gif ekledim, büyüklüğünü belirledim.
            height: 175,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/one.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/two.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/three.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/four.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/five.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/six.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/seven.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/eight.gif"),
            fit: BoxFit.cover,
          ),
        ),
            ),
          ),
          ),

           Padding(padding: EdgeInsets.all(5.0),
          child: Container(
            height: 175,
            color: Colors.black,
            child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/ten.gif"),
            fit: BoxFit.cover,
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
