import 'dart:math';

void main() {
  // First Game
  Player humanPlayer = Human(4);
  Bot botPlayer = Bot(4);

  int humanLevel = humanPlayer.levelUp();
  int botLevel = botPlayer.levelUp();

  print(humanLevel);
  print(botLevel);
}

abstract class Player {
  int levelUp();
}

class Human implements Player {
  int playerLevel;
  Human(this.playerLevel);

  @override
  int levelUp() {
    return playerLevel += 1;
  }
}

class Bot implements Player {
  int botLevel;
  Bot(this.botLevel);

  Random randomNumber = Random();

  @override
  int levelUp() {
    return botLevel = randomNumber.nextInt(100);
  }
}
