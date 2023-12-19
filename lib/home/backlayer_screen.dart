// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:gym_project/myfitness/days/plane_chart.dart';
import 'package:gym_project/myfitness/fat_loss.dart';
import 'package:gym_project/myfitness/diet.dart';

class BackLayer extends StatefulWidget {
  const BackLayer({super.key});

  @override
  State<BackLayer> createState() => _BackLayerState();
}

class _BackLayerState extends State<BackLayer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
          child: Container(
              color: Colors.cyan,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 30.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          TextButton(
                            child: Image.asset('assets/roti.jpg'),
                            onPressed: () {
                              carbo(context);
                            },
                          ),
                          TextButton(
                            child: Image.asset('assets/Carbs.jpg'),
                            onPressed: () {
                              protein(context);
                            },
                          ),
                          TextButton(
                            child: Image.asset('assets/panner.jpg'),
                            onPressed: () {
                              fat(context);
                            },
                          ),
                          TextButton(
                            child: Image.asset('assets/Oil.jpg'),
                            onPressed: () {
                              vitamin(context);
                            },
                          ),
                          TextButton(
                            child: Image.asset('assets/meal.jpg'),
                            onPressed: () {
                              meal(context);
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.shade400),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' Weight Loss Diet Plan Chart',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      height: 50.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: GridView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 2.5),
                        children: <Widget>[
                          getDays('Day 1', 'assets/fivee.png', 0),
                          getDays('Day 2', 'assets/four.png', 1),
                          getDays('Day 3', 'assets/five.png', 2),
                          getDays('Day 4', 'assets/six.png', 3),
                          getDays('Day 5', 'assets/elevan.png', 4),
                          getDays('Day 6', 'assets/seven.png', 5),
                          getDays('Day 7', 'assets/eight.png', 6),
                        ],
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ScienceBehindLossWeight()));
                        },
                        child: Image.asset('assets/ten.png')),
                  ]))),
    );
  }

  getDays(String s, String t, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          child: Text(
            "$s :",
            style: TextStyle(fontSize: 17.sp, color: Colors.black),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PlaneChart(
                          index: index,
                        )));
          },
        ),
        Image.asset(
          t,
          height: 8.h,
        )
      ],
    );
  }
}
