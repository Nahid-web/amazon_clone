import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazon Clone'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text('Demo Home Page'),
              ElevatedButton(onPressed: (){}, child: Text('Click'))
            ],
          ),
        ),
      ),
    );
  }
}
