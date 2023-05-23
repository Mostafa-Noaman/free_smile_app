import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MarketTab extends StatefulWidget {
  const MarketTab({Key? key}) : super(key: key);

  @override
  State<MarketTab> createState() => _MarketTabState();
}

class _MarketTabState extends State<MarketTab> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isLoaded
          ? ListView(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: Container(
                        width: 375,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffcbe4de),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 35,
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Click here to add case',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                fixedSize: Size(280, 40),
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                PostBody(
                    name: 'Mohamed',
                    userName: 'Mohamed123',
                    governorate: 'Cairo',
                    image: 'hand piece.jpg',
                    postText: '',
                    postTitle: 'Hand pieces for sale'),
                PostBody(
                    name: 'Ahmed',
                    userName: 'Ahmed123',
                    governorate: 'Cairo',
                    image: null,
                    postText: 'this post is without any imagesin it',
                    postTitle: 'just a test'),
                PostBody(
                    name: 'Kareem',
                    userName: 'Kareem123',
                    governorate: 'Alexandria',
                    image: 'dentist tools.jpg',
                    postText: '',
                    postTitle: 'Essential tools for sale'),
                PostBody(
                    name: 'Mostafa',
                    userName: 'Mostafa123',
                    governorate: 'Dakahlia',
                    image: 'dental-dam.jpg',
                    postText: '',
                    postTitle: 'Dental dams for sale'),
                PostBody(
                    name: 'Ali',
                    userName: 'Ali123',
                    governorate: 'Cairo',
                    image: 'drill tips.jpg',
                    postText: '',
                    postTitle: 'Drill tips for sale'),
              ],
            )
          : Center(
              child: SpinKitRing(
                color: Color(0xff0e8388),
                size: 80,
                lineWidth: 5,
              ),
            ),
    );
  }
}

class PostBody extends StatelessWidget {
  late var image;
  late String postTitle;
  late String postText;
  late String name;
  late String userName;
  late String governorate;
  PostBody(
      {required this.name,
      required this.userName,
      required this.governorate,
      required this.image,
      required this.postText,
      required this.postTitle});

  ImageCheck() {
    if (image != null) {
      return Image(
        image: AssetImage('images/$image'),
        fit: BoxFit.cover,
      );
    } else {
      return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 375,
              // height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 80,
                              child: CircleAvatar(
                                radius: 20,
                                child: Image(
                                  image: AssetImage('images/user image.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 20,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Text(
                                      '$name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Text(
                                      '@$userName',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 20,
                                color: Colors.white,
                                child: Text(
                                  'Patient',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 20,
                                color: Colors.white,
                                child: Text(
                                  '$governorate',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 20,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Text(
                                      '9h',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Edited at 12:00',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: 90,
                                      padding: EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                        color: Color(0xff0e8388),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'EGP 600',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$postTitle',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 375,
                      child: Text('$postText'),
                    ),
                  ),
                  ImageCheck(),
                  // Image(
                  //   image: AssetImage('images/$image'),
                  //   fit: BoxFit.cover,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff0e8388),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.phone_in_talk_rounded),
                          label: Text('Call'),
                        ),
                        Spacer(),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff0e8388),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_rounded),
                          label: Text('Chat'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
