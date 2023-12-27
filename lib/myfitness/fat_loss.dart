// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ScienceBehindLossWeight extends StatelessWidget {
  const ScienceBehindLossWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 12),
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
          SizedBox(height: 2.h),
          Image.asset('assets/FATFIT.png', height: 50.h),
          Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '''Understand the Science Behind Weight Loss''',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    '''Weight loss and gain revolve around caloric consumption and expenditure. Simply put, you lose weight when you consume fewer calories than you expend and you gain weight when you consume more calories than you sweat.

To drop those extra kilos, all you need to do is eat within your calorie budget and burn the required number of calories. So, a combination of the two works best suggested experts. Get your daily requirement of calorie consumption and burn based on your lifestyle and dietary preferences, by signing up on HealthifyMe.

However, simply determining how many calories your body needs isn’t enough. After all, four samosas (600 calories), two slices of pizza (500 calories), and two gulab jamuns (385 calories) may be within your daily requirement of 1500 calories, but these unhealthy food choices will eventually lead to other health problems like high cholesterol and blood sugar.

To lose weight the healthy way, you also need to ensure your Indian diet plan is balanced i.e. it covers all food groups and provides all the nutrients you need necessary for good health.
                 
                 ''',
                    style: TextStyle(letterSpacing: 1, fontSize: 12.sp),
                  ),
                  Text(
                    '''The Best Indian Diet Plan for Weight Loss''',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    '''No single food provides all the calories and nutrients that the body needs to stay healthy. That’s why a balanced diet consisting of macronutrients like carbohydrates, protein, and fat along with micronutrients such as vitamins and minerals, is recommended.

The best Indian diet for weight loss is a combination of the five major food groups – fruits and vegetables, cereals and pulses, meat and dairy products, and fats and oils. Furthermore, knowing how to divvy up the food groups, allocate portion sizes, and the best/ideal time to eat is also equally important.
              ''',
                    style: TextStyle(letterSpacing: 1, fontSize: 12.sp),
                  ),
                ],
              ))
        ],
      )),
    ));
  }
}
