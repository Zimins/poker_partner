import 'package:poker_partner/card.dart';

var categoryInfo = '''
Category 1: AA, KK
Category 2: QQ, AKs, AKo, JJ
Category 3: AQs, AQo, TT, 99
Category 4: AJs, KQs, 88, 77
Category 5: AJo, ATs, ATo, KQo, KJs, 66, 55
Category 6: A9s-A2s, KJo, KTs, QJs, QTs, JTs, 44, 33, 22
Category 7: A9-A2, KTo, QJo, QTo, JTo, T9s, 98s, 87s, 76s, 65s, 54s
Category 8: K9s, K9o, K8s, K8o, Q9s, Q8s, J9s, T8s, T9o, 97s, 98o, 86s, 87o, 75s, 76o, 64s

// Card pair categories based on Pokerstars
// https://www.pokerstarsschool.com/lessons/an-introduction/1450/
''';

class CardCategories {
  // Card pair categories based on Pokerstars
  // https://www.pokerstarsschool.com/lessons/an-introduction/1450/

  // Category 1: AA, KK
  // Category 2: QQ, AKs, AKo, JJ
  // Category 3: AQs, AQo, TT, 99
  // Category 4: AJs, KQs, 88, 77
  // Category 5: AJo, ATs, ATo, KQo, KJs, 66, 55
  // Category 6: A9s-A2s, KJo, KTs, QJs, QTs, JTs, 44, 33, 22
  // Category 7: A9-A2, KTo, QJo, QTo, JTo, T9s, 98s, 87s, 76s, 65s, 54s
  // Category 8: K9s, K9o, K8s, K8o, Q9s, Q8s, J9s, T8s, T9o, 97s, 98o, 86s, 87o, 75s, 76o, 64s

  var category1 = [
    HandPair(keys: [Ace(), Ace()], isSuited: false),
    HandPair(keys: [King(), King()], isSuited: false),
  ];

  var category2 = [
    HandPair(keys: [Queen(), Queen()], isSuited: false),
    HandPair(keys: [Ace(), King()], isSuited: true),
    HandPair(keys: [Ace(), King()], isSuited: false),
    HandPair(keys: [Jack(), Jack()], isSuited: false),
  ];

  var category3 = [
    HandPair(keys: [Ace(), Queen()], isSuited: true),
    HandPair(keys: [Ace(), Queen()], isSuited: false),
    HandPair(keys: [Number10(), Number10()], isSuited: false),
    HandPair(keys: [Number9(), Number9()], isSuited: false),
  ];

  var category4 = [
    HandPair(keys: [Ace(), Jack()], isSuited: true),
    HandPair(keys: [King(), Queen()], isSuited: true),
    HandPair(keys: [Number8(), Number8()], isSuited: false),
    HandPair(keys: [Number7(), Number7()], isSuited: false),
  ];
  var category5 = [
    HandPair(keys: [Ace(), Jack()], isSuited: false),
    HandPair(keys: [Ace(), Number10()], isSuited: true),
    HandPair(keys: [Ace(), Number10()], isSuited: false),
    HandPair(keys: [King(), Queen()], isSuited: false),
    HandPair(keys: [King(), Jack()], isSuited: true),
    HandPair(keys: [Number6(), Number6()], isSuited: false),
    HandPair(keys: [Number5(), Number5()], isSuited: false),
  ];

  var category6 = [
    HandPair(keys: [Ace(), Number9()], isSuited: true),
    HandPair(keys: [Ace(), Number8()], isSuited: true),
    HandPair(keys: [Ace(), Number7()], isSuited: true),
    HandPair(keys: [Ace(), Number6()], isSuited: true),
    HandPair(keys: [Ace(), Number5()], isSuited: true),
    HandPair(keys: [Ace(), Number4()], isSuited: true),
    HandPair(keys: [Ace(), Number2()], isSuited: true),
    HandPair(keys: [Ace(), Number2()], isSuited: true),
    HandPair(keys: [King(), Jack()], isSuited: false),
    HandPair(keys: [King(), Number10()], isSuited: true),
    HandPair(keys: [Queen(), Jack()], isSuited: true),
    HandPair(keys: [Queen(), Number10()], isSuited: true),
    HandPair(keys: [Jack(), Number10()], isSuited: true),
    HandPair(keys: [Number4(), Number4()], isSuited: false),
    HandPair(keys: [Number3(), Number3()], isSuited: false),
    HandPair(keys: [Number2(), Number2()], isSuited: false),
  ];

  var category7 = [
    HandPair(keys: [Ace(), Number9()], isSuited: false),
    HandPair(keys: [Ace(), Number8()], isSuited: false),
    HandPair(keys: [Ace(), Number7()], isSuited: false),
    HandPair(keys: [Ace(), Number6()], isSuited: false),
    HandPair(keys: [Ace(), Number5()], isSuited: false),
    HandPair(keys: [Ace(), Number4()], isSuited: false),
    HandPair(keys: [Ace(), Number3()], isSuited: false),
    HandPair(keys: [Ace(), Number2()], isSuited: false),
    HandPair(keys: [King(), Number10()], isSuited: false),
    HandPair(keys: [Queen(), Jack()], isSuited: false),
    HandPair(keys: [Queen(), Number10()], isSuited: false),
    HandPair(keys: [Jack(), Number10()], isSuited: false),
    HandPair(keys: [Number10(), Number9()], isSuited: true),
    HandPair(keys: [Number9(), Number8()], isSuited: true),
    HandPair(keys: [Number8(), Number7()], isSuited: true),
    HandPair(keys: [Number7(), Number6()], isSuited: true),
    HandPair(keys: [Number6(), Number5()], isSuited: true),
    HandPair(keys: [Number5(), Number4()], isSuited: true),
  ];

  var category8 = [
    HandPair(keys: [King(), Number9()], isSuited: true),
    HandPair(keys: [King(), Number9()], isSuited: false),
    HandPair(keys: [King(), Number8()], isSuited: true),
    HandPair(keys: [King(), Number8()], isSuited: false),
    HandPair(keys: [Queen(), Number9()], isSuited: true),
    HandPair(keys: [Queen(), Number8()], isSuited: true),
    HandPair(keys: [Jack(), Number9()], isSuited: true),
    HandPair(keys: [Number10(), Number8()], isSuited: true),
    HandPair(keys: [Number10(), Number9()], isSuited: false),
    HandPair(keys: [Number9(), Number7()], isSuited: true),
    HandPair(keys: [Number9(), Number8()], isSuited: false),
    HandPair(keys: [Number8(), Number6()], isSuited: true),
    HandPair(keys: [Number8(), Number7()], isSuited: false),
    HandPair(keys: [Number7(), Number5()], isSuited: true),
    HandPair(keys: [Number7(), Number6()], isSuited: false),
    HandPair(keys: [Number6(), Number4()], isSuited: true),
  ];

  String getCategoryNameWithCards(TrumpCard card1, TrumpCard card2) {
    return getCategoryName(toCardPair(card1, card2));
  }

  String getCategoryName(HandPair handPair) {
    if (category1.contains(handPair)) {
      return "Category1";
    } else if (category2.contains(handPair)) {
      return "Category2";
    } else if (category3.contains(handPair)) {
      return "Category3";
    } else if (category4.contains(handPair)) {
      return "Category4";
    } else if (category5.contains(handPair)) {
      return "Category5";
    } else if (category6.contains(handPair)) {
      return "Category6";
    } else if (category7.contains(handPair)) {
      return "Category7";
    } else if (category8.contains(handPair)) {
      return "Category8";
    } else {
      return "Else";
    }
  }

  HandPair toCardPair(TrumpCard card1, TrumpCard card2) {
    var cards = [card1, card2];

    cards.sort((TrumpCard card1, TrumpCard card2) {
      return card2.key.index() - card1.key.index();
    });

    return HandPair(
        keys: [cards[0].key, cards[1].key],
        isSuited: card1.shape == card2.shape);
  }
}
