import 'dart:math';

class Calculate{
  double ?height;
  int ?weight;
  int ?age;
  double ?bmi;

  Calculate({this.height,this.weight,this.age,});

  String calculate(){
    bmi=weight!/pow(height!/100, 2);
    return bmi!.toStringAsFixed(0);
  }

  

  String getInterpretation(){
    if(bmi! >=24.5){
      return 'You have a higher than normal body weight. Try to exercise more.\nšŖšµš“ššš';
    }
    else if(bmi! >=18.5){
      return 'You have a normal body weight, good job.\nššššš½';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more.\nš²š±š³ššš';
    }
  }
}