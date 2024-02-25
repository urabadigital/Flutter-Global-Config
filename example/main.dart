import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'AppSettings.config.dart';
import 'DevSettings.config.dart';

void main() async {
  GlobalConfiguration().loadFromMap(appSettings).loadFromMap(devSettings);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    // Access configuration at constructor
    GlobalConfiguration cfg = new GlobalConfiguration();
    print("Key1 has value ${cfg.getValue("key1")}");
    print("Key2 has value ${GlobalConfiguration().getValue("key2")}");
    print("Key5 has value ${cfg.getValue("key5")}, this should be null!");
  }

  @override
  Widget build(BuildContext context) {
    // Access configuration at build method
    GlobalConfiguration cfg = new GlobalConfiguration();
    print("Key3 has value ${cfg.getValue("key3")}");
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
