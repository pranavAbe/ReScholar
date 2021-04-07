import 'package:flutter/material.dart';
import 'dart:convert';

import 'build_card.dart';

class BuildCardList extends StatefulWidget {
  @override
  _BuildCardListState createState() => _BuildCardListState();
}

class _BuildCardListState extends State<BuildCardList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/data/reference3.json'),
        builder: (context, snapshot) {
          // Decode the JSON
          var data = json.decode(snapshot.data.toString());

          return ListView.builder(
            // Build the ListView
            itemBuilder: (BuildContext context, int index) {
              return BuildCard(index: index, data: data);
            },
            itemCount: data == null ? 0 : data.length,
          );
        });
  }
}