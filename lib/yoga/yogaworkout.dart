// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  List<String> title = [
    '''Downward Facing Dog (Adho Mukha Svanasana)''',
    '''Mountain Pose (Tadasana)''',
    '''Warrior I (Virabhadrasana I)''',
    '''Warrior II (Virabhadrasana II)''',
    '''Triangle Pose (Utthita Trikonasana)''',
    '''Reverse Warrior (Viparita Virabhadrasana)''',
    '''Garland Pose (Malasana)''',
    '''Half Forward Bend (Ardha Uttanasana)''',
    '''Pyramid Pose (Parsvottanasana)''',
    '''Raised Hands Pose (Urdhva Hastasana)''',
    '''Low Lunge Position''',
    '''Tree Pose (Vrksasana)''',
    '''Downward Facing Dog Split''',
    '''Plank Pose''',
    '''Cat-Cow Stretch (Chakravakasana)''',
    '''Bridge Pose (Setu Bandha Sarvangasana)''',
    '''Cobra Pose (Bhujangasana)''',
    '''Knees, Chest, and Chin (Ashtanga Namaskara)''',
    '''Staff Pose (Dandasana)''',
    '''Cobbler's Pose (Baddha Konasana)''',
    '''Easy Pose (Sukhasana)''',
    '''Half Lord of the Fishes Pose - Ardha Matsyendrasana''',
    '''Head to Knee Pose (Janu Sirsasana)''',
    '''Seated Forward Bend (Paschimottanasana)''',
    '''Seated Wide Angle Straddle (Upavistha Konasana)''',
    '''Happy Baby Pose (Ananda Balasana)''',
    '''Supine Spinal Twist (Supta Matsyendrasana)''',
    '''Child's Pose (Balasana)''',
    '''Corpse Pose (Savasana)''',
  ];
  List<String> description = [
    """The name Downward Facing Dog goes hand in hand with yoga, but just because you've heard of this pose doesn't mean it's easy to do.

Beginners often lean too far forward in this posture, making it more like a plank. Instead, remember to keep your weight mostly in your legs and reach your hips high, with your heels stretching toward the floor (they do not need to touch the floor). Bend your knees a little to facilitate the move if you have tight hamstrings. Keep feet parallel.


""",
    """Mountain pose may not be as famous as Downward Facing Dog, but it is every bit as important. This is a good time to talk about alignment, which is the way that your body parts are ideally arranged in each pose. The alignment in Mountain pose draws a straight line from the crown of your head to your heels, with the shoulders and pelvis stacked along the line. Every person's body is different, so focus on rooting down with your feet and lengthening up with your spine.

A yoga teacher can talk you through this in class, reminding you to slide your shoulders down your back and keep weight on your heels.


""",
    """The important thing to remember in Warrior I is that the hips face forward. Think of your hip points as headlights—they should be roughly parallel with the front of your mat. This may require you to take a wider stance.

""",
    """Unlike Warrior I, in Warrior II the hips face the side of the mat. When moving from Warrior I to Warrior II, the hips and shoulders both open to the side. You'll also rotate your back foot, so your toes are angled out at about 45 degrees. In both Warrior poses, aim to keep your front knee stacked over the ankle. Your front toes face forward.

""",
    """The Triangle can be modified in a manner similar to Extended Side Angle, using a yoga block for your bottom hand if you aren't comfortable reaching your arm all the way to the floor. You can also rest your hand higher up on your leg—on your shin or your thigh—but avoid putting it directly on your knee.

Don't hesitate to micro-bend both knees if the pose feels uncomfortable. This won't look or feel like a pronounced bend, but rather, just enough of a movement to unlock your knees and ease tension in your hamstrings. Triangle offers many benefits: Strength (in the legs), flexibility (in the groin, hamstrings, and hips, as well as opening the chest and shoulders), and balance.

""",
    """Reverse Warrior shares a similar stance to Warrior I and incorporates a slight heart-opening side bend or optional backbend. To stay steady in the posture, it's important to root into the sole of the front foot and anchor the outside edge of the back foot as well as engage the glutes and hamstrings. Focus your gaze up toward the palm as it reaches overhead. Keep your front knee tracking over your ankle as you sink deeper into the hips.

""",
    """Squatting isn't something familiar to most 21st century humans. However, it's an excellent stretch for the muscles around the pelvis, making it what is often called a "hip opener" in yoga. Perhaps surprisingly, it's also good for your feet, which are often neglected. If squatting is difficult for you, props can help: Try sitting on a block or rolling a towel or blanket under the heels. Keep pressing your heels down toward the floor.

""",
    """This flat-back forward bend is most often done as part of the Sun Salutation sequence. As such, it's often rushed, but it's worth it to take the time to work on it independently. Figuring out when your back is actually flat is part of developing body awareness.

At first, it's helpful to glance in the mirror. You may find you need to let your hands come off the ground and onto your legs as high as is necessary to keep the back really flat. Gently bend your knees as needed, too.

""",
    """Standing forward bends like Pyramid pose are a good time to break out your yoga blocks to make the pose more accessible. Place a block on either side of your front foot to "raise the floor" to a level where your hands can comfortably reach. Your hamstrings will still enjoy a nice stretch and they'll thank you for your consideration.

""",
    """Built upon the foundation of Mountain pose, Urdhva Hastasana requires you to continue to root into the ground with your legs while reaching for the sky with your arms. The result is a full body stretch, a great way to usher in the physical part of your yoga session.

""",
    """The alignment of your lunge is super important. Try to make a right angle with your front leg so that your knee is directly over your ankle and your thigh is parallel to the floor. At the same time, keep your hips level and energize your back leg. A lot of people don't go deep enough into the front leg and then sag in the back leg. Glance in the mirror to make sure you're getting it right. To modify, place your hands on blocks, and/or lower your back leg to the mat (with a blanket or towel as needed for cushioning).

""",
    """Tree pose is a good introduction to balancing postures. If you feel yourself beginning to topple, you can step out of it easily. Try not to create a counterbalance by jutting your hip out to the side on your standing leg. Focus your gaze on a spot on the floor, and try varying foot positions to see what works for you: Heel resting low on the ankle, on a block, or above or below the knee. 

""",
    """The introduction of appropriate balancing postures helps build core strength. In Down Dog Split, it's not about how high you can lift your leg. Instead, focus on rooting into the hands and keeping your weight distributed evenly in both hands.

""",
    """It might seem strange to call plank a balancing pose since the risk of falling over is pretty minimal, but it gets to the heart of what this pose is about—core strength. A strong core is essential for so many yoga poses, including standing balances, arm balances, and plank is an excellent way to on work your stability and stamina. Aim to keep your hips and spine in a neutral position.

""",
    """It's the best of both worlds: spinal extension followed by spinal flexion. Moving back and forth ​awakens and warms the back, improves body awareness, and is a basic introduction to how to do a vinyasa sequence by coordinating your movements to your breath.

Cat-Cow may be the most important pose you learn when starting yoga, especially if you have back pain. Even if you never make it to more than a few yoga classes, continue doing this stretch on your own.

""",
    """Bridge pose is a gentle way to start exploring spine extension, also known as a backbend. It's a good idea to start incorporating this type of movement because it improves the mobility of your spine and counters the effects of too much sitting. If Bridge seems too intense, try a ​supported bridge with a block. Remember to root into the feet, which helps you use your leg muscles to support the pose.

""",
    """Cobra is done multiple times per class in flow yoga as part of the vinyasa sequence of poses. While a full cobra with straight arms offers a deeper backbend, you'll build more back strength by doing low Cobras in which you lift your chest without pressing into your hands. Root into feet, lengthen out through the crown of the head and broaden through collar bones as you lift the sternum. It's also key to anchor your pelvis to the floor before you lift up. 



""",
    """Ashtanga Namaskara was once taught to all beginning yoga students as an alternative to and preparation for Chaturanga Dandasana. In recent years, it's fallen out of favor. As a result, some students are rushed into chaturanga before they are ready. It really belongs in the sun salutation series for beginners. Plus it's also a great warm-up for deeper backbends.

Take your time and enter the pose slowly from a plank position. Start by lowering your knees to the mat, with toes tucked under. Then keep your elbows pressed toward your body as you lower your chest and chin to the floor. Shoulders should hover over your hands.

""",
    """Staff pose is akin to a seated version of mountain pose (above), in that it offers alignment guidelines for a host of other seated poses. Engage the leg muscles and flex the feet. Lift the chest and relax the shoulders. You can also allow a gentle bend in the knees, which can create ease for the shoulders to stack over the hips.

Modify by using a block or a folded blanket or two if you have trouble sitting up straight with your butt flat on the floor. In a typical yoga practice, this pose leads into a forward bend.

""",
    """Let gravity work on stretching your inner thighs in Cobbler's pose. If you find this position difficult, props can make a big difference. Sitting on something like a block or blanket raises your hips so your knees can open more naturally. If your knees are really high, it takes a lot of effort to hold them up, and your legs need to be relaxed to enjoy the benefits of the stretch. The solution is to place a block (or something else supportive) under each knee to give them something to rest upon.

Since it's ​unusual to sit this way in everyday life, this pose stretches neglected areas of the body, particularly the adductor groups of the groin.

""",
    """Sitting cross-legged doesn't have to be a scary position. The judicious use of props can transform an uncomfortable position into one of ease so you can begin to reverse the effects of too much chair sitting.

""",
    """Twists are an essential part of yoga. They help improve spinal mobility and can even get things moving along your digestive tract (yes, twists can help with constipation).3 It's fine to extend your bottom leg in this pose if it's uncomfortable to have it bent behind you. You can also modify by sitting on a blanket. Placing the bent leg on the inside of the extended leg is great for ease in the shoulder, hip, and spine rotation.

""",
    """Forward bends can be hard for anyone with tight hamstrings (i.e., a lot of people). Janu ​Sirsasana is more accessible because you're stretching one leg at a time.​​​​​​​​​​​​​ You can also use a strap around the foot to help extend your reach.

""",
    """There are a lot of hamstring stretches in beginning yoga for good reason. The hamstrings tend to get short and tight in people who sit a lot, which can contribute to low back pain. Stretching them, as you do during the seated forward bend, is helpful. This pose offers a stretch to the entire back of the body. Bend at your hips, not your waist, and keep your neck aligned with your spine.

""",
    """Opening your legs wide creates a slightly different stretch from Paschimottanasana. Though it may look like the mandate is to bring your chest to the floor, it's really not about that. Rather, concentrate on keeping your back flat, rotating the pelvis forward instead of crunching forward through your spine, and keeping your feet flexed. If you do all three of these things, it really doesn't matter how far forward you lean.

""",
    """Happy baby is a wonderful way to finish a yoga session. It's also a good example of the important interplay between effort and ease in yoga. You want to exert a little pressure on your feet to draw them toward your armpits, but not so much that your tailbone lifts off the floor. You don't want to go to extremes but rather to find the middle ground.

""",
    """A passive twist is a classic way to end a yoga session, although there's no hard rule against doing this pose at the beginning of your practice. The position of the legs is up to you. You can bend them both, you can straighten the top leg and hold onto your foot if you have the flexibility, or you can twist the legs around one another (as in Eagle pose) to stretch the outer hips. Keep knees in line with the waist.

""",
    """Child's pose is really important because it's the position you assume whenever you need a break during a yoga class. If you ever feel fatigued, you don't have to wait for the teacher to call for a break. Just move into Child's pose and rejoin the class when you're ready. It provides a gentle stretch for the back, hips, thighs, and ankles, but does not challenge strength or balance.

Taking Child's pose is really up to your discretion, which happens to introduce one of yoga's best lessons: being attuned to the signals your body is giving and respecting them above any external directions.



""",
    """Most yoga sessions end lying flat on your back in Corpse pose. It's an important transition between the end of your yoga practice and the rest of your day. Bringing the body to stillness challenges the mind to maintain its calm. You may find this difficult at first, but it gets easier with practice.

"""
  ];
  List<String> assets = [
    'assets/yoga1.jpg',
    'assets/yoga2.jpg',
    'assets/yoga3.jpg',
    'assets/yoga4.gif',
    'assets/yoga6.gif',
    'assets/yoga7.gif',
    'assets/yoga8.gif',
    'assets/yoga9.jpg',
    'assets/yoga10.gif',
    'assets/yoga11.gif',
    'assets/yoga12.gif',
    'assets/yoga13.gif',
    'assets/yoga14.gif',
    'assets/yoga15.jpg',
    'assets/yoga16.gif',
    'assets/yoga17.gif',
    'assets/yoga18.jpg',
    'assets/yoga19.gif',
    'assets/yoga20.jpg',
    'assets/yoga21.jpg',
    'assets/yoga22.jpg',
    'assets/yoga23.jpg',
    'assets/yoga24.jpg',
    'assets/yoga25.jpg',
    'assets/yoga26.jpg',
    'assets/yoga27.jpg',
    'assets/yoga28.jpg',
    'assets/yoga29.gif',
    'assets/yoga30.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        body: Center(
          child: ListView.builder(
            itemCount: assets.length,
            itemBuilder: (context, index) {
              print(assets.length);
              return Column(
                children: [
                  Image.asset(assets[index]),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow),
                    child: Text(
                      title[index],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightGreen),
                    child: Text(description[index]),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
