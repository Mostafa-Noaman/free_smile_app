import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/patient%20home%20screen/tabs/home_tab.dart';

import '../dentist home page/chat/chat_conversations.dart';

class PatientHomeScreen extends StatefulWidget {
  const PatientHomeScreen({Key? key}) : super(key: key);

  @override
  State<PatientHomeScreen> createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xfff0f7f6),
        appBar: AppBar(
          backgroundColor: Color(0xfff0f7f6),
          elevation: 0,
          title: Text(
            'FreeSmile',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline_outlined,
                color: Color(0xff2e4f4f),
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Color(0xff2e4f4f),
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatConversation()));
              },
              icon: Icon(
                Icons.chat_bubble_outline_rounded,
                color: Color(0xff2e4f4f),
                size: 30,
              ),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Color(0xff2e4f4f),
            indicatorColor: Color(0xff0e8388),
            labelColor: Color(0xff0e8388),
            tabs: [
              Tab(
                icon: Icon(Icons.person_search_rounded),
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          PatientHomeTab(),
          Icon(Icons.account_circle_outlined),
        ]),
      ),
    );
  }
}
