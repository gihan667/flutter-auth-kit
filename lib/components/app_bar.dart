import 'package:flutter/material.dart';
import 'package:flutter_auth/providers/dark_mode_provider.dart';
import 'package:provider/provider.dart';

AppBar buildAppBar(BuildContext context, String title, List<Widget> actions) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back)
    ),
    title: Text(
      title,
    ),
    actions: actions,
    brightness: Provider.of<DarkModeProvider>(context).darkMode ? Brightness.dark : Brightness.light,
  );
}
