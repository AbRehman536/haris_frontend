import 'package:flutter/material.dart';
import 'package:haris_frontend/models/onBoaringModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/onBoarding1.png", title: "Request Ride"),
    OnBoardingModel(image: "assets/images/onBoarding2.png", title: "Confirm Ride"),
    OnBoardingModel(image: "assets/images/onBoarding3.png", title: "Track Ride"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                controller: pageController,
                itemCount: onBoardingList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[index].image.toString()),
                      Text(onBoardingList[index].title.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900
                      ),),
                    ],
                  );
              },),
            ),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  ExpandingDotsEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            ),
            ElevatedButton(onPressed: (){}, child: Text("Get Started"))
          ],
        ),
      ),
    );
  }
}
