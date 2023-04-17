import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/landing_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Boarding {
  Boarding({required this.image, required this.description});
  final String image;
  final String description;
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<Boarding> boardingPages = [
    Boarding(image: 'images/onboarding1.png', description: 'description'),
    Boarding(image: 'images/onboarding2.png', description: 'description'),
    Boarding(image: 'images/onboarding3.png', description: 'description'),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbe4de),
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                  (route) {
                return false;
              });
            },
            child: Text(
              'Skip',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Color(0xffcbe4de),
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Free Smile',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: PageView.builder(
              controller: boardController,
              onPageChanged: (int index) {
                if (index == boardingPages.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  buildBoarding(boardingPages[index]),
              itemCount: boardingPages.length,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isLast) {
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context) => LandingPage()),
                (route) {
              return false;
            });
          } else {
            boardController.nextPage(
                duration: Duration(milliseconds: 400), curve: Curves.easeIn);
          }
        },
        backgroundColor: Color(0xff2e4f4f),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 40,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget buildBoarding(Boarding bordingModel) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage('${bordingModel.image}'),
          ),
          SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
            controller: boardController,
            count: boardingPages.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white,
              activeDotColor: Color(0xff2e4f4f),
              expansionFactor: 1.1,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Welcome to freesmile',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 180,
            child: Text('${bordingModel.description}'),
          ),
        ],
      );
}
