import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          animate = !animate;
        });
      },child: Icon(animate ? Icons.pause : Icons.play_arrow_sharp),),
      body: Center(
        child: Column(
          children: [
            Text("Animated Container"),
            AnimatedContainer(
              curve: Curves.easeInOut,
              height: animate ? 120 : 70,
                width: animate ? 220 : 120,
                duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                color: animate ? Colors.red : Colors.green,
                borderRadius: BorderRadius.circular(animate ? 40 : 15)
              ),
            ),
            Text("Animated Opacity"),
            AnimatedOpacity(
                opacity: animate ? 1 : 0.2,
                duration: Duration(seconds: 1),
                child: FlutterLogo(size: 80,),
            ),

            Text("Animated Align"),
            AnimatedAlign(
                alignment: animate ? Alignment.centerRight : Alignment.centerLeft,
                duration: Duration(seconds: 1),
                child: Icon(Icons.person,size: 80,),
            ),
            Text("Animated Scale"),
            AnimatedScale(
                child: Icon(Icons.favorite, color: Colors.red,),
                scale: animate ? 4 : 1,
                duration: Duration(seconds: 1)
            ),
            Text("Animated Rotate"),
            AnimatedRotation(
                turns: animate ? 2 : 0,
                duration: Duration(seconds: 1),
                child: Icon(Icons.refresh,size: 70,),
              ),
            Text("Animated Cross Fade"),
            AnimatedCrossFade(
                firstChild: Icon(Icons.favorite,color: Colors.red, size: 50,),
                secondChild: Icon(Icons.star,color: Colors.yellow, size: 50,),
                crossFadeState: animate ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                duration: Duration(seconds: 1)),
            Text("Animated Slide"),
            AnimatedSlide(
                offset: animate ? Offset(2, 4) : Offset.zero,
                duration: Duration(seconds: 1),
                child: Icon(Icons.account_circle, size: 50,),
            )
          ],
        ),
      ),
    );
  }
}
