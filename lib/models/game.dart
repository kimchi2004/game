class Game {
  String icon;
  String name;
  String type;

  Game(this.icon, this.name, this.type);
  static List<Game> generateGames() {
    return [
      Game(
        'assets/images/game1.png',
        'Zic tac toe',
        'puzzle',
      ),
      Game(
        'assets/images/game1.png',
        'Zic tac toe',
        'puzzle',
      ),
      Game(
        'assets/images/game2.png',
        'Snake',
        'puzzle',
      ),
      Game(
        'assets/images/game5.png',
        'NaruTOOO Game',
        'puzzle',
      ),
      Game(
        'assets/images/game5.png',
        'NaruTOOO Game',
        'puzzle',
      ),
      Game(
        'assets/images/game5.png',
        'NaruTOOO Game',
        'puzzle',
      ),
    ];
  }
}
