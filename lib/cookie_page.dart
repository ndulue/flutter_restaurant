import 'package:flutter/material.dart';
import 'package:flutterrestaurant/cookie_detail.dart';

class Cookie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 20),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _Card("Cookie mint", '\#4000', 'asset/', false, false, context),
                _Card("Cookie classic", '\#9000', 'asset/', false, true, context),
                _Card("Cookie choco", '\#6000', 'asset/', false, false, context),
                _Card("Cookie cream", '\#7000', 'asset/', false, false, context),
                SizedBox(height: 15.0)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _Card(String name, String price, String imgPath,
      bool added, bool isFavourite, context ){
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CookieDetail(
                assetPath: imgPath,
                cookieprice: price,
                cookiename: name
              )
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.greenAccent.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0
              )
            ],
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavourite ? Icon(Icons.favorite, color: Colors.lightBlue) :
                        Icon(Icons.favorite_border, color: Colors.blue)
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain
                    )
                  ),
                ),
              ),
              SizedBox(height: 7.0),
              Text(price,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0
                  )
              ),
              Text(name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0
                  )
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.deepOrange,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if(!added) ...[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.green,
                        size: 12.0,
                      ),
                      Text('Add to cart',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Colors.amberAccent,
                              fontSize: 12.0
                          )
                      )
                    ],
                    if(added) ...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Colors.green,
                        size: 12.0,
                      ),
                      Text('Add to cart',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Colors.amberAccent,
                              fontSize: 12.0
                          )
                      ),
                      Icon(Icons.add_circle_outline,
                        color: Colors.greenAccent,
                        size: 12.0,
                      )
                    ],
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
