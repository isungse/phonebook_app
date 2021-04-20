import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phonebook_app/screens/screen1.dart';
import 'screen1.dart';

const bottomContainerHeight = 50.0;

class DepartmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '내선번호',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Colors.white,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.vpn_lock,
                          size: 50.0,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '국제진료',
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 50.0,
                        ),
                        Text(
                          '검진센터',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                              color: Colors.teal),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      margin: EdgeInsets.all(15.0),
                    ),
                  ),
                ],
              ),
            ),
            //           GestureDetector(
            //             onTap: () {
            //               Navigator.push(context,
            //                   MaterialPageRoute(builder: (context) => screen1()));
//              },
            //           ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      color: Colors.white,
      margin: EdgeInsets.all(15.0),
    );
  }
}
