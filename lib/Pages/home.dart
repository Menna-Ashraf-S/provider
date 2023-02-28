import 'package:app/Model/data.dart';
import 'package:app/Pages/check.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int quantity = 0;
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
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/A_black_image.jpg/640px-A_black_image.jpg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill),
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
                        '${quantity}',
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
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              text: TextSpan(
                                  text: 'Username:  ',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 19, 140, 206),
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${Provider.of<Data>(context).name}',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ]),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              text: TextSpan(
                                  text: 'Email: ',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 19, 140, 206),
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${Provider.of<Data>(context).email}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ]),
                            ),
                          ]),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              text: TextSpan(
                                  text: 'Mobile Number:  ',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 19, 140, 206),
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${Provider.of<Data>(context).mobile}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ]),
                            ),
                          ]),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Row(
                  children: <Widget>[
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (quantity <= 0) {
                            quantity = 1;
                          } else {
                            quantity--;
                          }
                        });
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${quantity}',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 190,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Provider.of<Data>(context, listen: false)
                        .saveQuantity(quantity);
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Check(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                        size: 25,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
