import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
          PostBody('post1.jpg'),
          PostBody('post2.jpeg'),
          PostBody('post3.jpg'),
          PostBody(null),
        ],
      ),
    );
  }
}

class PostBody extends StatelessWidget {
  late var image;
  PostBody(this.image);

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
                                      'name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Text(
                                      '@username',
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
                                  'Dakahlia',
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
                          width: 60,
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
                      'Post title',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 375,
                      child: Text(
                          'This is an example of a post text so we are talking about some things that can be written down here'),
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
