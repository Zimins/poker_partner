import 'dart:math';

import 'card.dart';

class DeckHelper {
  var cardKeys = [
    Number2(),
    Number3(),
    Number4(),
    Number5(),
    Number6(),
    Number7(),
    Number8(),
    Number9(),
    Number10(),
    Jack(),
    Queen(),
    King(),
    Ace()
  ];

  var cardShapes = [
    Spade(),
    Heart(),
    Club(),
    Diamond(),
  ];

  TrumpCard getRandomCard() {
    var random = Random();
    var randomKey = cardKeys[random.nextInt(cardKeys.length)];
    var randomShape = cardShapes[random.nextInt(cardShapes.length)];

    return TrumpCard(randomKey, randomShape);
  }

  List<TrumpCard> getRandomHand() {
    var random1 = getRandomCard();
    var random2 = getRandomCard();
    while (random1 == random2) {
      random2 = getRandomCard();
    }
    return [random1, random2];
  }

  HandPair toCardPair(TrumpCard card1, TrumpCard card2) {
    var cards = [card1, card2];
    cards.sort((TrumpCard card1, TrumpCard card2) {
      return cardKeys.indexOf(card2.key) - cardKeys.indexOf(card1.key);
    });

    return HandPair(
        keys: cards.map((card) => card.key).toList(),
        isSuited: card1.shape == card2.shape);
  }
}
