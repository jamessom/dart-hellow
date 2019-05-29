class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);

  toString(){
    return "${rank} of ${suit}";
  }
}