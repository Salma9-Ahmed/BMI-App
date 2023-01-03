import 'package:bmiapp/calculate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color aColor = Color(0xFF171A2D);
  Color bColor = Color(0xFF28293D);
  Color sColor = Color(0xFFFFFFFF);
  Color tColor = Colors.white60;
  double height = 100;
  int weight = 55;
  int age = 20;
  bool isMale = true;
  var ans, comment, advice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: aColor,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 14,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: GestureDetector(
                            onTap: (){
                             setState(() {
                               isMale =true;
                             });
                            },
                            child: Container(
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isMale ==true? Colors.teal : bColor
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.male,color: sColor,size: 50,),
                                  Text('Male',style: TextStyle(color: tColor),)
                                ],
                              ),
                            ),
                          )
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                          flex: 5,
                          child: GestureDetector(
                            onTap: (){
                             setState(() {
                               isMale =false;
                             });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isMale ==false? Colors.teal : bColor
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.female,color: sColor,size: 50,),
                                  Text('Female',style: TextStyle(color: tColor),)
                                ],
                              ),
                            ),
                          )
                          ),
                      ],
                  )
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: bColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Height',style: TextStyle(color: tColor),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text('${height.toStringAsFixed(1)}',style: TextStyle(color: sColor,fontSize: 30),),
                      Text('cm',style: TextStyle(color: tColor),),
                      
                    ],
                  ),
                  SliderTheme(data: SliderTheme.of(context).copyWith(
                        inactiveTickMarkColor: Colors.grey,
                        activeTrackColor: Colors.pink,
                        thumbColor: Colors.pink[300],
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                      ),
                      child: 
                      Slider(
                      min: 70,
                      max: 180,
                      value: height, onChanged: 
                      (double value){
                        setState(() {
                          height = value;
                        });
                      }
                      )
                      )
                ],
          ),
            )
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 6,
            child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: bColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Weight',style: TextStyle(color: tColor),),
                                Text('$weight',style: TextStyle(fontSize: 30,color: sColor),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   ElevatedButton(
                                     onPressed: (){
                                     setState(() {
                                       weight++;
                                     });
                                   },
                                   style: ElevatedButton.styleFrom(
                                     padding: EdgeInsets.all(12),
                                     primary: aColor,
                                     shape: CircleBorder()
                                   ), 
                                   child: Icon(
                                     Icons.add,color: sColor,size: 30,)
                                     ),

                                     ElevatedButton(
                                     onPressed: (){
                                     setState(() {
                                       weight--;
                                     });
                                   },
                                   style: ElevatedButton.styleFrom(
                                     padding: EdgeInsets.all(12),
                                     primary: aColor,
                                     shape: CircleBorder()
                                   ), 
                                   child: Icon(
                                     Icons.remove,color: sColor,size: 30,)
                                     ),
                                  ],
                                )
                                
                              ],
                            ),
                          )
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: bColor
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Age',style: TextStyle(color: tColor),),
                                Text('$age',style: TextStyle(fontSize: 30,color: sColor),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   ElevatedButton(
                                     onPressed: (){
                                     setState(() {
                                       age++;
                                     });
                                   },
                                   style: ElevatedButton.styleFrom(
                                     padding: EdgeInsets.all(12),
                                     primary: aColor,
                                     shape: CircleBorder()
                                   ), 
                                   child: Icon(
                                     Icons.add,color: sColor,size: 30,)
                                     ),

                                     ElevatedButton(
                                     onPressed: (){
                                     setState(() {
                                       age--;
                                     });
                                   },
                                   style: ElevatedButton.styleFrom(
                                     padding: EdgeInsets.all(12),
                                     primary: aColor,
                                     shape: CircleBorder()
                                   ), 
                                   child: Icon(
                                     Icons.remove,color: sColor,size: 30,)
                                     ),
                                  ],
                                )
                              ],
                            ),
                          )
                          ),
                      ],
                  )
          ),
                ],
              ),
          ),
          
          ),

          

          Expanded(
            flex: 2,
            child: InkWell(
              onTap: (){
                Calculate cal = Calculate(height: height,weight: weight,age: age);
                ans =cal.calculate();
                comment =cal.getInterpretation();
                
              showDialog(
                context: context, 
                builder: (context)=>AlertDialog(
                  title: Text('Your BMI is $ans'),
                  content: Text('$comment'),
                  actions: [
                     FlatButton(
                    onPressed: (){
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    child: Text('OK',style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  
                  ]
                )
                );
              },
              
              child: Container(
                //width: double.infinity,
                alignment: Alignment.center,
                color: Colors.pink,
                child: Center(child: Text('CALCULATE',style: TextStyle(fontSize: 20,color: sColor,fontWeight: FontWeight.bold),))
                ),
            )
            )
        ],
      ),
    );
  }
}