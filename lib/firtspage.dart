import 'package:flutter/material.dart';
import 'costoms.dart';


enum mainButton {
  salad,
  soup,
  grilled,
  none,
  icon,
}
enum barIcons {
  list,
  search,
  none,
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  mainButton isSelected = mainButton.none;
  barIcons isSelect = barIcons.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.subject,
                  size: 30,
                  color:
                      isSelect == barIcons.list ? Colors.black : Colors.black38,
                ),
                onPressed: () {
                  setState(() {
                    isSelect = barIcons.list;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: isSelect == barIcons.search
                      ? Colors.black
                      : Colors.black38,
                ),
                onPressed: () {
                  setState(() {
                    isSelect = barIcons.search;
                  });
                })
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Delicious Salad',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'We made fresh and healthy food',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = mainButton.salad;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isSelected == mainButton.salad
                              ? Colors.black
                              : Colors.black12,
                        ),
                        child: Center(
                            child: Text(
                          'Salads',
                          style: TextStyle(
                            color: isSelected == mainButton.salad
                                ? Colors.white
                                : Colors.black,
                          ),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = mainButton.soup;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isSelected == mainButton.soup
                              ? Colors.black
                              : Colors.black12,
                        ),
                        child: Center(
                            child: Text(
                          'Soups',
                          style: TextStyle(
                            color: isSelected == mainButton.soup
                                ? Colors.white
                                : Colors.black,
                          ),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = mainButton.grilled;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isSelected == mainButton.grilled
                              ? Colors.black
                              : Colors.black12,
                        ),
                        child: Center(
                            child: Text(
                          'Grilled',
                          style: TextStyle(
                            color: isSelected == mainButton.grilled
                                ? Colors.white
                                : Colors.black,
                          ),
                        )),
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.view_week,
                          color: isSelected == mainButton.icon
                              ? Colors.black
                              : Colors.black38,
                        ),
                        onPressed: () {
                          setState(() {
                            isSelected = mainButton.icon;
                          });
                        })
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 5,
                  ),
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'checkin salad',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Checkin with avocado'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$34.0',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/food.webp'),
                  radius: 95,
                  backgroundColor: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                StackContainers(
                  tittle: 'Mixed salad',
                  subtittle: 'mixed vegetables',
                  thirdtittle: '\$24.00',
                ),
                StackContainers(
                  tittle: 'Quinoa Salad',
                  subtittle: 'Spicy with garlic',
                  thirdtittle: '\$30.00',
                  ontap: (){
                    setState(() {

                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
