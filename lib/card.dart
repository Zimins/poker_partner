class TrumpCard {
  TrumpCard(this.key, this.shape);

  CardKey key;
  CardShape shape;

  @override
  String toString() {
    return key.getShortKey() + "," + shape.getName();
  }

  @override
  bool operator ==(other) {
    return this.toString() == other.toString();
  }

  @override
  int get hashCode => super.hashCode;
}

class HandPair {
  HandPair({this.keys, this.isSuited});

  List<CardKey> keys = [];
  var isSuited = false;

  @override
  String toString() {
    return keys.toString() + isSuited.toString();
  }

  @override
  bool operator ==(Object other) {
    return this.toString() == other.toString();
  }

  @override
  int get hashCode => super.hashCode;
}

abstract class CardKey {
  String getShortKey();
  int index();
  @override
  String toString() {
    return getShortKey();
  }
}

class Number2 extends CardKey {
  @override
  String getShortKey() {
    return "2";
  }

  @override
  int index() {
    return 0;
  }
}

class Number3 extends CardKey {
  @override
  String getShortKey() {
    return "3";
  }

  @override
  int index() {
    return 1;
  }
}

class Number4 extends CardKey {
  @override
  String getShortKey() {
    return "4";
  }

  @override
  int index() {
    return 2;
  }
}

class Number5 extends CardKey {
  @override
  String getShortKey() {
    return "5";
  }

  @override
  int index() {
    return 3;
  }
}

class Number6 extends CardKey {
  @override
  String getShortKey() {
    return "6";
  }

  @override
  int index() {
    return 4;
  }
}

class Number7 extends CardKey {
  @override
  String getShortKey() {
    return "7";
  }

  @override
  int index() {
    return 5;
  }
}

class Number8 extends CardKey {
  @override
  String getShortKey() {
    return "8";
  }

  @override
  int index() {
    return 6;
  }
}

class Number9 extends CardKey {
  @override
  String getShortKey() {
    return "7";
  }

  @override
  int index() {
    return 7;
  }
}

class Number10 extends CardKey {
  @override
  String getShortKey() {
    return "10";
  }

  @override
  int index() {
    return 8;
  }
}

class Jack extends CardKey {
  @override
  String getShortKey() {
    return "J";
  }

  @override
  int index() {
    return 9;
  }
}

class Queen extends CardKey {
  @override
  String getShortKey() {
    return "Q";
  }

  @override
  int index() {
    return 10;
  }
}

class King extends CardKey {
  @override
  String getShortKey() {
    return "K";
  }

  @override
  int index() {
    return 11;
  }
}

class Ace extends CardKey {
  @override
  String getShortKey() {
    return "A";
  }

  @override
  int index() {
    return 12;
  }
}

enum Shapes { Spade, Heart, Club, Diamond }

abstract class CardShape {
  String getName();
  String getIconRes();
}

class Spade extends CardShape {
  @override
  String getName() {
    return "Spade";
  }

  @override
  String getIconRes() {
    return "assets/trumpicon/spade.svg";
  }
}

class Heart extends CardShape {
  @override
  String getName() {
    return "Heart";
  }

  @override
  String getIconRes() {
    return "assets/trumpicon/heart.svg";
  }
}

class Club extends CardShape {
  @override
  String getName() {
    return "Club";
  }

  @override
  String getIconRes() {
    return "assets/trumpicon/club.svg";
  }
}

class Diamond extends CardShape {
  @override
  String getName() {
    return "Diamond";
  }

  @override
  String getIconRes() {
    return "assets/trumpicon/diamond.svg";
  }
}

extension ShapeName on Shapes {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
