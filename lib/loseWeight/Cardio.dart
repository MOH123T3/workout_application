// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class CardioExercises extends StatefulWidget {
  int index;
  CardioExercises({super.key, required this.index});

  @override
  State<CardioExercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<CardioExercises> {
  List<String> assetsGif = [
    //1
    'assets/cardio1_1.gif',
    //2
    'assets/cardio2_2.gif',
    //3
    'assets/cardio3_3.gif',
    //4
    'assets/cardio4_4.gif',
    //5
    'assets/cardio5_5.gif',
    //6
    'assets/cardio6_6.gif',
    //7
    'assets/cardio7_7.gif',
    //8
    'assets/cardio8_8.gif',
    //9
    'assets/cardio9_9.gif',
    //10
    'assets/cardio10_10.gif',
  ];

  List<String> heading = [
    //1
    "Cross Jacks | Illustrated Exercise ",
    //2
    "Inner Thigh Raise To Plank | Illustrated Exercise",
    //3
    "Speed Bag Punches | Illustrated Exercise",
    //4
    "Butterfly Dips | Illustrated Exercise ",
    //5
    "Side To Side Hops | Illustrated Exercise",
    //6
    "Deadlift Upright Row | Illustrated Exercise",
    //7
    "Mountain Climbers | Illustrated Exercise",
    //8
    "Bridge And Twist | Illustrated Exercise ",
    //9
    "Side To Side Squats | Illustrated Exercise ",
    //10
    "Alternating Plank Row Leg Raise | Illustrated Exercise",
  ];

  List<String> instructions = [
    //1
    """Cross Jacks Instructions

1. Stand straight with your feet shoulder-width apart and your arms up and extended out to the sides.

2. Jump up and cross your left leg in front of the right, and your left arm on top of the right.

3. Jump again and return to the starting position.

4. Repeat, and reverse the position of your arms and legs.""",

    //2
    """Inner Thigh Raise To Plank Instructions

1. Start in a side plank position with your right shoulder over your elbow, place your left foot on top of a box and bend your right leg back.

2. Squeeze the inner left thigh and lift your hip off the mat.

3. Bring your hip down, without letting it touch the floor, and then bring it back up until your body is in a straight line.

4. Repeat and then switch sides.""",
    //3
    """
Speed Bag Punches Instructions

1. Stand with your feet shoulder-width apart, your knees slightly bent, raise your elbows to shoulder level, and keep your hands at eye level.

2. Shift your weight to the right leg and rotate your right forearm twice.

3. Then shift your weight to the left leg and rotate your left forearm twice.

4. Keep switching sides until the set is complete.""",

    //4
    """Butterfly Dips Instructions

1. Sit on the mat with your feet together, place your hands behind you with your fingers facing forward, bend your knees and let your thighs fall open.

2. Straighten your arms as you press your hips up and bring both knees together.

3. Bend your elbows and lower your body back to the starting position.

4. Repeat until the set is complete.""",

    //5
    """Side To Side Hops Instructions

1. Stand straight with your hands by your sides and your feet hip-width apart.

2. Jump with both feet to the right and then to the left, in a quick, repetitive movement.

3. Repeat until the set is complete.""",

//6
    """Deadlift Upright Row Instructions

1. Stand up with your feet shoulder-width apart and hold a set of dumbbells in front of your thighs.

2. Push your hips back and lower the dumbbells until your torso is parallel to the floor.

3. Stand up and pull the dumbbells toward your chest, keeping your arms a little wider than shoulder-width apart.

4. Repeat until the set is complete.""",

//7
    """Mountain Climbers Instructions

1. Start with your body in a straight line and your hands slightly wider than shoulder-width apart. Keep your toes and balls of the feet touching the floor.

2. Bring one knee up toward the center of your stomach and then quickly alternate between legs.

3. Continue alternating until the set is complete.""",

//8
    """Bridge And Twist Instructions

1. Sit on the mat with your knees bent and your arms extended back.

2. Lift your butt off the mat, extend your right arm toward the ceiling and twist your torso to the left.

3. Lower the hips, return to the starting position and repeat on the opposite side.""",

    //9

    """
Side To Side Squats Instructions

1. Stand straight with your feet shoulder-width apart.

2. Press your hips back and squat.

3. Stand up, take a small step to the side, and squat again.

4. Return to the initial position and repeat this side-to-side movement until the set is complete.""",

    //10
    """Alternating Plank Row Leg Raise Instructions

1. Get into a plank position, with your hands under your shoulders, your feet a little wider than hip-width apart, and hold a dumbbell in each hand.

2. Pull the right dumbbell toward your waistline, squeeze the shoulder blades and then repeat on the left side.

3. Lift your right leg as high as you can without arching your back, hold for one second and then repeat with the left leg.

4. Repeat steps 2 and 3 until the set is complete.""",
  ];

  List<String> properForm = [
    """Proper Form And Breathing Pattern

Tighten your core, keep your knees and elbows loose, and maintain a smooth and steady breathing pattern. Land softly on the balls of your feet with your knees slightly bent, and keep your feet, hips, and knees in line.""",

    //2
    """Proper Form And Breathing Pattern

Keep your upper body stable, engage your core, and maintain your top leg straight. Breathe out as you squeeze the inner thigh and lift the hip off the mat. Breathe in as you slowly lower the hip and return to the starting position.""",

    //3
    """Proper Form And Breathing Pattern

Bounce your weight from leg to leg smoothly and continuously and breathe deeply. Engage your shoulders and don’t drop your elbows. Rotate your forearm and hand forward and maintain both hands at eye level the entire time.""",
    //4
    """
Proper Form And Breathing Pattern

Roll your shoulders back, open the chest, position the hands under your shoulders, place your heels together and let your knees fall open. Breathe out as you press your hips up and extend your arms. Pause at the top to squeeze your legs in, and inhale as you bend your arms and return to the initial position.Proper Form And Breathing Pattern

Focus on your form and keep your core tight at all times. Be careful not to arch your back and maintain a smooth and steady breathing pattern.""",
    //5
    """Proper Form And Breathing Pattern

Keep your knees soft, maintain your back straight, and breathe slowly. Bounce off the floor as fast as you can, face forward and, to maintain your heart rate up, keep a steady pace.""",

    //6
    """Proper Form And Breathing Pattern

Keep your back straight, open the chest and pull your shoulders back. Inhale as you lower the dumbbells, and keep your legs straight or only slightly bent. Push through the heels to get back up, squeeze the glutes and breathe out as you pull the dumbbells toward the chest.""",
    //7
    """Proper Form And Breathing Pattern

Maintain a plank position during the entire exercise, keep your core engaged, your hips low and your body in a straight line. It’s important to maintain proper alignment to get the most out of the exercise. Don’t sacrifice the form for the speed and try to breathe as slowly as possible.""",

    //8
    """Proper Form And Breathing Pattern

Roll your shoulders back, relax your head and neck and engage your core. Breathe out, lift your butt as high as you can and squeeze the glutes. Twist your torso, reach your arm up toward the ceiling and then breathe in as you lower the hips and return to the starting position.""",

    //9

    """Proper Form And Breathing Pattern

Keep your abs and glutes tight, your head up and your chest open. Breathe in as you squat and use your outer heel to push yourself up and to the side. Squat and repeat the movement to the other side.""",
    //10
    """Proper Form And Breathing Pattern

Lock your wrists to protect the joints, keep your core tight, engage your glutes, and maintain your body in a straight line. Breathe out as you pull the dumbbells toward the waistline and breathe in as you lower the legs to return to plank position.""",
  ];

  List<String> assets = [
    //1
    'assets/cardio1.jpg',
    //2
    'assets/cardio2.jpg',
    //3
    'assets/cardio3.jpg',
    //4
    'assets/cardio4.jpg',
    //5
    'assets/cardio5.jpg',
    //6
    'assets/cardio6.jpg',
    //7
    'assets/cardio7.jpg',
    //8
    'assets/cardio8.jpg',
    //9
    'assets/cardio9.jpg',
    //10
    'assets/cardio10.jpg',
  ];
  List<String> exerciseBenefits = [
    //1
    """Exercise Benefits

The cross jacks is a cardio move that warms up the muscles and joints, activates all muscle groups, and keeps your heart rate up. This exercise also boosts your metabolism, improves muscle endurance, and promotes relaxation.""",

    //2
    """Exercise Benefits

The inner thigh raise to plank targets and activates the inner thighs and helps build muscle strength. This exercise also works the deep abdominal muscles and helps to tone your thighs, glutes, and hips.""",

    //3
    """Exercise Benefits

The speed bag punch is a boxing move that is mostly used for speed, agility, and coordination. This exercise targets your shoulders, triceps, and lats and helps tone and sculpt your upper body. This is also an impressive cardiovascular exercise that, when performed with a speed bag, acts as a major stress reliever.""",

    //4,
    """
Exercise Benefits

The butterfly dips is a modified version of the tricep dips with additional lower body benefits. This exercise engages and strengthens your triceps and upper body, and it also works and sculpts your inner thighs and glutes.""",
    //5
    """Exercise Benefits

The side to side hops increases aerobic fitness, strengthens the heart, and boosts weight loss. This exercise improves your agility and power and boosts your explosiveness and speed.""",

    //6
    """Exercise Benefits

The deadlift upright row targets the back of the body and strengthens the hamstrings, glutes, calves, back, and shoulders. This exercise improves your posture and helps prevent injuries in the hamstrings and lower back.""",

    //7
    """Exercise Benefits

Mountain climbers are a dynamic, compound exercise, that works several muscles simultaneously and in a constant movement. This full body exercise has the added bonus of raising your heart rate and boosting your metabolism. Adding mountain climbers to your workout routine can also help increase aerobic fitness, flexibility, and agility.

""",
    // 8
    """Exercise Benefits

The bridge and twist is a modified version of the advanced bridge that targets the glutes, abs, and obliques. This exercise also strengthens your arms, shoulders, hips, and thighs, enhances core stability and balance, and improves the flexibility of the spine.""",

    //9
    """Exercise Benefits

The side to side squats activates several muscle groups simultaneously, working the legs, glutes, and core. The squat increases performance and flexibility and the side-to-side movement improves dynamic balance and agility""",

    //10
    """Exercise Benefits

The alternating plank row leg raise is a full body exercise that trains your core, glutes, shoulders, arms, and legs. This challenging move strengthens and tones your whole body, improves stability and posture, blasts calories, and boosts your overall conditioning.""",
  ];
  List<String> setsAndReps = [
    //1
    """Sets And Reps

Start slowly and add 1 or 2 sets of 12 to 16 repetitions to your warm up routines. To thoroughly warm up your body, pair the cross jacks with jumping jacks, criss cross crunches and mountain climbers.""",

    //2
    """Sets And Reps

This is an advanced move so practice doing side plank hip lifts and the reverse clamshell first. Once you’re ready to advance, add 2 or 3, 30-second sets of the inner thigh raise to plank to your lower body workouts.""",

    //3
    """
Sets And Reps

Start with 30-second to 1-minute sets and, once you’re comfortable with your form, increase the speed. For a complete full body workout, pair the speed bag punches with lower body moves like the alternating side lunge and the flutter kick squats.""",

    //4
    """Sets And Reps

Do 2 or 3 sets of 10 to 15 reps and, if you’re a beginner, practice doing bench dips first. When you’re ready to increase the challenge, add the single leg tricep dips to your workout routines.""",
    //5
    """Sets And Reps

Do 2 or 3 sets of 30 seconds to 1 minute. To thoroughly warm up your body, pair the side to side hops with cross jacks, scissor skiers and mountain climbers.""",

    //6
    """Sets And Reps

Practice doing the romanian deadlift and the wide row first. Once you’re comfortable with your form, pair the 2 movements and do 2 to 3, 30-second to 1-minute sets of the deadlift upright row.""",
    //7
    """Sets And Reps

Start with a slow pace and do 1 or 2 sets of 8 to 10 repetitions. Once you’re comfortable you can increase the number of sets and reps. With mountain climbers, it’s crucial that you pay special attention to the alignment of the body. Practice doing planks first and then you can safely advance to mountain climbers.""",

    //8
    """Sets And Reps

Start with the advanced bridge and do some crab toe touches first. Once you’re comfortable with your form, advance to the bridge and twist and complete 2 or 3 sets of 8 to 10 repetitions on each side.

""",
//9

    """Sets And Reps

Start with a basic bodyweight squat and acquire proper technique. Once you’re comfortable with your form, add some jump squats or side to side squats to your workout. Do a 30 second to 1-minute set or 20 repetitions and, for a more complete lower body workout, combine this exercise with alternating side lunges.""",
    //10

    """Sets And Reps

To practice proper exercise form, start with the bent over row and plank leg lifts. Once you’re comfortable, pair both moves and add 2 or 3, 30-second to 1-minute sets of the alternating plank row leg raise to your full body circuits.""",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                assetsGif[widget.index],
              ),
              Text(
                heading[widget.index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  instructions[widget.index],
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                properForm[widget.index],
                style: const TextStyle(color: Colors.black, fontSize: 20),
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
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                setsAndReps[widget.index],
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              )
            ],
          )),
        ));
  }
}
