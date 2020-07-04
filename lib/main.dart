import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterrestaurant/bottom_bar.dart';
import 'package:flutterrestaurant/cookie_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickupe',
          style: TextStyle(
              fontFamily: 'Schyler',
              fontSize: 20.0,
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black
            ),
            onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
              onPressed: (){}
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Categories',
            style: TextStyle(
                fontFamily: 'Schyler',
                fontSize: 42.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.blue,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 40),
            unselectedLabelColor: Colors.cyanAccent,
            tabs: <Widget>[
              Tab(
                child: Text('Cookies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text('Candies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text('Cakes',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 20,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Cookie(),
                Cookie(),
                Cookie(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.free_breakfast),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),

    );
  }
}


