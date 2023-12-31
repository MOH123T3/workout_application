// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class PlaneChart extends StatefulWidget {
  int index;
  PlaneChart({super.key, required this.index});

  @override
  State<PlaneChart> createState() => _PlaneChartState();
}

class _PlaneChartState extends State<PlaneChart> {
  List<String> assets = [
    'assets/diet1.png',
    'assets/diet2.png',
    'assets/diet3.png',
    'assets/diet4.png',
    'assets/diet5.png',
    'assets/diet6.png',
    'assets/diet7.png'
  ];
  List<String> description = [
    '''Day 1	Diet Chart

6:30 AM	Cucumber Detox Water (1 glass)

8:00 AM	Oats Porridge in Skimmed Milk (1 bowl)Mixed Nuts (25 grams)

12:00 PM	Skimmed Milk Paneer (100 grams)

2:00 PM	Mixed Vegetable Salad (1 katori)

2:10 PM	Dal(1 katori)Gajar Matar Sabzi (1 katori)

Roti (1 roti/chapati)

4:00 PM	Cut Fruits (1 cup) Buttermilk (1 glass)

5:30 PM	Tea with Less Sugar and Milk (1 teacup)

8:50 PM	Mixed Vegetable Salad (1 katori)

9:00 PM	Dal (1 katori) Lauki Sabzi (1 katori)

Roti (1 roti/chapati)''',
    '''Day 2	Diet Chart

6:30 AM	Cucumber Detox Water (1 glass)

8:00 AM	Curd (1.5 katori) Mixed Vegetable Stuffed Roti (2 pieces)

12:00 PM	Skimmed Milk Paneer (100 grams)

2:00 PM	Mixed Vegetable Salad (1 katori)

2:10 PM	Lentil Curry (0.75 bowl) Methi Rice (0.5 katori)

4:00 PM	Apple (0.5 small (2-3/4″ dia)) Buttermilk (1 glass)

5:30 PM	Coffee with Milk and Less Sugar (0.5 tea cup)

8:50 PM	Mixed Vegetable Salad (1 katori)

9:00 PM	Sauteed Vegetables with Paneer (1 katori) Roti (1 roti/chapati)

Green Chutney (2 tablespoon)''',
    '''Day 3	Diet Chart

6:30 AM	Cucumber Detox Water (1 glass)

8:00 AM	Skim Milk Yoghurt (1 cup (8 fl oz)) Multigrain Toast (2 toast)

12:00 PM	Skimmed Milk Paneer (100 grams)

2:00 PM	Mixed Vegetable Salad (1 katori)

2:10 PM	Sauteed Vegetables with Paneer (1 katori) Roti (1 roti/chapati)

Green Chutney (2 tablespoon)

4:00 PM	Banana (0.5 small (6″ to 6-7/8″ long)) Buttermilk (1 glass)

5:30 PM	Tea with Less Sugar and Milk (1 teacup)

8:50 PM	Mixed Vegetable Salad (1 katori)

9:00 PM	Lentil Curry (0.75 bowl) Methi Rice (0.5 katori)''',
    '''Day 4	Diet Chart

6:30 AM	Cucumber Detox Water (1 glass)

8:00 AM	Fruit and Nuts Yogurt Smoothie (0.75 glass)

Egg Omelette (1 serve(one egg))

12:00 PM	Skimmed Milk Paneer (100 grams)

2:00 PM	Mixed Vegetable Salad (1 katori)

2:10 PM	Green Gram Whole Dal Cooked (1 katori) Bhindi sabzi (1 katori)

Roti (1 roti/chapati)

4:00 PM	Orange (1 fruit (2-5/8″ dia)) Buttermilk (1 glass)

5:30 PM	Coffee with Milk and Less Sugar (0.5 teacup)

8:50 PM	Mixed Vegetable Salad (1 katori)

9:00 PM	Palak Chole (1 bowl) Steamed Rice (0.5 katori)''',
    '''Day 5	Diet Chart

6:30 AM	Cucumber Detox Water (1 glass)

8:00 AM	Skimmed Milk (1 glass) Peas Poha (1.5 katori)

12:00 PM	Skimmed Milk Paneer (100 grams)

2:00 PM	Mixed Vegetable Salad (1 katori)

2:10 PM	Low Fat Paneer Curry (1.5 katori) Missi Roti (1 roti)

4:00 PM	Papaya (1 cup 1″ pieces) Buttermilk (1 glass)

5:30 PM	Tea with Less Sugar and Milk (1 teacup)

8:50 PM	Mixed Vegetable Salad (1 katori)

9:00 PM	Curd (1.5 katori) Aloo Baingan Tamatar Ki Sabzi (1 katori)

Roti (1 roti/chapati)''',
    '''Day 6	Diet Chart

6:30 AM	Cucumber Detox Water (1 glass)

8:00 AM	Mixed Sambar (1 bowl) Idli (2 idli)

12:00 PM	Skimmed Milk Paneer (100 grams)

2:00 PM	Mixed Vegetable Salad (1 katori)

2:10 PM	Curd (1.5 katori) Aloo Baingan Tamatar Ki Sabzi (1 katori)

Roti (1 roti/chapati)

4:00 PM	Cut Fruits (1 cup) Buttermilk (1 glass)

5:30 PM	Coffee with Milk and Less Sugar (0.5 tea cup)

8:50 PM	Mixed Vegetable Salad (1 katori)

9:00 PM	Green Gram Whole Dal Cooked (1 katori)Bhindi sabzi (1 katori)

Roti (1 roti/chapati)
            ''',
    '''Day 7	Diet Chart

9:00 AM	1 glass of orange/apple juice

12:30 PM	½ cup of brown rice 

½ cup of sautéed veggies

4:00 PM	1 cup of watermelon/few assorted berries

6:30 PM	1 bowl of GM Soup'''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 3.h,
                      color: Colors.white,
                    )),
              ),
            ),
            Image(image: AssetImage(assets[widget.index]), height: 40.h),
            Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Text(
                  description[widget.index],
                  style: TextStyle(color: Colors.black, fontSize: 17.sp),
                ))
          ]);
        },
      ),
    );
  }
}
