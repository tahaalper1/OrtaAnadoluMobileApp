import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ortapplication/about/about.dart';
import 'package:ortapplication/blu/ortablu.dart';
import 'package:ortapplication/collection/col.dart';
import 'package:ortapplication/components/storybtn.dart';
import 'package:ortapplication/data/storydata.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Uygulama Çerçevesi",
      home: StoryApp(),
    );
  }
}

class StoryApp extends StatefulWidget{

  @override 
  _StoryAppState createState() => _StoryAppState();
}


class _StoryAppState extends State<StoryApp> {
  
  List<StoryData> stories=[

  // Tasarıma veri ekledim. Resimleri şirketin web sitesinden aldım.
   new StoryData("ORTA",
       "https://ortaanadolu.com/wp-content/uploads/2022/05/Home-Side-Image.jpg",
       "https://ortaanadolu.com/wp-content/uploads/2022/05/Home-Side-Image.jpg"),  

    new StoryData("LIFE STYLE",
       "https://ortaanadolu.com/wp-content/uploads/2022/05/Header-Image.jpg",
       "https://ortaanadolu.com/wp-content/uploads/2022/05/Header-Image.jpg"),
    new StoryData("QUALITY",
       "https://ortaanadolu.com/wp-content/uploads/2021/12/Thumbnail-Square-14.jpg",
       "https://ortaanadolu.com/wp-content/uploads/2021/12/Thumbnail-Square-14.jpg"),

     new StoryData("SCENIC ROUTE",
       "https://ortaanadolu.com/wp-content/uploads/2021/12/Thumbnail-Square-13.jpg",
       "https://ortaanadolu.com/wp-content/uploads/2021/12/Thumbnail-Square-13.jpg"),
    new StoryData("DENIM",
       "https://ortaanadolu.com/wp-content/uploads/2021/12/Thumbnail-Square-10.jpg",
       "https://ortaanadolu.com/wp-content/uploads/2021/12/Thumbnail-Square-10.jpg"),

     new StoryData("ORTA BLU",
       "http://www.ortablu.org/wp-content/uploads/OrtaBlu-Logo.png",
       "http://www.ortablu.org/wp-content/uploads/OrtaBlu-Logo.png"),
  
  
  ];




  @override 
  Widget build(BuildContext context){
    var scaffold = Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(175),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("resimler/oa.jpg"),fit: BoxFit.fill))
          )
          ),
      ),

      body: 
      
      Column(
        children: [
          Container(
            // Burada story butonlarıma ekrana yerleştirdim.
            width: double.infinity,
            height: 110.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context),
                storyButton(stories[5], context),
              ],
            ),
          ),
          
          SizedBox(height: 5.0), // Sayfadaki diğer butonlarla arasına mesafe koydum
          Column(
            children: [
              Center(
                  child: 
                  InkWell(
                  onTap: () {
                    // Butona bastığında gitmesi gereken sayfayı belirttim
                    Navigator.push(context, MaterialPageRoute(builder : (context) => about() ));
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.5),
                  child: 
                  Ink( 
                    height: 125,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage('resimler/about2.png'),
                        fit: BoxFit.cover,
                      ), 
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Column(
            children: [
              Container(
                  child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder : (context) => col() ));
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.5),
                  child: Ink(
                    height: 125,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage('resimler/col1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8.0),
          Column(
            children: [
              Container(
                  child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder : (context) => blu() ));
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.5),
                  child: Ink(
                    height: 125,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage('resimler/blu.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

    ],
      ),
      
     );
   
    return scaffold;
  }
}



