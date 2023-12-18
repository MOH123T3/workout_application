import 'package:flutter/material.dart';

void carbo (BuildContext context)
{
  var  alert = AlertDialog(
   backgroundColor: Colors.cyan.shade200,
   actions: [
     Container(
   child: 
       Column(
         children: [
           Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan,
),
             padding: EdgeInsets.all(20),
             child:Text('''Carbohydrates Diet Plan''',style: TextStyle(fontWeight: FontWeight.bold),),

           ),
           Container(
            
           padding: EdgeInsets.all(20),

             child:  Text('''Carbs are the body’s main source of energy and should make up half of your daily calorie requirement. However, it’s important to choose the right type of carbs. Simple carbs, such as bread, biscuit, white rice and wheat flour, contain too much sugar and are bad for you.

Instead, opt for complex carbs that are high in fiber and packed with nutrients as compared to simple carbs. This is because Fiber-rich complex carbs are harder to digest, leaving you feeling full for longer, and are therefore the best option for weight control.

Brown rice, millets such as ragi and oats are all good complex carb choices.''',

style: TextStyle(fontSize: 15),
) 
           )
         
         ],
       )
       ),
       

   ],

     
  );
  showDialog(context: context, builder:
  (BuildContext context)
  {
    return alert;
  }
  );
  
}


void  protein(BuildContext context)
{
  var  alert = AlertDialog(
   backgroundColor: Colors.cyan.shade200,
   actions: [
     Container(
   child: 
       Column(
         children: [
           Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan,
),
             padding: EdgeInsets.all(20),
             child:Text('''Proteins Diet Plan''',style: TextStyle(fontWeight: FontWeight.bold),),

           ),
           Container(

           padding: EdgeInsets.all(20),

             child:  Text('''Most Indians fail to meet their daily protein requirement. This is troublesome, as proteins are essential to help the body build and repair tissue, muscles, cartilage and skin, as well as pump blood. Hence. a high protein diet can also help you lose weight, as it helps build muscle – which burns more calories than fat.

For instance, about 30% of your diet should consist of protein in the form of whole dals, paneer, chana, milk, leafy greens, eggs, white meat or sprouts. Having one helping of protein with every meal is essential.''',

style: TextStyle(fontSize: 15),
) 
           )
         
         ],
       )
       ),
       

   ],

     
  );
  showDialog(context: context, builder:
  (BuildContext context)
  {
    return alert;
  }
  );
  
}



void fat(BuildContext context)
{
  var  alert = AlertDialog(
   backgroundColor: Colors.cyan.shade200,
   actions: [
     Container(
   child: 
       Column(
         children: [
           Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan,
),
             padding: EdgeInsets.all(20),
             child:Text('''Fats Diet Plan''',style: TextStyle(fontWeight: FontWeight.bold),),

           ),
           Container(
            

           padding: EdgeInsets.all(20),

             child:  Text('''
             A food group that has acquired a bad reputation, fats are essential for the body as they synthesize hormones, store vitamins and provide energy. Experts suggest one-fifth or 20% of your diet must consist of healthy fats – polyunsaturated, monounsaturated and Omega-3 fatty acids.

For example, using a combination of oils for different meals – including olive oil, rice bran oil, mustard oil, soya bean, sesame, sunflower and groundnut oil – along with restricted quantities of butter and ghee is the most optimal way to consume fats.

But, you must avoid trans fats – that are found in fried snacks, completely for a balanced Indian Diet Plan.''',

style: TextStyle(fontSize: 15),
) 
           )
         
                ],
       )
       ),
       

   ],

     
  );
  showDialog(context: context, builder:
  (BuildContext context)
  {
    return alert;
  }
  );
  
}




void vitamin (BuildContext context)
{
  var  alert = AlertDialog(
   backgroundColor: Colors.cyan.shade200,
   actions: [
     Container(
   child: 
       Column(
         children: [
           Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan,
),
             padding: EdgeInsets.all(20),
             child:Text('''  Vitamins and Minerals Diet Plan''',style: TextStyle(fontWeight: FontWeight.bold),),

           ),
           Container(

           padding: EdgeInsets.all(20),

             child:  Text('''
             Vitamin A, E, B12, D, calcium and iron are essential for the body as they support metabolism, nerve and muscle function, bone maintenance, and cell production. Since, these are primarily derived from plants, meat and fish, minerals can also be found in nuts, oilseeds, fruits and green leafy vegetables.

Experts and nutritionists recommend consuming 100 grams of greens and 100 grams of fruits accordingly.''',

style: TextStyle(fontSize: 15),
) 
           )
         
         ],
       )
       ),
       

   ],

     
  );
  showDialog(context: context, builder:
  (BuildContext context)
  {
    return alert;
  }
  );
  
}



void meal (BuildContext context)
{
  var  alert = AlertDialog(
   backgroundColor: Colors.cyan.shade200,
   actions: [
     Container(
   child: 
       Column(
         children: [
           Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan,
),
             padding: EdgeInsets.all(20),
             child:Text('''Meal Swaps Diet Plan''',style: TextStyle(fontWeight: FontWeight.bold),),

           ),
           Container(

           padding: EdgeInsets.all(20),

             child:  Text('''Carbs are the body’s main source of energy and should make up half of your daily calorie requirement. However, it’s important to choose the right type of carbs. Simple carbs, such as bread, biscuit, white rice and wheat flour, contain too much sugar and are bad for you.

Instead, opt for complex carbs that are high in fiber and packed with nutrients as compared to simple carbs. This is because Fiber-rich complex carbs are harder to digest, leaving you feeling full for longer, and are therefore the best option for weight control.

Brown rice, millets such as ragi and oats are all good complex carb choices.''',

style: TextStyle(fontSize: 15),
) 
           )
         
         ],
       )
       ),
       

   ],

     
  );
  showDialog(context: context, builder:
  (BuildContext context)
  {
    return alert;
  }
  );
  
}


