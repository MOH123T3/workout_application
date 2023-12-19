// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gym_project/home/backlayer_screen.dart';
import 'package:gym_project/loseWeight/weight_loss.dart';
import 'package:gym_project/muscles/muscle_workout_screen.dart';
import 'package:gym_project/strectching/stretchworkout.dart';
import 'package:gym_project/yoga/yogaworkout.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        extendBodyBehindAppBar: false,
        appBar: BackdropAppBar(backgroundColor: Colors.cyan),
        backLayer: BackLayer(),
        frontLayer: SingleChildScrollView(
            child: AnimationLimiter(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(seconds: 3),
                      childAnimationBuilder: (widget) => SlideAnimation(
                          horizontalOffset: 30.0,
                          child: FadeInAnimation(
                            child: widget,
                          )),
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Find a ',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              'Workout Type',
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.cyan),
                              child: Image(
                                  image: AssetImage('assets/treadmill.png')),
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
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Container(
                              height: 20.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.cyan),
                              child: Image(
                                  image: AssetImage('assets/stretching.png')),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.cyan),
                              child: Image(
                                  image: AssetImage('assets/meditation.png')),
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
                                    'YOGA',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                        // MUSCLES
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                            builder: (context) => Muscle()));
                                  },
                                  child: Text(
                                    'MUSCLES',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Container(
                              height: 20.h,
                              width: 30.w,
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
                      ],
                    )))));
  }
}
