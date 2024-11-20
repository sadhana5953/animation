import 'package:flutter/material.dart';

class AnimatedWidgetScreen extends StatefulWidget {
  const AnimatedWidgetScreen({super.key});

  @override
  State<AnimatedWidgetScreen> createState() => _AnimatedWidgetScreenState();
}

class _AnimatedWidgetScreenState extends State<AnimatedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Animated Widget',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:  Column(
          children: [
            AnimatedAlign(
              duration: Duration(seconds: 1),
                alignment: nameAlignment,
                child: Text('sadhana')),
            AnimatedAlign(
              duration: Duration(seconds: 1),
              alignment: alignment,
              child: AnimatedContainer(
                padding: EdgeInsets.all(5),
                  width: isExpanded ? 300 : 0,
                  height: isExpanded ? 100:0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.black38,spreadRadius: 2,blurRadius: 5,offset: Offset(3, 7))
                    ]
                  ),
                  duration: Duration(seconds: 1),
                  child: Center(
                  child: Text(
                  'Only i can change my life.No one can do it for me.',
                  style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w500),textAlign: TextAlign.start,
                  ),
                  ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          alignment=Alignment.topCenter;
          isExpanded=!isExpanded;
          name='hiii,sadhana';
          nameAlignment=Alignment.topLeft;
          //containerAlignment=MainAxisAlignment.center;
        });
      },child: Icon(Icons.arrow_forward),),
    );
  }
}

Alignment alignment=Alignment.bottomCenter;
Alignment nameAlignment=Alignment.center;
MainAxisAlignment containerAlignment=MainAxisAlignment.end;
String name='sadhana';
bool isExpanded=false;