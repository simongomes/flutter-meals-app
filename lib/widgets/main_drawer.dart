import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData iconData) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(
        fontFamily: "RobotoCondensed",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
      onTap: () {
        //...
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text("Cooking Up!", style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25,
            color: Theme.of(context).primaryColor
          ),),
        ),
        SizedBox(height: 20,),
        buildListTile("Meals", Icons.restaurant),
        buildListTile("Filters", Icons.settings),
      ],),
    );
  }
}
