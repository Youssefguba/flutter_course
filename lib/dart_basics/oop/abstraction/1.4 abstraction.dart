import 'dart:math';

void main() {
  // First Game
  Player humanPlayer = Human(4);
  Bot botPlayer = Bot(4);

  int humanLevel = levelUpPlayer(humanPlayer);
  int botLevel = levelUpPlayer(botPlayer);

  print("This is a Human level $humanLevel");
  print("This is a Bot level $botLevel");

}

int levelUpPlayer(Player player) => player.levelUp;

//TODO Add get computed properties
abstract class Player {
  int get levelUp;
}

class Human implements Player {
  int playerLevel;
  Human(this.playerLevel);

  @override
  int get levelUp => playerLevel += 1;
}

class Bot implements Player {
  int botLevel;
  Bot(this.botLevel);

  Random randomNumber = Random();

  @override
  int get levelUp => botLevel = randomNumber.nextInt(100);
}
