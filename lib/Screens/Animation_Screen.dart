import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('Animated Container',style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedAlign(
              alignment: alignment,
              duration: Duration(seconds: 1),
              child: Icon(Icons.airplanemode_on,color: color,size: 35,)),
          SizedBox(height: 70,),
          SizedBox(height: 70,),
          GestureDetector(
            onTap: () {
              setState(() {
                alignment=Alignment.center;
                color=Colors.teal;
              });
            },
            child: Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(25),
              ),
              alignment: Alignment.center,
              child: Text('Book your tickt now!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}

Alignment alignment=Alignment.bottomCenter;
Color color=Colors.blue;