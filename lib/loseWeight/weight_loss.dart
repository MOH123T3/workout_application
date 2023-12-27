// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:gym_project/loseWeight/cardio_raw.dart';
import 'package:gym_project/loseWeight/exercises.dart';

class WeightLoss extends StatefulWidget {
  const WeightLoss({super.key});

  @override
  State<WeightLoss> createState() => _WeightLossState();
}

class _WeightLossState extends State<WeightLoss> {
  List title = [
    'Dumbbell Thrusters',
    'Deadlifts',
    'Burpees',
    'Cardio Row',
    'Walking Lunges',
    'Single Arm Dumbbell Snatch'
  ];

  List subTitle = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SizedBox(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/111.png',
                height: 150,
                width: double.maxFinite,
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.yellow,
                ),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    alert(context);
                  },
                  child: Text(
                    'These 6 Exercises Will Help You Blast Belly Fat',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  TextButton(
                    child: Text(
                      'BACK',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (context, index) {
                return _TransitionListTile(
                  title: "${title[index]}  ${subTitle[index]}",
                  subtitle: "",
                  onTap: () {
                    if (index == 3) {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return const CardioRow();
                      }));
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return Exercises(index: index);
                          },
                        ),
                      );
                    }
                  },
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}

class _TransitionListTile extends StatelessWidget {
  const _TransitionListTile({
    this.onTap,
    required this.title,
    required this.subtitle,
  });

  final GestureTapCallback? onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      leading: Container(
        width: 15.w,
        height: 5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.red,
          ),
        ),
        child: Icon(
          Icons.play_arrow,
          size: 25.sp,
          color: Colors.yellow,
        ),
      ),
      textColor: Colors.white,
      onTap: onTap,
      iconColor: Colors.red,
      title: Text(
        title,
        style: TextStyle(fontSize: 12.sp),
      ),
      subtitle: Text(subtitle),
    );
  }
}

void alert(BuildContext context) {
  var fat = AlertDialog(
    actions: [
      Container(
        height: 60.h,
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text(
              '''One of the most common goals in the gym is simple: Most guys want to lose belly fat.
              
And why not? Everyone wants to look better for a wedding, or a trip to the beach, or even a wedding on the beach. And getting rid of a few excess pounds around the midsection is often a quick way to do that.
              
Thing is, belly fat can be stubborn and hard to lose, especially as you get older. Our bodies are programmed to store fat, whether we like it or not, since fat is the most abundant yield of energy we can tap into for day-to-day functioning. From cognitive activity, to hormonal responses, to processing what we intake, fat plays a very pivotal role in our lives.
              
That means it doesn’t typically want to go away, and we have to work both smartly and intensely to limit our fat stores. To be clear, this doesn’t mean you should stop eating and do 6-hour workouts. It’s more about piling on muscle mass while limiting extra fat storage. There are several ways to do this, and I’m going to explain them to you right now.''',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
        ),
      ),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return fat;
      });
}
