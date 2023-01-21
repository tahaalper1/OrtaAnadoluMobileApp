import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class blu extends StatefulWidget {
  const blu({ Key? key }) : super(key: key);

  @override
  State<blu> createState() => _bluState();
}

class _bluState extends State<blu> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double yukseklik = ekranBilgisi.size.height;
    final double genislik = ekranBilgisi.size.width;

   var scaffold = Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/blu3.png"),fit: BoxFit.fill))
          )
          ),
      ),

        body: 
        
        Container(
          //arkaplan resmi ekledim
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/cevre.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: Column( children: [
          Padding(
            padding: EdgeInsets.all(yukseklik/100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                //Başlık ekledim
                Text("ORTA BLU",
                style: TextStyle(
                  //fontu düzenledim
                  fontFamily: "Aclonica",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: genislik/10,
                ),
                textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          //bilgi yazısı ekledim
          Yazi("ORTA BLU is on a mission to drive denim industry into a more sustainable future."
            "We believe denim has and will always have a special handprint on culture." 
            "That’s why ORTA BLU is in everything we do, at the intersection of where people, planet, purpose cooperate."
            "Our handprint reflects our present and embraces our sustainable future."
            "To make jeans matter for the next generations; we’ve adopted our proprietary 3 pillar mindset as our business model: Purpose, Product, Process.", genislik/18),
          ],),
        ),
        );
    return scaffold;
  }
}

class Yazi extends StatelessWidget{
  String icerik;
  double boyut;

  Yazi(this.icerik,this.boyut);

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(right: 8,left: 10),
      child: Text(icerik,style: TextStyle(fontSize: boyut,color: Colors.white),
      ),
    );
  }

}