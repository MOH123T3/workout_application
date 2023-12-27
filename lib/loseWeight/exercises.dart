// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Exercises extends StatefulWidget {
  int index;
  Exercises({super.key, required this.index});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  List<String> assetsGif = [
    //1
    'assets/weight1_1.gif',
    //2
    'assets/weight2_2.gif',
    //3
    'assets/weight3_3.gif',
    //4
    '',
    //5
    'assets/weight6_6.gif',
    //6
    'assets/weight7_7.gif',
  ];

  List<String> heading = [
    //1
    "Dumbbell Thrusters Demonstration",
    //2
    "Romanian Deadlift | Illustrated Exercise ",
    //3
    "Surfer Burpees | Illustrated Exercise ",
    //4
    "",
    //5
    "Walking Lunges | Illustrated Exercis",
    //6
    "Single Arm Dumbbell Snatch | Illustrated Exercise ",
  ];

  List<String> instructions = [
    //1
    """Dumbbell Thrusters Instructions

1. Stand with your feet shoulder-width apart and hold your dumbbells in front of your shoulders.
2. Squat down until your thighs are parallel to the floor.
3. Stand up and extend your arms over your head.
4. Bend your arms, return to the starting position and repeat the exercise.""",
    //2
    """Romanian Deadlift Instructions

1. Stand up tall with your feet shoulder-width apart and hold a dumbbell in each hand.
2. Push your hips back and lower the dumbbells, while keeping your legs straight or only slightly bent.
3. Return to the starting position and repeat.""",
    //3
    """Surfer Burpees Instructions

1. Stand straight with your feet shoulder-width apart.
2. Squat and place both hands in front of you, just on the outside of your feet.
3. Jump back until your legs are fully extended and your body is in plank position.
4. Do a push up and then jump to your left side, landing with both feet inside the mat, as if you were on a surfboard.
5. Jump back into plank position, and then repeat on the right side.
6. Keep alternating sides until the set is complete.""",
    //4
    "",
    //5
    """Walking Lunges Instructions

1. Stand with your feet hip-width apart, take a step forward with your right foot and then slowly bend both knees until your back knee is just above the floor.
2. Stand back up, take a step forward with your left foot and bend both knees until your back knee is just above the floor.
3. Repeat this forward movement for the entire duration of the set.
""",
//6
    """Single Arm Dumbbell Snatch Instructions

1. Grab a dumbbell with your right hand, bend your knees, push your hips back and take the dumbbell between your feet.
2. Pull the dumbbell up by extending your hips and knees and, as the dumbbell reaches your shoulder, rotate your hand to the front and punch straight up.
3. Lower the dumbbell and return to the initial position.
4. Repeat and then switch sides.""",
  ];

  List<String> properForm = [
    """Proper Form And Breathing Pattern

Dumbbell thrusters are not appropriate for beginners and you need to pay special attention to your form to prevent any injuries. Keep your chest up, the core engaged, the hips back and inhale as you squat. Put pressure on the heels, push yourself back up, and exhale as you press your arms up.""",
    //2
    """ Proper Form And Breathing Pattern

When doing the romanian deadlift keep your chest open, your shoulders back, and maintain your back and arms completely straight at all times. Do the movement slowly and breathe out as you lower the dumbbells. Push through the heels to get back up and squeeze your glutes at the end of each repetition.""",
    //3
    """Proper Form And Breathing Pattern

Focus on your form and keep your core tight at all times. Be careful not to arch your back and maintain a smooth and steady breathing pattern.""",
    //4
    "",
    //5
    """Proper Form And Breathing Pattern

Maintain your back straight, keep your shoulders back, tighten the abs and keep your weight in the front heel. Breathe in as you lunge, keep your feet hip-width apart and lower your body until your thigh and leg form a 90-degree angle. Breathe out as you push back up to the starting position and take a step forward.""",
    //6
    """Proper Form And Breathing Pattern

Keep your core engaged, relax your neck and back, and face forward. Keep the movement dynamic and continuous, and breathe out as you punch straight up and extend your body.

"""
  ];

  List<String> assets = [
    //1
    'assets/weight1.jpg',
    //2
    'assets/weight2.jpg',
    //3
    'assets/weight3.jpg',
    //4
    "",
    //5
    'assets/weight6.jpg',
    //6
    'assets/weight7.jpg',
  ];
  List<String> exerciseBenefits = [
    //1
    """Exercise Benefits

The dumbbell thrusters is a compound exercise that combines the squat with the shoulder press. This is a very complete and versatile exercise that strengthens your entire body and improves your aerobic fitness, stamina, and endurance.""",
    //2
    """Exercise Benefits

The romanian deadlift targets the back of the legs and glutes and strengthens the lower back and calves. This exercise strengthens the muscles around critical tendons and ligaments and helps to prevent injuries in the hamstrings and lower back.""",
    //3
    """Exercise Benefits

Surfer burpees are a great full body exercise that boosts your heart rate and improves strength, mobility, explosiveness, and flexibility. This exercise works all major muscle groups, and it’s one of the best calorie-burning moves you can do.""",
    //4,
    "",
    //5
    """Exercise Benefits

Doing walking lunges helps to sculpt tone and strengthen your legs and glutes, and improves the flexibility of the hips. This exercise also engages your core and increases your balance and stability.


""",
    //6
    """Exercise Benefits

The single arm dumbbell snatch is a dynamic, compound move that works your whole body and improves your speed and agility. This exercise helps to develop your coordination and explosiveness and strengthens your shoulders, lower back, hamstrings, glutes, and lats.""",
  ];
  List<String> setsAndReps = [
    //1
    """Sets And Reps

If your goal is to lose weight and improve your cardiovascular fitness, choose lighter dumbbells and do 30-second to 1-minute sets. If your goal is to increase muscle strength and power, choose heavier dumbbells and do 3 sets of 6 to 8 repetitions.""",
    //2
    """Sets And Reps

If your goal is to build strength and gain muscle, use heavier weights and do sets of 6 to 8 repetitions. If you want lean and long muscles, use lighter dumbbells and do 2 or 3 sets of 12 to 16 repetitions.""",
    //3
    """Sets And Reps

If you’re a beginner start with squat thrusts, or simply jump with one leg at a time. For a great fat-burning boost, add 3 to 5 sets of 10 to 12 surfer burpees to your regular workout routine.""",
    //4
    "",
    //5
    """Sets And Reps

Practice doing regular lunges first. Once you’re comfortable with your form, advance to walking lunges and do 2 or 3, 30-second to 1-minute sets. If you wish to mix things up and increase the challenge, add front and back lunges, jumping lunges and curtsy lunges to your workouts.
""",
    //6
    """Sets And Reps

Start with 30-second sets or do 10 to 12 repetitions on each side. If you’re a beginner practice doing thrusters, the lawnmower pull and the shoulder press first.""",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 3.h,
                    )),
              ),
            ),
            Image.asset(
              assetsGif[widget.index],
              height: 50.h,
            ),
            Text(
              heading[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.sp),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              instructions[widget.index],
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              properForm[widget.index],
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              assets[widget.index],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              exerciseBenefits[widget.index],
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              setsAndReps[widget.index],
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
            ),
          ],
        ));
  }
}
