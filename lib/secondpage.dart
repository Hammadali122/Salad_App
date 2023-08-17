import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                onPressed: null),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('images/food.webp'), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Icon(
              Icons.linear_scale,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Mediterranean',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Quinoa Salad',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            onPressed: null)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 15,
                            ),
                            onPressed: null)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'Fresh and healthy salad made with our own chef Recipe.'
                          'Special healthy and fat free dish for those who'
                          'wants to lose weight')
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Text('Delivery Time'),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.access_time,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('25 mints')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Total price'),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\$30.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Stack(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.black,
                            child: Center(
                              child: Icon(
                                Icons.local_grocery_store,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            top: 14,
                            child: Container(
                              height: 20,
                              width: 20,
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
