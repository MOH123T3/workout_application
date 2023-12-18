// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gym_project/loseWeight/Cardio.dart';

class CardioRow extends StatefulWidget {
  const CardioRow({super.key});

  @override
  State<CardioRow> createState() => _CardioRowState();
}

class _CardioRowState extends State<CardioRow> {
  List title = [
    '1. Cross Jacks :',
    '2. Inner thingh raise to plank : ',
    '3. Speed bag punches :',
    '4. Butterfly dips :',
    '5.  Side to side hops :',
    '6.  Deadlift upright row :',
    '7. Mountain climbers :',
    '8. Bridge and twist :',
    '9. Side to side squats :',
    '10. Plank row leg raise :',
  ];
  List subTitle = [
    """45 seconds. Stand with your feet shoulder-width apart and jump up, while crossing your legs and arms in front of you.""",
    """30 seconds + 30 seconds. Start in a side plank position with your right shoulder over your elbow, place your left foot on top of a box and bend your right leg back. Squeeze the inner left thigh and lift your hip off the mat. Bring your hip down, without letting it touch the floor, and then bring it back up until your body is in a straight line. Repeat for 30 seconds and then switch sides.""",
    """45 seconds. Stand up, raise your elbows up to shoulder level, shift your weight to the right leg and rotate your right forearm twice. Switch sides and repeat.""",
    """60 seconds. Sit on the mat with your feet together, place your hands behind you, bend your knees and let your thighs fall open. Straighten your arms as you press your hips up and bring both knees together. Bend your elbows and lower your body back to the starting position. Repeat for 60 seconds.""",
    """45 seconds. Stand up with your feet hip-width apart. Jump with both feet to the right and then to the left, in a quick, repetitive movement.""",
    """60 seconds. Stand up with your feet shoulder-width apart and hold a set of dumbbells in front of your thighs. Push your hips back and lower the dumbbells until your torso is parallel to the floor. Stand up and pull the dumbbells toward your chest, keeping your arms a little wider than shoulder-width apart.""",
    """45 seconds. Get down into a plank position, bring one knee up toward the center of your stomach, and then quickly alternate between legs.""",
    """60 seconds. Sit on the mat with your knees bent and your arms extended back. Lift your butt off the mat, extend your right arm toward the ceiling and twist your torso to the left. Lower the hips, return to the starting position, and repeat on the opposite side.""",
    """45 seconds. Squat and, as you stand up, take a small step to the side and squat again. Repeat this side-to-side movement until the set is complete.""",
    """60 seconds. Get into a plank position, with your hands under your shoulders, your feet a little wider than hip-width apart, and hold a dumbbell in each hand. Pull the right dumbbell toward your waistline, squeeze the shoulder blades and then repeat on the left side. Lift your right leg as high as you can without arching your back, hold for one second and then repeat with the left leg."""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/gym1.jpg'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Full Body Cardio Burst Workout Instructions",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                        child: ListTile(
                          title: Text(
                            title[index],
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              subTitle[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CardioExercises(index: index)));
                          },
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
