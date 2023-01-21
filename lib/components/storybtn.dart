
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ortapplication/data/storydata.dart';
import 'package:ortapplication/screen/storyview.dart';


//Bu kısımda story butonların tasarımı var.
Widget storyButton(StoryData storyData, BuildContext context){
  return Padding(padding: const EdgeInsets.all(8),
  child: Column(children: [
    InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: (){
        //Burada story butona tıklandığında resmin büyütüldüğü ve ekrana geldiği classı çalışmasını sağladım.
        Navigator.push(context, new MaterialPageRoute(builder: (context) => Storyview(story: storyData)));
      },
      child: Container(
        //Butona büyüklük verdim.
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          // Buton kenarlığını yuvarlak yaptım ve kenarlık rengi verdim
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.blue.shade900,width: 2.0),
        ),
        child: Padding(padding: EdgeInsets.all(3.0),
        //Resim ekledim ve ekrana sığdırdım. Kenarların yuvarlak olmasını sağladım.
        child: Container(decoration: 
        BoxDecoration(borderRadius: 
        BorderRadius.circular(50.0),
          image: DecorationImage(image: NetworkImage(storyData.avatarUrl),
          fit: BoxFit.cover)
          ),
        ),
        ),
      ),
    ),
    //Yukardan boşluk bıraktım ve text yazısını ekledim
    SizedBox(height: 6.0),
    Text(storyData.userName),
  ],),
  );
}