import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poker_partner/card.dart';
import 'package:poker_partner/card_categories.dart';
import 'package:poker_partner/deck_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Poker Partner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class CardWidget extends StatelessWidget {
  CardWidget({this.name, this.iconRes});

  String name;
  String iconRes;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(iconRes),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  DeckHelper deckHelper = DeckHelper();
  String randomCard = "";
  String selectedCategory = "Category1";
  String categoryName = "";

  List<TrumpCard> cards = [];
  @override
  void initState() {
    super.initState();
    printRandomCard();
  }

  void printRandomCard() {
    var randomPair = deckHelper.getRandomHand();
    var handPair = deckHelper.toCardPair(randomPair[0], randomPair[1]);

    setState(() {
      cards.clear();
      cards.addAll(randomPair);
      randomCard = randomPair.toString() + handPair.toString();
      categoryName = CardCategories().getCategoryName(handPair);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "which category of this pairs?",
              style: TextStyle(fontSize: 25),
            ),
            if (cards.length > 0)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardWidget(
                    name: cards[0].key.getShortKey(),
                    iconRes: cards[0].shape.getIconRes(),
                  ),
                  CardWidget(
                    name: cards[1].key.getShortKey(),
                    iconRes: cards[1].shape.getIconRes(),
                  ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryButton(
                  title: "Category1",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
                CategoryButton(
                  title: "Category2",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
                CategoryButton(
                  title: "Category3",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryButton(
                  title: "Category4",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
                CategoryButton(
                  title: "Category5",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
                CategoryButton(
                  title: "Category6",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryButton(
                  title: "Category7",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
                CategoryButton(
                  title: "Category8",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
                CategoryButton(
                  title: "Else",
                  cards: cards,
                  selectedCategory: categoryName,
                  onDismiss: printRandomCard,
                ),
              ],
            ),
            OutlineButton(
                child: Text("See all"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(categoryInfo),
                        );
                      });
                })
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  String title;
  List<TrumpCard> cards = [];
  String selectedCategory;
  VoidCallback onDismiss;

  CategoryButton(
      {this.title, this.cards, this.selectedCategory, this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 100,
        height: 100,
        child: OutlineButton(
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
            shape: CircleBorder(),
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (cards.length > 0)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CardWidget(
                                  name: cards[0].key.getShortKey(),
                                  iconRes: cards[0].shape.getIconRes(),
                                ),
                                CardWidget(
                                  name: cards[1].key.getShortKey(),
                                  iconRes: cards[1].shape.getIconRes(),
                                ),
                              ],
                            ),
                          if (title == selectedCategory)
                            Text("Correct! They are $selectedCategory")
                          else
                            Text(
                                "Wrong! They are ${CardCategories().getCategoryNameWithCards(cards[0], cards[1])}")
                        ],
                      ),
                    );
                    return Text("demo");
                  }).then((value) {
                onDismiss();
              });
            }),
      ),
    );
  }
}
