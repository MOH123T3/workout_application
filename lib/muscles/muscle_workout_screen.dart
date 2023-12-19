// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Muscle extends StatefulWidget {
  const Muscle({super.key});

  @override
  State<Muscle> createState() => _MuscleState();
}

class _MuscleState extends State<Muscle> {
  List<String> workoutTitle = [
    "BICEPS WORKOUT:",
    "BACK WORKOUT:",
    "LEG WORKOUT:",
    "TRICEP WORKOUT:",
    "CHEST WORKOUT:",
    "SHOULDER WORKOUT:",
  ];

  List<String> workoutDescription = [
    "Bicep Muscles The bicep muscles help to move both the shoulder and elbow joints, as well as twist the forearm. This muscle creates a lot of your general arm movement and function. The main muscle is the two-headed biceps brachii, which sits at the front of your arm and is the most visible arm muscle. It’s supported by the deeper brachialis muscle, and brachioradialis in your forearm. Understanding the make-up of your bicep muscles will allow you to hit your workout harder and more efficiently, for maximum gains.",
    "Back MusclesThe back is one of the most complex muscle groups in the body and consists of dozens of muscles. They can be divided into three groups — superficial, intermediate, and deep. These layers refer to the depth of the muscles within the back. Most of the exercises below are focused on muscles in the superficial layer, which are some of the largest and most easily worked. Get the low down on these main muscles below. Additionally, because the back cannot work by itself, there are muscles in the shoulders and arms that are regularly engaged when doing a back workout. Knowing how everything fits together will allow you to engage beast mode on back day. ",
    "Leg Muscles The legs consist of dozens of muscles that flex, bend, extend, adduct, abduct, and rotate your legs and allow movement. This ultimate leg workout focuses on four main muscle groups — the quadriceps, hamstrings, glutes, and calves. Understanding how they all fit together and work with each other will ensure you get the most out of your workout.",
    "Tricep Muscles Knowing the anatomy of the triceps is valuable to understanding how to maximize your workouts and reach peak beast mode. Triceps have three different heads — lateral, long, and medial. For maximum gains, you need to work all three. While you can’t completely isolate a single head when exercising, you can choose exercises that emphasize one over another. However, the goal is to build all three heads proportionately to achieve the distinctive horseshoe shape of aesthetic triceps.",
    "Chest Muscles While there are several muscles in the chest, the largest and most visible muscle is the pectoralis major. This muscle, commonly called your pec, sits at the front of the chest and is the most natural muscle to focus on when it comes to working out. However, fully understanding the make-up of the chest structure is fundamental in getting peak performance in your chest workout. ",
    "Shoulder Muscles The shoulder is a complex part of the body. It’s made up of the clavicle, scapula, and humerus bones, as well as multiple muscles that allow various movements and functions. Knowledge is power when it comes to building muscle mass. As such, knowing more about the anatomy of the shoulder will allow you to understand and improve your workouts.",
  ];

  List<String> assets = [
    'assets/muscle1.jpg',
    'assets/muscle2.jpg',
    'assets/muscle3.jpg',
    'assets/muscle4.jpg',
    'assets/muscle5.jpg',
    'assets/muscle6.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: workoutTitle.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: index == 0
                      ? _biceps
                      : index == 1
                          ? _back
                          : index == 2
                              ? _leg
                              : index == 3
                                  ? _tricep
                                  : index == 4
                                      ? _chest
                                      : _shoulder,
                  child: Image.asset(assets[index]),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(workoutTitle[index],
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  workoutDescription[index],
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            );
          },
        ));
  }

  void _biceps() {
    showFlexibleBottomSheet(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      anchors: [0, 0.5, 1],
      isSafeArea: true,
      context: context,
      builder: (
        BuildContext context,
        ScrollController scrollController,
        double bottomSheetOffset,
      ) {
        return SafeArea(
          child: Material(
              borderRadius: BorderRadius.circular(10),
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          """ 1. Barbell Cheat Curls:                                                       """,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/muscle11.jpg'),
                      Text("""Execution

Choose a weight that’s a slightly heavier than you’d typically use in a barbell curl.
Stand with your feet just wider than hip-width apart, back straight and core engaged.
Start with the barbell down, holding it with your palms facing forward. 
Lift the barbell to chest height. As this is a cheat curl, you can use momentum to lift the bar, by engaging muscles other than your biceps and using a slight swing. Keep in mind that you don’t want to lean backward though. You should maintain a straight back at the top of the move. 
Slowly lower the barbell back to the starting position, thereby working the muscles harder as they lower. 
Repeat until failure, then immediately move into barbell drag curls. 
 

Sets: 3

Reps: To failure

"""),
                      Text(
                          """ 2. Weighted Chin-ups:                                                       """,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/muscle13.jpg'),
                      Text("""Execution

Attach your chosen weight around your waist. 
Hold onto the chin-up bar, with your palms facing towards you. Keep your body as straight as you can, with your core engaged.
Start with your arms extended, and pull yourself up, so your chin is above the bar. 
Try not to swing your body in order to get yourself up, focus on using just your arms and shoulders. 
Repeat until failure, then immediately move into the peak contraction chin curls. 
 

Sets: 3

Reps: To failure



"""),
                      Text(
                          """ 3. Banded Dumbbell Curls:                                                       """,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/muscle14.jpg'),
                      Text("""Execution

Set yourself up with your resistance band. Hook the bottom of the band under your feet, toes pointing straight out in front.
Hold the barbells, as well as the resistance band in both hands. 
Start with your arms by your side. 
Lift the weights up to shoulder height, palms facing towards you. The resistance bands should be tight enough that you’re really feeling it through the top half of the lift.
Slowly lower the weight back to hip height, with control.
Repeat until failure, for three sets. 
 

Sets: 3

Reps: To failure

"""),
                      Text(
                          """ 4. Dumbbell Incline Curls:                                                       """,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/muscle15.jpg'),
                      Text("""Execution

Sit on your reclined seat, with the back reclined between 50 and 60 degrees. 
Hold your dumbbells by your sides, with your arms fully extended. Your hands should be sitting slightly behind your body. 
Lift the weights up, palming facing towards you, until your biceps are fully contracted — about chest height. 
Lower the weights back down, with control, until your arms are fully extended again. Increase the intensity but squeezing your triceps at the bottom of the move, ensuring maximum stretch of the long head of the bicep.
Repeat until failure, for two sets. 
 

Sets: 2

Reps: To failure


"""),
                      Text(
                          """ 5. Dumbbell Curl Trifecta:                                                       """,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/muscle16.jpg'),
                      Text("""Execution

Stand with your feet just wider than hip-width apart, body straight, core engaged.
Start with your hands down by your sides. 
The first rep will target the long head in your bicep. Lift the weight up, and across your chest, so the move finishes in front of the opposite shoulder. Be mindful of your hands. You’ll want to end with your palms facing up, and thumb facing forward. This means you’ll be twisting that forearm as you lift.
Lower the weight back to your sides.
The second rep will target the brachialis. Lift the weight up, and across your chest, so the move finishes in front of the opposite shoulder. Again, be mindful of your hands. This time, you’ll want to end with your palms facing down and thumb towards your body. 
Lower the weight back to your sides.
The final rep of the trifecta is going for the short head. Instead of rotating the shoulder in, you’ll rotate it out. This looks like a regular bicep curl, but with your shoulder rotated outward more so your arms are moving up the side, rather than the front of your body.  The move should finish with your hand up by the outside of your shoulder.
Lower the weight back to your sides. 
These three different reps, constitute one rep of the trifecta, so by repeating eight times, you’ll do 24 curls in total on each arm. 
Repeat for two sets. 
 

Sets: 2

Reps: 8, in each position on each arm



"""),
                    ]),
              ))),
        );
      },
    );
  }

  void _back() {
    showFlexibleBottomSheet(
        minHeight: 0,
        maxHeight: 1,
        initHeight: 0.5,
        context: context,
        builder: (
          BuildContext context,
          ScrollController scrollController,
          double bottomSheetOffset,
        ) {
          return SafeArea(
            child: Material(
                child: SingleChildScrollView(
                    child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        """ 1. Deadlift:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle7.jpg'),
                    Text("""Execution:

Repeat the instructions above for the straight arm pushdowns. Do 10-12 reps before each deadlift set. 
Moving on to the deadlift, you’ll be using heavier weights for fewer reps, so load the bar appropriately. 
Stand in front of your bar with your feet hip-width apart. You’ll have your knees bent at the bottom of the move.
Hold the bar in an overhand grip at shoulder width. 
Pull the bar straight up until your body is upright, arms are straight down, and the bar should be testing in front of your thighs.
Your knees will straighten first; then, your body will straighten, tilting at the hips. Keep in mind to keep your back and neck as straight as possible when performing this move. 
Lower the bar back to the ground, with control. 
Repeat for four, then rest for 30 seconds. 
Then, you’ll move into the wide grip pullups, before the last set of deadlifts, which will need another straight arm pushdown warm-up. The final set is four reps with a heavier weight and another 30-second rest. 
 

Sets: 2

Reps: 4RM/4RM

"""),
                    Text(
                        """ 2. Weighted Chin Lifts:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle13.jpg'),
                    Text("""Execution:

Attach your chosen weight around your waist. Make sure you opt for something fairly substantial, as you’re only doing four reps. 
Hold onto the chin-up bar with your palms facing towards you, and hands shoulder-width apart. Keep your body as straight as you can, with your core engaged.
Start with your arms extended, and pull yourself up, so your chin is above the bar. 
Try not to swing your body to get yourself up; focus on using just your back and shoulders. 
Repeat for four, then return to the first part of this combo — the deadlifts. Warm-up again with the straight arm pushdowns, and then the second set of the deadlifts, before coming back for another eight chin lifts, with a lighter weight.
 

Sets: 2

Reps: 4RM/8RM


"""),
                    Text(
                        """ 3. Barbell Dead Rows:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle9.jpg'),
                    Text("""Execution:

Stand in front of your bar with your feet hip-width apart. You’ll have your knees bent at the bottom of the move.
Hold the bar in an overhand grip at shoulder width. 
Pull the bar straight up, from the ground, until it reaches your stomach. Unlike the deadlift, you’ll keep your body bent at the hips, in a row stance, so your elbows should pull back behind your body.
Lower the bar back to the ground.
For this move, because you’re training explosively, you should be pulling the bar quickly up, but still focussing on contracting your back muscles to achieve the row. The weight should be heavy enough that you max out at 10 to 12 reps. 
Repeat for eight to 10 reps for two to three sets. 
 

Sets: 2-3

Reps: 8-10



"""),
                    Text(
                        """ 4. Alternating High Pulley Row:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle10.jpg'),
                    Text("""Execution:

Stand facing the cable machine, with the pulley set up high. You’ll start with your feet hip-width apart.
Hold the cable in one hand, palms facing in. 
Step your foot back, on the same side that you’re holding the cable and pull the cable all the way out until your hand is in line with your chest. Keep your elbow tucked in.
As you release the cable back up, return your foot to the original position. 
Swap the cable to the other hand, as the cable reaches head height. You should feel your lats reach a full extension at this point, so you don’t need to release the cable back to the top for this exercise. 
Repeat the pull on the second arm, again stepping the foot back on the same side.  
Continue to alternate arms, doing 10-12 reps on each arm, to failure, for two to three sets. 
 

Sets: 2-3

Reps: 10-12RM to failure on each arm

 

"""),
                    Text(
                        """  5. Hyper Y/W:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle17.jpg'),
                    Text("""Execution:

Grab two weight plates or barbells that you can comfortably hold in your hands. 
Lay facedown across a physioball, holding the weights in front of your chest. Stabilize yourself by planting your feet, just wider than hip-width apart, toes gripping the ground.  
You’ll want to be able to raise your upper body, so position the ball towards your lower stomach. Begin with your upper body relatively relaxed over the ball, face near the ground. 
Starting with a Y, lift your torso, extending your arms out straight, into a Y shape. Pull your body and arms back, as far as they can comfortably go so that you can feel a full contraction in your muscles. Singing The Village People’s YMCA is optional but recommended. 
Release and lower your body back down, bringing your arms back in front of your chest.
Next is the W. Again, lift your torso, this time forming a W with your arms. Keep your elbows bent, so your hands stay in line with your head. Rotate your shoulders out as far as they can go. You should feel a substantial contraction between your shoulder blades. 
Release and lower your body back down, bringing your arms back in front of your chest.
Continue to alternate between the Y and W, completing 14-20 reps. 
 

Sets: 2

Reps: 14-20, alternating between Y and W


 

Sets: 2

Reps: 8, in each position on each arm



"""),
                    Text(
                        """  6. Barbell Shrugs:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle18.jpg'),
                    Text("""Execution:

Hold the bar in an overhand grip at your desired width.
Keeping your arms straight, shrug your shoulders up.
Begin with one shrug, and hold it at the top for one second. 
Lower the bar back down.
Next is two shrugs. However, on the second shrug, hold it at the top for two seconds.
Release.
Then do three shrugs. On the third, hold it at the top for three seconds.
Continue to build the ladder, with four shrugs and a four-second hold, then five and five, until you reach 10 shrugs with a 10-second hold.
If you find yourself struggling to complete any of the shrugs or the holds, feel free to put the bar down and take a momentary rest before continuing.
If you’re a proper sucker for punishment, you can ladder back down from 10. 
 

Sets: 1

Reps: Ladder to 10 reps



"""),
                  ]),
            ))),
          );
        },
        anchors: [0, 0.5, 1]);
  }

  void _leg() {
    showFlexibleBottomSheet(
        minHeight: 0,
        maxHeight: 1,
        initHeight: 0.5,
        context: context,
        builder: (
          BuildContext context,
          ScrollController scrollController,
          double bottomSheetOffset,
        ) {
          return SafeArea(
            child: Material(
                child: SingleChildScrollView(
                    child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        """ 1. Barbell Squats:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle19.jpg'),
                    Text("""Execution

Start with the barbell across the back of your shoulders, and feet just wider than hip-width apart, toes pointed slightly out. Additionally, keep your head up and elbows tucked in. 
Bring yourself down until your knees are at 90-degrees. 
For proper form, you’ll want to make sure you’re bringing the barbell down in a straight line. Bend at the hips, pushing your butt backward, but keeping the chest up. If you’re new to working out or unsure about your form, you can perform these as box squats, using the box as a guide. 
Drive-up through the floor, back to standing position. 
Focus on bringing the weight back up in a straight line. Engage your core, moving your hips and chest as one unit. This will make sure you’re not accidentally swinging forward or backward. 
You’ll complete four sets, starting with your heaviest weights. Dropping the weight as you go allows you to shift your focus to reps. 
 

Sets: 4

Reps: 5RM/5RM/10RM/25RM — dropping weight each set

 

"""),
                    Text(
                        """ 2. Barbell Hip Thrust:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle20.jpg'),
                    Text("""Execution

Make sure you have a box that won’t move around. 
To set yourself up, start by sitting on the floor in front of your box. Lay your barbell across the front of your hips. Rest your upper back, across the middle of your shoulder blades, along the front edge of the box. Your feet should be flat on the floor, just wider than hip-width apart, with your toes pointed slightly outward. The distance of your feet from the box should allow your knees to be at 90-degrees at the top of the move.
Push up, focussing on squeezing your glutes until your torso and upper thighs are in a straight line. You should feel a powerful contraction in the glutes and hamstrings. Hold for a few seconds. 
Keep in mind that your hands are there to stabilize the bar, but not to help shift the weight. 
When you’re at the top of the move, be careful not to let your lower back hyperextend. Prevent this by tilting your pelvis forward slightly, and contracting your lower stomach muscles a little bit. 
Bring your hips back down until your bottom is just above the floor. 
You’ll complete four sets, adding weight as each set reduces in reps. 
 

Sets: 4

Reps: 25/10/5/5 — adding weight each set

 


"""),
                    Text(
                        """ 3. 4. Dumbbell TKE Drop Lunge:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle24.jpg'),
                    Text("""Execution

Attach your exercise bands very securely to a rack. Remember that the muscles in your legs are some of the largest and strongest in your body, so you’ll need higher resistance bands. 
You’ll also need some dumbbell weights, which you’ll just hold in your hands. 
Take a lunge position. Your front foot will be flat on the ground, and your weight centered over the top. This is the leg that you’ll attach the band to, hooking it behind your knee. The back leg will be far enough back, that at the bottom of your lunge, both knees are at 90-degree. 
Drop down into a lunge, keeping your arms at your sides, torso straight, and core engaged.
Drive-up from the ground, and as you reach the top of the move, fully extend your leg, locking your knee. Doing so will achieve that full contraction. 
You’ll complete two to three sets on each leg. 
 

Sets: 2-3

Reps: 10-12RM on each leg
 

"""),
                    Text(
                        """ 4. Bulgarian High/Low Split Squats — Plyometric Hops:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle21.jpg'),
                    Text("""Execution

Keep your position from the previous exercise; however, you’ll need to ditch the weights. 
To start, drop into a squat.
At the bottom of the squat, you’ll push explosively off the ground into a jump. Keep your back foot on the bench. The front knee should come up to about belly button height so that you can clap your hands together under that knee. This serves two purposes. One is to make sure you’re jumping high enough. The second is to give yourself a little cheer because these are hard. 
As you land, you’ll drop straight back down into a squat. You can touch your fingers to the ground as you do, to help stabilize your landing. 
You’ll want to focus on trying to land in the same spot you jumped from so that your position and posture are not compromised. 
Repeat until failure on each leg. 
 

Sets: 1

Reps: to failure on each leg



"""),
                    Text(
                        """ 5. Weighted Adductor Goblet Squat:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle22.jpg'),
                    Text("""Execution

Shoes off — you’ll only need to be in your socks for this exercise.
Grab a dumbbell or weight, which you’ll hold with both hands, at the center of your chest. 
Position your feet just wider than hip-width apart. Put your weight on one leg. The other one will do the sliding. 
Sink into a squat. However, as you do, your weight will remain mostly on the non-sliding leg. The slider will move out from the side of your body. 
At the bottom of the move, to come back up, focus on squeezing your inner thighs together. This will force the activation of the adductors. You don’t want to be stepping or pulling your leg backing, as that won’t work the muscles you want to focus on in this exercise. 
Repeat 10 to 12 times for two sets on each leg. 
 

Sets: 2

Reps: 10-12RM on each leg


"""),
                    Text(
                        """ 6. Hip Band Ladder Finish:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle23.jpg'),
                    Text("""Execution

Set yourself up with your resistance band. Hook the bottom of the band under your feet, toes pointing straight out in front. The top of the band needs to hook around the outside of your upper arms. To do this, clasp your hands under your chin, holding the band and scoop the band out around your elbows, which should then be perpendicular to your body.
Keeping the bands under your feet, take one step to the left. Then take one step to the right. 
Repeat, this time taking two steps to the left, then two to the right.
Repeat with three each way.
Check your form to make sure your toes aren’t pointing out. 
Continue to repeat the steps each way, increasing by one each time, until you’re at a ladder of 10 going both ways.
 

Sets: 1 or 2

Reps: Ladder to 10 reps

 


"""),
                  ]),
            ))),
          );
        },
        anchors: [0, 0.5, 1]);
  }

  void _tricep() {
    showFlexibleBottomSheet(
        context: context,
        builder: (BuildContext context, ScrollController scrollController,
            double bottomSheetOffset) {
          return SafeArea(
              child: Material(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        """ 1. Close Grip Bench Press :                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle31.jpg'),
                    Text("""Execution
              
              Hold the barbell in an overhand grip, with your hands in line with your shoulders.
              Keep your elbows tight and forward — resist flaring them out.
              Maintain good bench posture — engage your core and glutes, keep your feet flat on the floor, and drive into the bench.
              Lift the bar from the pins to a full extension, with your arms 90 degrees to your body.
              Bring the bar back to the pins, with control.
              You’ll complete three sets of 10, then six, then four reps. Choose a weight that will allow you to reach failure in each set. 
              Keep in mind that as you lower the bar, unlike regular bench presses, the bar will be aiming toward your upper ribcage, rather than higher at your sternum.
               
              
              Sets: 3
              Reps: 10/6/4 — to failure
              """),
                    Text(
                        """ 2. Tricep Dips:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle32.jpg'),
                    Text("""Execution
              
              Set yourself up at the dip station. You’ll need an appropriate weight to hang around your waist, as well as resistance bands you can use for the assisted dips.
              For the first set, hang the weight around your waist, or hold it between your knees, and dip until you reach failure.
              Once you’ve reached your failure point, remove the weight, and immediately continue to dip with just your body weight. Repeat until failure.
              Finally, for the last drop set, hang the resistance band between the bars, hooking it under your knees to continue, again, until failure.
              Complete three lots of these tri-sets, going to failure on each set.
              In this workout, keep your torso as upright as possible. You’ll also want to focus on pushing down through your palms, even releasing your grip slightly to ensure your forearms aren’t take over.
              Sets: 3
              Reps: to failure on each drop (weighted, bodyweight and assisted)
              
               
              
              
              """),
                    Text(
                        """ 3. Overhead Cable Extension:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle33.jpg'),
                    Text("""Execution
              
              Stand with your back to the cable machine and tilt your torso forward slightly, keeping your neck straight. Create a stable standing position by dropping one leg back behind the other.
              Hold the cables in both hands, above and behind your head, with your elbows tucked in next to your ears.
              Pull the cables down to a full extension in front of your head. Keep your elbows in tight.
              Allow the cables to retract with control, pulling your arms back to the side of your head. Let your elbows go as far back as your body will allow, so the long head gets a full extension. Plus, doing this is a phenomenal stretch that feels fantastic. 
              Repeat this action 10-12 times to failure.
              Once you’ve maxed your set, immediately turn around to face the cable machine. 
              Hold the cables level with your sternum, again, keeping your elbows tucked in. Your legs should be slightly wider than shoulder-width apart.
              Drag the cables down, keeping your hands as close to your body as you can, and your elbows tucked in. You want to push down until your arms are fully extended. By doing this, you’ll achieve a full contraction in that long head. 
              Repeat this action 10-12 times to failure.
              Sets: 3 of each exercise, performed back to back as a drop set
              Reps: 10-12RM — to failure
              
              
              
              """),
                    Text(
                        """ 4. Cable Rope Triceps Pushdown:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle34.jpg'),
                    Text("""Execution
              
              Stand facing the cable machine with one foot dropped behind the other. Your weight will be on your front foot, torso leaning forward slightly, and your toes extended on the back foot, but still bearing some weight. 
              Hold the cables at head height, keeping your elbows tucked in. 
              Drag the cables down, until your arms are fully extended in front of your body, keeping them close to your sides. 
              As you approach the bottom of the extension, shift your weight onto your back foot, leaning your torso back slightly. Doing this moves your body away from the machine, keeping that angle between your forearms and the cable closer to 90 degrees. 
              Be careful to make sure you’re not using the shift in weight and body position to pull the rope — you want to ensure your arms are doing the work. 
              Allow the cables to retract with control, shifting your weight back to the front foot, and your original position.
              Repeat this action 12 times to failure.
              Sets: 2
              Reps: 12RM to failure
              
              e
              
              
              """),
                    Text(
                        """ 5. Lying Triceps Extension:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle35.jpg'),
                    Text("""Execution
              
              Safely and securely attach the bands to something exceptionally heavy or attached to the floor. No-one wants to get smacked in the head with exercise bands at full stretch if they accidentally pop off. 
              Attach the other end of the bands to your chosen weights, again, making sure they’re secure.
              Lie down on the bench, with good posture — engage your core and glutes and keep your feet flat on the floor.
              Start with the weights held just behind the top of your head, elbows bent and tucked in close to your ears.
              Extend your arms up toward the ceiling, with a full extension achieved when your arms are at a 90-degree angle to your body. At this point, the bands should be pulling on the weights, adding that additional tension. You should feel the burn. 
              Lower the weights back to behind your head, allowing the elbow to extend back as far as your body allows. Doing this will allow for that brilliant stretch along the back of your arm. 
              Repeat this action 15 times to failure.
              Sets: 2
              Reps: 15RM to failure
              
              """),
                  ],
                ),
              ),
            ),
          ));
        });
  }

  void _chest() {
    showFlexibleBottomSheet(
        context: context,
        builder: (BuildContext context, ScrollController scrollController,
            double bottomSheetOffset) {
          return SafeArea(
              child: Material(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        """ 1. Horizontal Cable/Band Crossovers :                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle41.png'),
                    Text("""Execution
              
              Stand with your back to the cable machine. Have your feet just wider than hip-width apart, torso straight and core engaged. The cables should be adjusted, so they’re pulling from just above shoulder height. 
              Hold the cables in both hands, with your arms extended out.
              Pull the cables forward and across your body. Your arms should be at mid-chest height — the same level that the bench press worked. They should also cross over the centerline of your body. 
              Allow the cables to retract with control, pulling your arms back, but keeping your elbows slightly bent. Allow your arms to pull back far enough that you feel a stretch across your chest, ensuring you’ve reached the full extension of that muscle. 
              Repeat this action 15 times over four sets. With each cable pull, swap which arm crosses over the top. 
              If you don’t have a cable machine, you can do this with resistance bands attached very securely to a weight rack. Attach them at the same height as the middle of your sternum, so the movement is horizontal. 
               
              
              Sets: 4
              
              Reps: 15
              
               
              """),
                    Text(
                        """ 2. Incline Dumbbell Press:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle42.jpg'),
                    Text("""Execution
              
              Lie down on your inclined bench, again ensuring you have good posture. Engage your core and glutes, keep your feet flat on the floor, and drive into the bench.
              Hold the dumbbells in an overhand grip.
              Push your arms toward the ceiling. As you move upwards, rotate your wrist and hands slightly, so that your thumbs are leading the movement. This is the best way to engage your chest muscles, rather than have the back or triceps doing the hard yards. 
              Release your arms down, with control, until they are back and bent, with your elbows slightly behind your body. Again you should feel that glorious stretch along your chest at the bottom of the move. 
              You’ll complete four sets of six, then eight, then 10, and finally 12, starting with a heavier weight, which then decreases as the reps increase. 
               
              
              Sets: 4
              
              Reps: 6/8/10/12 — dropping weight each set
              
                
              
              
              """),
                    Text(
                        """ 3. High to Low Cable Cable/Band Crossovers:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle43.jpg'),
                    Text("""Execution
              
              Stand with your back to the cable machine. Have your feet just wider than hip-width apart, torso straight and core engaged. This time, the cables should be adjusted, so they’re pulling from the top of the machine. 
              Hold the cables in both hands.
              Pull the cables forward and downwards across your body. Your arms should crossover in front of your hips.
              Allow the cables to retract with control, pulling your arms back to the sides of your chest, keeping your elbows slightly bent. You should feel that full extension and stretch. 
              Repeat this action 15 times over four sets. With each cable pull, swap which arm crosses over the top. 
              If you don’t have a cable machine, you can do this with resistance bands attached very securely to a weight rack. Attach them at just below shoulder height, to the movement goes high to low, without coming over your head.
               
              
              Sets: 4
              
              Reps: 15
              
              
              
              
              """),
                    Text(
                        """ 4.Weighted Pushups :                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle44.jpg'),
                    Text("""Execution
              
              Set yourself up on the floor. You’ll want your legs spread slightly, so your feet are just wider than hip-width. Your hands should press into the floor just outside shoulder width. Keep your body as straight as possible, and core engaged.
              Pushups from your toes are the best for maximizing your efforts. However, if you’re still pretty new, you can always do these pushups from your knees. 
              Place your preferred weight on your back, sitting across your shoulder blades. You might need to phone a friend for help with positioning them. 
              Lower your body toward the ground until your elbows are bent at 90 degrees. You don’t want your body or chest to touch the ground.
              Drive-up through your hands until your arms are straight. Try to focus on turning your elbows in towards your body as you rise. Doing so will result in a better chest engagement. 
              Repeat until failure, for three sets. 
               
              
              Sets: 3
              
              Reps: To failure
              
              
              """),
                    Text(
                        """ 5.Band Crossovers Pushups:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle45.jpg'),
                    Text("""Execution
              
              Attach your resistance band to a weight rack or fixed pole. You’ll want it positioned roughly a foot off the ground. 
              Place yourself parallel to where you have your bands set up. The side you’re working should be closest to the bands. 
              Maintain your overall body position on the floor, as per your previous pushups. However, you do want your legs positioned slightly wider for better stability as you move.
              Hold the band in your hand on the side you’re working. Press down into a pushup, as usual.
              Push back up with both hands driving into the ground. As you reach the top of the move, pull the hand holding the resistance band across your body. Then, place it on the floor to the top of your stationary hand. You should feel the contraction in the center of your chest. 
              Return your hand to its original position, and repeat. You’ll do three sets of 15 on each side. 
               
              
              Sets: 3 on each side
              
              Reps: 15
              
              
              
              """),
                  ],
                ),
              ),
            ),
          ));
        });
  }

  void _shoulder() {
    showFlexibleBottomSheet(
        context: context,
        builder: (BuildContext context, ScrollController scrollController,
            double bottomSheetOffset) {
          return SafeArea(
              child: Material(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        """ 1. Warm Up — Band Shoulder Press :                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle51.jpg'),
                    Text("""Execution
              
              Attach your resistance bands to your power rack at around chest height. Make sure they are secure.
              Keep your core engaged and torso slightly tilted back to make sure you’re not moving your arms behind your head.
              Hold the band shoulder high and slightly wider than shoulder-width.
              Push straight up until your arms are fully extended. You should feel muscle engagement at both the front and the back. 
              Hold at the top for three seconds, repeating for two sets of 15 reps.
               
              
              Sets: 2
              
              Reps: 15, with a 3-second hold on each
              
               
               
              """),
                    Text(
                        """ 2. Seated Overhead Barbell Press:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle52.jpg'),
                    Text("""Execution
              
              Sit with your torso straight and feet flat on the floor. Engage your core and glutes.
              Start with the bar at the top of your chest, and push the bar straight up, fully extending your arms. 
              Bring the bar back down, with control. 
              Repeat for four sets, decreasing from 10 to eight to six, and six. Use increased weight on each set, as they get shorter. 
              Reintroduce the band that you used in the warm-up for the final set, performing this set with both the barbells and band. This will reinforce the muscle engagement.
              If you don’t have barbells at home, you can do a handstand pushup as an alternative. If you’re an absolute beast and your body weight isn’t enough, add a weighted vest. 
               
              
              Sets: 4
              
              Reps: 10/8/6/6 — adding weight each set
              
               
              
              
              """),
                    Text(
                        """ 3. Cable Rear Deltoid Raise:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle53.jpg'),
                    Text("""Execution
              
              Stand with a split stance. You’ll want the cable pulling across the front of your body, from the opposite side to the one you’re working.
              Tilt your torso forward at the hips, keeping your back straight and core engaged.
              Holding the cable, you’ll want your arm mostly straight across the front of your body.
              Pull the cable back across your body. As you hit the top of the move, your elbow should be bent, and your arm pulled back as far as your body allows. You should feel a full contraction in your rear deltoid.
              Release the cable back across your body, with control. At the bottom of this move, your arm should be extended across your torso, and you should feel a stretch along the back of your deltoid.
               
              
              Sets: 3 on each arm
              
              Reps: 7
              
              
              
              
              
              """),
                    Text(
                        """ 4. Cable One Arm Lateral Raise :                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle54.jpg'),
                    Text("""Execution
              
              Stand with a split stance. However, this time, the cable should pull across the back of your body, from the opposite side to the one you’re working.
              Keep your torso straight and core engaged.
              As you hold the cable, your arm will be slightly bent behind your back.
              Pull the cable out, and as you hit the top of the move, your arm should be straight out, perpendicular to the side of your body. You should feel a full contraction in your side deltoid.
              Release the cable back across your body, with control. At the bottom of this move, your arm should be slightly bent behind your back, and you should feel a stretch along the middle of your deltoid.
               
              
              Sets: 3 on each arm
              
              Reps: 7
              
              """),
                    Text(
                        """ 5. Cable One Arm Forward Raise:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle55.jpg'),
                    Text("""Execution
              
              Stand with a split stance, with your back to the cable pully. This time this cable will be pulling alongside your body, on the arm you are working. 
              Keep your torso straight and core engaged.
              Your arm will be straight and slightly behind your back as you hold the cable.
              Pull the cable forward, and as you hit the top of the move, your arm should be perpendicular to the front of your body, but slightly bent at the elbow. You should feel a full contraction in your front deltoid.
              Release the cable back along your body, with control. At the bottom of this move, your arm should be extended straight and pulled behind your back as far as your body allows. You should feel a stretch along the front of your deltoid.
               
              
              Sets: 3 on each arm
              
              Reps: 7
              
              
              
              """),
                    Text(
                        """ 6. Cheat Lateral Dumbbell Raise:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle56.jpg'),
                    Text("""Execution
              
              Position yourself into an athletic stance. Your feet will be wider than hip-width apart, knees bent but shins vertical, hips moved back, torso tilted forward, and your chest up.
              Start with the weight in your hand, arm in front of your body, elbow slightly bent. 
              Accelerate the weight up and out to the side, quickly, but with control. Unlike a regular lateral dumbbell raise, for this exercise, you can allow your traps to assist. 
              At the top of the move, your arm should be out to the side of your body, at shoulder height, elbow still slightly bent. Freeze the movement here for a moment. 
              Lower the weight, with control, back to the starting position. If you can’t control the descent, you’ll need to swap to a lighter weight.
              While you can allow your traps to help, don’t get into too much of a swinging motion when you’re raising the weight. You want your muscles to be doing the work, not the movement. 
              Once you’ve completed the set, move to the dumbbell push press, before returning for the next set.
               
              
              Sets: 3 on each arm
              
              Reps: To failure
              
               
              
              
              """),
                    Text(
                        """ 7. Dumbbell Push Press:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle57.jpg'),
                    Text("""Execution
              
              Keep your feet in the same position. However, you’ll want to straighten up from the athletic stance. 
              Shift the weight up to your shoulder.
              Press the weight up above your head. Again, because this is a heavier weight, you’ll want to be pushing explosively. Use your whole body to help, including your hips and legs, slightly squatting when you push up. Just make sure your shoulders are still doing the lion’s share of work. 
              Bring the weight back down to your shoulder with control. 
              Once the set is complete, return to your next set of cheat lateral dumbbell raises.
               
              
              Sets: 3 on each arm
              
              Reps: To failure
              
              
              
              
              """),
                    Text(
                        """ 8. Cable Face Pulls:                                                       """,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Image.asset('assets/muscle58.jpg'),
                    Text("""Execution
              
              Stand facing the cable machine, with the cable set up high. Your feet should be just wider than your hips, your torso straight, and as always, your core engaged. 
              Hold the cables in an overhand grip, and pull them back towards your face. Keep your elbows down next to your body, rather than up around your head. 
              As you pull, you want to rotate your hands slightly so that your thumbs are pointing back. This will fully work the rotator cuff, incorporating it with your rear deltoid. You should feel the contraction between your shoulder blades. 
              Allow the cables to return, with control, to the front, and your arms extended. 
              Sets: 3
              
              Reps: 15
              
               
              
              
              
              """),
                  ],
                ),
              ),
            ),
          ));
        });
  }
}
