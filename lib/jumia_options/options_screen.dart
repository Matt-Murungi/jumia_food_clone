import 'package:flutter/material.dart';
import 'package:jumia_food_clone/constants/styles.dart';
import 'package:jumia_food_clone/jumia_options/option_model_data.dart';

class OptionScreen extends StatelessWidget {
  OptionData optionData = OptionData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Delivery to",
              style: smallFonttextStyle,
            ),
            Row(
              children: <Widget>[
                Text("2b Bwaise Bombo Rd"),
                Icon(
                  Icons.arrow_drop_down,
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text(""), accountEmail: null)
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: optionData.options.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text(optionData.options[index].title),
              )),
    );
  }
}
