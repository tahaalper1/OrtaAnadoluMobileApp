
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortapplication/about/contact.dart';
import 'package:ortapplication/about/orta.dart';
import 'package:ortapplication/about/stage.dart';



class about extends StatefulWidget {
  const about({ Key? key }) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: PreferredSize(
        // appbar büyüklüğünü ve resmini verdim
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/about11.png"),fit: BoxFit.fill))
          )
          ),
      ),

      body: 
      Column(
            children: [
              SizedBox(height: 20.0),
              Center( 
                  child: 
                  // button oluşturdum
                  InkWell(
                  onTap: () {
                    //butona basıldığında gideceği sayfayı belirttim
                    Navigator.push(context, MaterialPageRoute(builder : (context) => about_orta() ));
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.5),
                  child: 
                  Ink( 
                    //butona büyüklük verdim
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      //butona resim ekledim
                      image: DecorationImage(
                        image: AssetImage('resimler/factory1.png'),
                        // resmi ekrana tam sığdırdım
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Center(
                  child: 
                  InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder : (context) => about_stage() ));
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.5),
                  child: 
                  Ink( 
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: AssetImage('resimler/asama1.png'),
                        fit: BoxFit.cover,
                      ),
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Center(
                  child: 
                  InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder : (context) => contact()));
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.5),
                  child: 
                  Ink( 
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: AssetImage('resimler/contact1.png'),
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