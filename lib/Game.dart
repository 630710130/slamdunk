import 'dart:math';
enum GuessResult
{
  correct,Toohigh ,TooLow
}
class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuess = 0;

  //constructor
  Game() {
    print('answer is $answer');
  }

  GuessResult? doGuess(int guess) {
    _totalGuess++;
    if (guess == answer) {
      return GuessResult.correct;
    }
    if (guess > answer) {
      return GuessResult.Toohigh;
    }
    if (guess < answer) {
      return GuessResult.TooLow;
    }
  }

  int get totalGuess {
    return _totalGuess;
  }
}