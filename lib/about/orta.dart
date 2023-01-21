import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about_orta extends StatefulWidget {
  const about_orta({ Key? key }) : super(key: key);

  @override
  State<about_orta> createState() => _about_ortaState();
}

class _about_ortaState extends State<about_orta> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double yukseklik = ekranBilgisi.size.height;
    final double genislik = ekranBilgisi.size.width;
     var scaffold = Scaffold(
      appBar: PreferredSize(
        // appbar büyüklüğü ve resmi verdim
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/history1.png"),fit: BoxFit.fill))
          )
          ),
      ),
      //Şirket hakkında bilgi içeren yazıyı ve arkaplan resmini verdim
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/bac4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: Padding(padding: EdgeInsets.all(15.0),
          child: 
          Container(child: 
          Text("Since its inception, Orta has been weaving a denim heritage passed from generation to generation."
          "Founded in 1953, Orta transformed from a spinning & weaving company to a denim manufacturer in 1985." 
          "Today, Orta operates in Turkey with its 1000+ employees, creating a platform for leading manufacturers to step up and reclaim a denim industry where more aesthetics leads to more ethics."
       "While our footprint is what we take from the planet when we consume, our handprint is what we give the planet when we create change for the better. In an era of change, ORTA’S handprint will promote denim manufacturing at the intersection of where people, planet, and purpose matter.",style: TextStyle(fontSize: genislik/18,color: Colors.white)),
       ),
       
          ),
        ),
        
         Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/bac5.jpg"),
            fit: BoxFit.cover,
          ),
        ),
           child: Padding(padding: EdgeInsets.all(15.0),
        child: Container(child: Text("At ORTA, sustainability is ‘business as usual."
           "Our aim is to create a more robust denim ecosystem where ART (DESIGN) MEETS TECHNOLOGY MEETS ETHICS for new infinite possibilities of denim today and tomorrow."
        "As a company that incorporates emerging trends and fashion in its denim production, Orta collaborates with artists, designers, vintage dealers and trend-setters."
        "Every season, new Orta fabrics are accompanied by trend presentations, capsule packages, and seasonal journals reflecting the constantly evolving world of denim." 
        "Aiming to be a leading denim brand pursuing sustainable lifestyles and production, Orta founded its sustainability division Orta Blu in 2010.",style: TextStyle(fontSize: genislik/18,color: Colors.white)),
       ),
        ),
         ),
      ],
      ),
       );
   
    return scaffold;
  }
}
