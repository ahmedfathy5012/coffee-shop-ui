import 'package:flutter/material.dart';

import 'details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Welcome Fathy',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF473D3A),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('assets/model.jpg'),
                            fit: BoxFit.cover)),
                  ))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 45.0),
            child: Text(
              'Let\'s select the best taste for your next coffee break!',
              style: TextStyle(
                fontFamily: 'nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.w300,
                // color: Color(0XFF473D3A),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Taste of the week',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0XFF473D3A),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 15.0,
                    color: Color(0XFFCEC7C4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',
                    false),
                coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',
                    false),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore nearby',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0XFF473D3A),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 15.0),
                 child: Text(
                   'See All',
                   style: TextStyle(
                     fontFamily: 'varela',
                     fontSize: 17.0,
                     color: Color(0XFFCEC7C4),
                   ),
                 ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildImage('assets/coffee.jpg',),
                _buildImage('assets/coffee2.jpg',),
                _buildImage('assets/coffee3.jpg',),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  coffeeListCard(String imagPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                      padding: EdgeInsets.only(left: 10.0, right: 20.0),
                      height: 260.0,
                      width: 225.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0XFFDAB68C),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white),
                                    child: Center(
                                        child: Icon(Icons.favorite,
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 15.0)))
                              ],
                            )
                          ])),
                ),
                Positioned(
                  left: 60,
                  top: 25,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagPath), fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailsPage()
                  ),
                );
              },
              child: Container(
                height: 50.0,
                width: 255.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0XFF473D3A),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14.0,
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildImage(String imagePath) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
          height: 100.0,
          width: 175.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
          ),
        ),
    );
  }
}
