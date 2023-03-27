import 'package:flutter/material.dart';
import 'package:designs/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
              
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor:const Color(0xff2E305F ,)));
    return  MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'basic_design':(_) =>const BasicDesignScreen(), 
        'scroll_design':(_) =>const ScrollDesignScreen(), 
        'home'         :(_) =>const HomeScreen(), 

      },
      
    );
  }
}

