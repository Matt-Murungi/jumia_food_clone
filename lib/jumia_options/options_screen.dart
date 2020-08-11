import 'package:flutter/material.dart';
import 'package:jumia_food_clone/constants/styles.dart';
import 'package:jumia_food_clone/drawer/drawer.dart';
import 'package:jumia_food_clone/jumia_options/option_model_data.dart';

OptionData optionData = OptionData();

class OptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final options = optionData.options;

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
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
        
                    return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListTile(
                        title: Text(options[index].title, style: optionTitletextStyle,),
              subtitle: Text(
                options[index].subtitle,
              ),
              leading: Icon(
                options[index].icon,
                color: Colors.orange,
                size: 50,
              ),
            ),
          ),
        );
        },
      ),
    );
  }
}

