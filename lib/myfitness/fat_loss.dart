import 'package:flutter/material.dart';

class forfat extends StatelessWidget{

  @override 
  Widget build (BuildContext context)
  {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.orangeAccent,
       title: Text('LOSE WEIGHT'),

     ),
     body: Center(
       child: SingleChildScrollView(child: 
        Column(
          children: [
            Container(
              child: Image.asset('assets/FATFIT.png'),
            ),

         Container(
           child: Column(
             children: [
               Text('''Understand the Science Behind Weight Loss''',style: TextStyle(fontSize: 17,color: Colors.red,fontWeight: FontWeight.bold),),


               Container(
                 padding: EdgeInsets.all(60),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                 child: Text('''
                 Weight loss and gain revolve around caloric consumption and expenditure. Simply put, you lose weight when you consume fewer calories than you expend and you gain weight when you consume more calories than you sweat.

To drop those extra kilos, all you need to do is eat within your calorie budget and burn the required number of calories. So, a combination of the two works best suggested experts. Get your daily requirement of calorie consumption and burn based on your lifestyle and dietary preferences, by signing up on HealthifyMe.

However, simply determining how many calories your body needs isn’t enough. After all, four samosas (600 calories), two slices of pizza (500 calories), and two gulab jamuns (385 calories) may be within your daily requirement of 1500 calories, but these unhealthy food choices will eventually lead to other health problems like high cholesterol and blood sugar.

To lose weight the healthy way, you also need to ensure your Indian diet plan is balanced i.e. it covers all food groups and provides all the nutrients you need necessary for good health.
                 
                 ''',
                 style: TextStyle(letterSpacing: 1),
                 
                 ),
               ),

   Text('''The Best Indian Diet Plan for Weight Loss''',style: TextStyle(fontSize: 17,color: Colors.red,fontWeight: FontWeight.bold),),
   Container(
                 padding: EdgeInsets.all(60),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                 child: Text('''
            No single food provides all the calories and nutrients that the body needs to stay healthy. That’s why a balanced diet consisting of macronutrients like carbohydrates, protein, and fat along with micronutrients such as vitamins and minerals, is recommended.

The best Indian diet for weight loss is a combination of the five major food groups – fruits and vegetables, cereals and pulses, meat and dairy products, and fats and oils. Furthermore, knowing how to divvy up the food groups, allocate portion sizes, and the best/ideal time to eat is also equally important.
              ''',
                 style: TextStyle(letterSpacing: 1),
                 
                 ),
               ),
                      ],
           )
         )


            // Container(
            //   color: Colors.pink,
            //   child: ListView(
            //     children: [
            //       ListTile(
            //         leading: Icon(Icons.star_outline),
            //         title: Text('DAY 1'),
                    
            //       ),
            //         ListTile(
            //         leading: Icon(Icons.star_outline),
            //         title: Text('DAY 1'),
                    
            //       ),
            //         ListTile(
            //         leading: Icon(Icons.star_outline),
            //         title: Text('DAY 1'),
                    
            //       ),
            //         ListTile(
            //         leading: Icon(Icons.star_outline),
            //         title: Text('DAY 1'),
                    
            //       )
            //     ],
            //   ),
            // )
          ],
        )
       ),
     )
    );
  }
}