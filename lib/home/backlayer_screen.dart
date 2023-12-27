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
  List assets = [
    "assets/roti.jpg",
    'assets/Carbs.jpg',
    'assets/panner.jpg',
    'assets/Oil.jpg',
    'assets/meal.jpg'
  ];
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
                      child: ListView.builder(
                        itemCount: assets.length,
                        itemBuilder: (context, index) {
                          return TextButton(
                            child: Container(
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(assets[index]))),
                            ),
                            onPressed: () {
                              index == 0
                                  ? carbo(context)
                                  : index == 1
                                      ? protein(context)
                                      : index == 2
                                          ? fat(context)
                                          : index == 3
                                              ? vitamin(context)
                                              : meal(context);
                            },
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$s :",
          style: TextStyle(
              fontSize: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10.w,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PlaneChart(
                          index: index,
                        )));
          },
          child: Image.asset(
            t,
            height: 8.h,
          ),
        )
      ],
    );
  }
}
