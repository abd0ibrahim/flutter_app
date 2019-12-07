import 'package:flutter/material.dart';
import 'package:flutter_app/Quote.dart';

import 'QuoteCard.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("abcd efg hrjk lmorp", "elbet made7a"),
    Quote("sdhfkjsdhfkj", "skjdfhksjdfhkjsdf"),
    Quote("sdhfkjsdhfkj", "skjdfhksjdfhkjsdf")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(quote))
            .toList(),
      ),
    );
  }
}


