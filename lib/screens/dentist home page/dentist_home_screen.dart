import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/dentist%20home%20page/tabs/articles_tab.dart';
import 'package:free_smile_app/screens/dentist%20home%20page/tabs/home_tab.dart';
import 'package:free_smile_app/screens/dentist%20home%20page/tabs/market_tab.dart';
import 'package:free_smile_app/screens/login/cubit/login_cubit.dart';
import 'package:free_smile_app/screens/login/login_screen.dart';
import 'package:free_smile_app/shared/shared_preference.dart';

class DentistHomeScreen extends StatefulWidget {
  const DentistHomeScreen({Key? key}) : super(key: key);

  @override
  State<DentistHomeScreen> createState() => _DentistHomeScreenState();
}

class _DentistHomeScreenState extends State<DentistHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              onPressed: () {},
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
                icon: Icon(Icons.storefront_rounded),
              ),
              Tab(
                icon: Icon(Icons.sticky_note_2_rounded),
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          HomeTab(),
          MarketTab(),
          ArticlesTab(),
          Icon(Icons.account_circle_outlined),
        ]),
      ),
    );
  }
}
