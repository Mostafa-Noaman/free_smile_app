import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ArticlesTab extends StatefulWidget {
  const ArticlesTab({Key? key}) : super(key: key);

  @override
  State<ArticlesTab> createState() => _ArticlesTabState();
}

class _ArticlesTabState extends State<ArticlesTab> {
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
              padding: EdgeInsets.symmetric(horizontal: 13),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        width: 314,
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
                                fixedSize: Size(260, 40),
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
                    userName: 'Mohamed_5543',
                    profilePic: 'prof pic1.jpg',
                    governorate: 'Dakahlia',
                    image: 'article 1.jpg',
                    postText:
                        'Dr. Coronado says a toothache should always be evaluated by a dentist as soon as possible. If the pain occurs during the weekend, a holiday, or in the middle of the night, call your dentist’s office to see if an answering service can refer you to an emergency dentist. Alternatively, a dentist from the practice may take the call and be able to prescribe you an antibiotic, if an infection is suspected. But even if that takes care of the pain, you should follow up with an in-person appointment as soon as you can to address the underlying issue.\n'
                        'Another option is to look online for an emergency dental clinic near you. If there’s no nearby clinic, your dentist doesn’t take emergency calls, and the pain is excruciating, consider going to the emergency room for pain relief, says Coronado. But know that you will still need a follow-up appointment so a dentist can examine and treat the dental problem.',
                    postTitle:
                        '3 Ways to Treat a Toothache if You Can\'t Get Immediate Dental Care'),
                PostBody(
                    name: 'Ahmed',
                    userName: 'Ahmed123',
                    profilePic: 'user image.jpg',
                    governorate: 'Cairo',
                    image: null,
                    postText: 'this post is without any imagesin it',
                    postTitle: 'just a test'),
                PostBody(
                    name: 'Kareem',
                    userName: 'Kareem123',
                    profilePic: 'user image.jpg',
                    governorate: 'Alexandria',
                    image: 'post2.jpeg',
                    postText: '',
                    postTitle: 'Different types of orthodontics'),
                PostBody(
                    name: 'Mostafa',
                    userName: 'Mostafa123',
                    profilePic: 'user image.jpg',
                    governorate: 'Dakahlia',
                    image: 'post3.jpg',
                    postText: 'i must make this thing work really fast',
                    postTitle: 'Crown implanting'),
                PostBody(
                    name: 'Ali',
                    userName: 'Ali123',
                    profilePic: 'user image.jpg',
                    governorate: 'Cairo',
                    image: 'post1.jpg',
                    postText: 'this text is for first post',
                    postTitle: 'Teeth whitening case'),
                PostBody(
                    name: 'Adham',
                    userName: 'Adham123',
                    profilePic: 'user image.jpg',
                    governorate: 'Giza',
                    image: null,
                    postText: 'this post is without any imagesin it',
                    postTitle: 'just a test'),
                PostBody(
                    name: 'Mohsin',
                    userName: 'Mohsin123',
                    profilePic: 'user image.jpg',
                    governorate: 'Cairo',
                    image: 'post2.jpeg',
                    postText: '',
                    postTitle: 'Different types of orthodontics'),
                PostBody(
                    name: 'Ibrahim',
                    userName: 'Ibrahim123',
                    profilePic: 'user image.jpg',
                    governorate: 'Cairo',
                    image: 'post3.jpg',
                    postText: 'i must make this thing work really fast',
                    postTitle: 'Crown implanting'),
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
  late var profilePic;
  late String postTitle;
  late String postText;
  late String name;
  late String userName;
  late String governorate;
  PostBody(
      {required this.profilePic,
      required this.name,
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
              width: 314,
              // height: 450,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 314,
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
                                  image: AssetImage('images/$profilePic'),
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
                                  'Doctor',
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_rounded))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$postTitle',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
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
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.waving_hand_rounded,
                                  color: Color(0xff0e8388),
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.comment_outlined,
                                  color: Color(0xff0e8388),
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
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
