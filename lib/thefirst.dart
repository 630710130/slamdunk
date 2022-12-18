import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  int answer = r.nextInt(100) + 1;
  var iscorrect = false;
   int? guess;
  do
  {
    stdout.write("Guess the number betweeen 1 and 100 :");
    String? input = stdin.readLineSync();
    guess =int.tryParse(input!);
    if (input == null) {
      print('Error, intput in Null');
      return;
    }
    if (guess == null) {
      print('input error');
      return;
    }
    iscorrect = doGuess(guess,answer)!;

  } while(!iscorrect);
  }

bool? doGuess(int guess, int answer) {
  if (guess == answer)
  {
    print('Correct the answer is $answer');
    return true;
  }
  else if (guess > answer) {
    print('To high');
    return false;
  }
  else if (guess < answer) {
    print('Too low');
    return false;
  }
}