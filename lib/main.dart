import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: telegramColors,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

const Map<int, Color> color =
{
50:Color.fromRGBO(37,164,226, .1),
100:Color.fromRGBO(37,164,226, .2),
200:Color.fromRGBO(37,164,226, .3),
300:Color.fromRGBO(37,164,226, .4),
400:Color.fromRGBO(37,164,226, .5),
500:Color.fromRGBO(37,164,226, .6),
600:Color.fromRGBO(37,164,226, .7),
700:Color.fromRGBO(37,164,226, .8),
800:Color.fromRGBO(37,164,226, .9),
900:Color.fromRGBO(37,164,226, 1),
};
const MaterialColor telegramColors = const MaterialColor(0xFF25A4E2, color);
