import 'dart:io';

import 'package:slamdunk/Game.dart';

void main(){
  var game = Game();
  var GuessResult = 0;
  do {
    String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print("╟Only number pls◙◚◙");
      print("╚═════════════════════");
      continue;
    }
    GuessResult = game.doGuess(guess)!;
    ;
    if(GuessResult==GuessResult.){
      print('lucky');
    }else if(GuessResult==GuessResult.TooHigh){
      print('too high');
    }else if(GuessResult==GuessResult.TooLow){
      print('too low');
    }

  }while(GuessResult!=GuessResult.correct);

}