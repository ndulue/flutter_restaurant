import 'package:flutter/material.dart';
import 'package:flutterrestaurant/cookie_detail.dart';

class CookieDetail extends StatelessWidget {
  final String cookieprice;
  final String assetPath;
  final String cookiename;

  CookieDetail( {
    this.assetPath,
    this.cookiename,
    this.cookieprice
  });

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
            onPressed: (){
              Navigator.of(context).pop();
            }
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
        children: <Widget>[
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cakes',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(cookieprice,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(cookiename,
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Varela'
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('Cold, creamy ice cream sandwiched, between delicious delicacy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: Colors.blueGrey
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.lightBlue
              ),
              child: Center(
                child: Text('Add to cart',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
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
    );
  }
}
