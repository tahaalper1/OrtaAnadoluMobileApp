import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({ Key? key }) : super(key: key);

  @override
  State<contact> createState() => _about_ortaState();
}

class _about_ortaState extends State<contact> {
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
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/world1.png"),fit: BoxFit.fill))
          )
          ),
      ),

      body: 
      
      
      Column(children: [
        SizedBox(height: 60.0),
        Padding(
          // Adres bilgileri ve telefon numarası bulunan kısım
          padding: EdgeInsets.all(yukseklik/100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("KAYSERİ FACTORY",
              style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: genislik/20,
              ),
              textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
    
       Yazi("A: Osman Kavuncu Mahallesi Mensucat"	
          , genislik/22),
        Yazi("Caddesi No:24 Melikgazi Kayseri, Turkey", genislik/22),
          SizedBox(height: 15.0),
          Yazi("T: +90 352 207 87 00", genislik/22),
        
        SizedBox(height: 40.0),
        Padding(
          padding: EdgeInsets.all(yukseklik/100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("HEAD OFFICE",
              style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: genislik/20,
                
              ),
              textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
       Yazi(" A: Cumhuriyet Cad. No:155/5 34373 Harbiye"	
          , genislik/22),
          Yazi("Istanbul, Turkey", genislik/22),
          SizedBox(height: 15.0),
        Yazi("T: +90 212 315 3200"
          , genislik/22),
          SizedBox(height: 15.0),
          Yazi("E: info@ortaanadolu.com",genislik/22 ),
      ],),

      
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
    return Text(icerik,style: TextStyle(fontSize: boyut),
    );
  }

}
