import 'package:app/Model/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: const BackButton(
          color: Colors.red,
        ),
        title: Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network('${Provider.of<Data>(context).image}',
                    width: 50, height: 50, fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: <Widget>[
                RichText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  text: TextSpan(
                      text: 'Hi! ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      children: [
                        TextSpan(
                          text: '${Provider.of<Data>(context).name}',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'How are you!?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 80,
        actions: [
          badges.Badge(
              position: badges.BadgePosition.topEnd(
                top: -5,
                end: -5,
              ),
              showBadge: true,
              ignorePointer: false,
              onTap: () {},
              badgeContent: Container(
                  width: 15,
                  height: 15,
                  child: Center(
                    child: Text(
                      '${Provider.of<Data>(context).quantity}',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              badgeAnimation: badges.BadgeAnimation.rotation(
                animationDuration: Duration(seconds: 1),
                colorChangeAnimationDuration: Duration(seconds: 1),
                loopAnimation: false,
                curve: Curves.fastOutSlowIn,
                colorChangeAnimationCurve: Curves.easeInCubic,
              ),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.blue,
                padding: EdgeInsets.all(5),
                elevation: 0,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                    size: 30,
                  ))),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Container(
              width: 280,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/image.jpg',
                    width: 175, height: 190, fit: BoxFit.fitHeight),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Quantity:',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 19, 140, 206),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '${Provider.of<Data>(context).quantity}',
                  style: TextStyle(color: Colors.red, fontSize: 25),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
