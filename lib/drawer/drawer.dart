import 'package:flutter/material.dart';
import 'package:jumia_food_clone/drawer/drawer_model_data.dart';

DrawerModelData drawerModelData = DrawerModelData();

class AppDrawer extends StatelessWidget {
  var drawerOptions = drawerModelData.drawermodels;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xffF58B31)),
            accountName: Text("Murungi Matthew"),
            accountEmail: Text("murungima@gmail.com"),
            currentAccountPicture: Image(
              image: NetworkImage(
                'https://avatars0.githubusercontent.com/u/32789510?s=460&u=57ca4f57a762e8539b9a1aeddc887a9f15723d7c&v=4',
              ),
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.remove_red_eye,
              color: Colors.orange[800],
            ),
            title: Text("Jumia Prime"),
          ),
          Divider(
            height: 6,
          ),
          Container(
            height: MediaQuery.of(context).size.height/1.7,
            child: ListView(
              children: <Widget>[
 ...drawerOptions
                .map((drawerTile) => ListTile(
                      title: Text("${drawerTile.title}"),
                      leading: Icon(drawerTile.icon),
                    ))
                .toList(),
            Divider(
              height: 6,
            ),
            DrawerSecondaryListTile(
              title: "Settings",
            ),
            DrawerSecondaryListTile(
              title: "Live Chart",
            ),
            DrawerSecondaryListTile(
              title: "Info",
            ),
            DrawerSecondaryListTile(
              title: "Log Out",
            ),
              ],
            ),
          )
         
        ],
      ),
    );
  }
}

class DrawerSecondaryListTile extends StatelessWidget {
  final String title;

  DrawerSecondaryListTile({this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.normal),
    ));
  }
}
