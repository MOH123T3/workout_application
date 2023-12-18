// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gym_project/home/backlayer_screen.dart';
import 'package:gym_project/loseWeight/weight_loss.dart';
import 'package:gym_project/muscles/bottom_sheet.dart';
import 'package:gym_project/strectching/stretchworkout.dart';
import 'package:gym_project/yoga/yogaworkout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        appBar: BackdropAppBar(
          backgroundColor: Colors.cyan,
          shadowColor: Colors.black,
          title: Text('My fitness'),
        ),
        backLayer: BackLayer(),
        subHeader: BackdropSubHeader(
            title: Text(
          'Workout',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.cyan),
        )),
        frontLayer: Container(
            // alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
                child: AnimationLimiter(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(seconds: 3),
                          childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: 130.0,
                              child: FadeInAnimation(
                                child: widget,
                              )),
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Find a ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Workout Type ',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 150,
                                  width: 130,
                                  margin: EdgeInsets.only(right: 120),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.cyan),
                                  child: Image(
                                      image:
                                          AssetImage('assets/treadmill.png')),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WeightLoss()));
                                      },
                                      child: Text(
                                        'LOSE WEIGHT',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Stretching()));
                                      },
                                      child: Text(
                                        'STRETCHING',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Container(
                                  height: 150,
                                  width: 130,
                                  margin: EdgeInsets.only(left: 90),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.cyan),
                                  child: Image(
                                      image:
                                          AssetImage('assets/stretching.png')),
                                )
                              ],
                            ),

                            Row(
                              children: [
                                Container(
                                  height: 150,
                                  width: 130,
                                  margin: EdgeInsets.only(right: 120),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.cyan),
                                  child: Image(
                                      image:
                                          AssetImage('assets/meditation.png')),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Yoga()));
                                      },
                                      child: Text(
                                        ' YOGA',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ))
                              ],
                            ),
                            // MUSCLES
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Muscle()));
                                      },
                                      child: Text(
                                        'MUSCLES',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Container(
                                  height: 150,
                                  width: 130,
                                  margin: EdgeInsets.only(left: 120),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.cyan),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/builder.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                                height: 150,
                                width: 130,
                                margin: EdgeInsets.only(left: 120),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ))
                          ],
                        ))))));
  }
}
