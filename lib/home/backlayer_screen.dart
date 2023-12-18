import 'package:flutter/material.dart';
import 'package:gym_project/myfitness/days/plane_chart.dart';
import 'package:gym_project/myfitness/fat_loss.dart';
import 'package:gym_project/myfitness/indian_diet.dart';

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
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 1.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                          child: TextButton(
                        child: Image.asset('assets/roti.jpg'),
                        onPressed: () {
                          carbo(context);
                        },
                      )),
                      Container(
                          child: TextButton(
                        child: Image.asset('assets/Carbs.jpg'),
                        onPressed: () {
                          protein(context);
                        },
                      )),
                      Container(
                          child: TextButton(
                        child: Image.asset('assets/panner.jpg'),
                        onPressed: () {
                          fat(context);
                        },
                      )),
                      Container(
                          child: TextButton(
                        child: Image.asset('assets/Oil.jpg'),
                        onPressed: () {
                          vitamin(context);
                        },
                      )),
                      Container(
                          child: TextButton(
                        child: Image.asset('assets/meal.jpg'),
                        onPressed: () {
                          meal(context);
                        },
                      ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow.shade400),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    ' Weight Loss Diet Plan Chart',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                  height: 180.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                          child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/fivee.png',
                                  ),
                                )),
                            padding: EdgeInsets.all(35),
                            margin: EdgeInsets.all(20),
                          ),
                          TextButton(
                            child: Text(
                              ' – Day 1:',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dayone()));
                            },
                          )
                        ],
                      )),
                      Container(
                          child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                'assets/four.png',
                              ))),
                          padding: EdgeInsets.all(35),
                          margin: EdgeInsets.all(20),
                        ),
                        TextButton(
                          child: Text(
                            ' – Day 2:',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Daytwo()));
                          },
                        )
                      ])),
                      Container(
                          child: Row(children: [
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/five.png',
                                ))),
                            padding: EdgeInsets.all(35),
                            margin: EdgeInsets.all(20)),
                        TextButton(
                          child: Text(
                            ' – Day 3:',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Daythree()));
                          },
                        )
                      ])),
                      Container(
                          child: Row(children: [
                        Container(
                            padding: EdgeInsets.all(35),
                            margin: EdgeInsets.all(20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/six.png',
                                )))),
                        TextButton(
                            child: Text(
                              ' – Day 4:',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dayfour()));
                            })
                      ])),
                      Container(
                          child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/elevan.png',
                                ),
                              )),
                          padding: EdgeInsets.all(35),
                          margin: EdgeInsets.all(20),
                        ),
                        TextButton(
                          child: Text(
                            ' – Day 5:',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dayfive()));
                          },
                        )
                      ])),
                      Container(
                          child: Row(children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/seven.png',
                                ),
                              )),
                          padding: EdgeInsets.all(35),
                          margin: EdgeInsets.all(20),
                        ),
                        TextButton(
                          child: Text(
                            ' – Day 6:',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Daysix()));
                          },
                        )
                      ])),
                      Container(
                          child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(35),
                              margin: EdgeInsets.all(20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/eight.png',
                                    ),
                                  ))),
                          TextButton(
                            child: Text(
                              ' – Day 7:',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dayseven()));
                            },
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                    child: TextButton(
                        child: Image.asset('assets/ten.png'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forfat()));
                        })),
              ]))),
    );
  }
}
