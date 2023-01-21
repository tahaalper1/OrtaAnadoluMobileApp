import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ortapplication/data/storydata.dart';


class Storyview extends StatefulWidget {

  final StoryData story;

  Storyview({ Key? key ,  required this.story}) : super(key: key);

  @override
  State<Storyview> createState() => _StoryviewState();
}

class _StoryviewState extends State<Storyview> {

  double percent = 0.0;
  late Timer _timer;

  void startTimer(){
    _timer = Timer.periodic(Duration(microseconds: 3000), (timer) { 
      setState(() {
        percent += 0.001;
        if(percent > 1 ){
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Burada story butonlarına tıkladığında içindeki resmin büyüyerek sayfa üstüne gelmesini sağladım.
      // Üst üse gelmesi için stack kullandım.
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            //Resim ekledim ve ekrana tam sığdırdım.
            decoration: BoxDecoration(image: DecorationImage(
              image: NetworkImage(widget.story.storyUrl),
              fit: BoxFit.cover
            )),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
          child: Column(children: [
            LinearProgressIndicator(
              value: percent
            )
          ],),
          ),
        ],
      ),
    );
  }
}