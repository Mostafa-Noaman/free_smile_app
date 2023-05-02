import 'package:flutter/material.dart';

class MarketTab extends StatefulWidget {
  const MarketTab({Key? key}) : super(key: key);

  @override
  State<MarketTab> createState() => _MarketTabState();
}

class _MarketTabState extends State<MarketTab> {
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
        ],
      ),
    );
  }
}
