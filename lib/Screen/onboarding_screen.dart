import 'package:ecommerce1/Auth/login_screen.dart';
import 'package:ecommerce1/Pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  ///
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            title: "Shop Now",
            body:
                "Bismillah Girls world is the best Online shopping center. Please Come here and shopping this shop",
            image: Card(
                shape:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white,width: 2)),
                child: Image.asset("images/img.png")),
          ),
          PageViewModel(
            title: "Big Discount",
            body:
                "Bismillah Girls world is the best Online shopping center. Please Come here and shopping this shop",
            image: Card(
                shape:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white,width: 2)),
                child: Image.asset("images/img_1.png")),
          ),
          PageViewModel(
            title: "Free Delivery",
            body:
                "Bismillah Girls world is the best Online shopping center. Please Come here and shopping this shop",
            image: Card(
              shape:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white,width: 2)),
                child: Image.asset("images/img_2.png")),

            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen(),));
                    },child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Let's Start",style: TextStyle(fontSize: 20),),
                    ),
                  ),
            ),


          ),
        ],
        showBackButton: true,
        showDoneButton: false,
        showSkipButton: false,
         back: Text("Back",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
         next: Text("Next",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
         skip: Text("Skip",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold)),

        onDone: (){},
        onSkip: (){},
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20,10),
          color: Colors.yellowAccent,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(25),
          ),

        ),
      ),
    );
  }
}
