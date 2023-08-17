import 'package:flutter/material.dart';

enum iconbotton{
  home,
  text,
  location,
  setting,
  none,
}

class StackContainers extends StatefulWidget {
  final String tittle;
  final String subtittle;
  final String thirdtittle;
  final Function ontap;

  StackContainers({this.tittle,this.subtittle,this.thirdtittle,this.ontap});

  @override
  _StackContainersState createState() => _StackContainersState();
}

class _StackContainersState extends State<StackContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 200,
              width: 120,
              decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(60),),
                color: Colors.black12,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(widget.tittle,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(widget.subtittle,style: TextStyle(color: Colors.black38),),
                    SizedBox(height: 6,),
                    Text(widget.thirdtittle,style:TextStyle(fontWeight: FontWeight.bold) ,),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/food.webp',),
              radius: 55,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            left: 40,
            bottom: 5,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(icon: Icon(Icons.add,color: Colors.white,), onPressed: (widget.ontap),))
          )],
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  iconbotton isSelected=iconbotton.none;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(right: 20,left: 20),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          color: Colors.black,
          boxShadow: [
            BoxShadow(color: Colors.grey,
                blurRadius: 10
            )
          ]
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 0,),
          IconButton(icon: Icon(Icons.home,size: 35,color:  isSelected==iconbotton.home
              ?Colors.tealAccent:Colors.white,),onPressed: (){
            setState(() {
              isSelected=iconbotton.home;
            });
          },),
          IconButton(icon: Icon(Icons.textsms,size: 35,color: isSelected==iconbotton.text
              ?Colors.tealAccent:Colors.white,), onPressed: (){
            setState(() {
              isSelected=iconbotton.text;
            });
          }),
          IconButton(icon: Icon(Icons.location_on,size: 35,color: isSelected==iconbotton.location
              ?Colors.tealAccent:Colors.white), onPressed: (){
            setState(() {
              isSelected=iconbotton.location;
            });
          }),
          IconButton(icon: Icon(Icons.settings,size: 35,color: isSelected==iconbotton.setting
              ?Colors.tealAccent:Colors.white), onPressed: (){
            setState(() {
              isSelected=iconbotton.setting;
            });
          }),
          SizedBox(width: 0,)
        ],),);
  }
}

