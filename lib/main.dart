import 'package:flutter/material.dart';
import 'package:ui/homepage.dart';
import 'package:ui/profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int index = 0 ;
  List <Widget> screens = [
    HomePage(),
    ProfilePage(),
    ProfilePage(),
    ProfilePage(),
    ProfilePage()
  ];
  OnSelected(int val){
    setState(() {
      index = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(items: [

      BottomNavigationBarItem(icon: Icon(Icons.home , ) ,label: 'Home' , ),
      BottomNavigationBarItem(icon: Icon(Icons.menu_book ) , label: 'Learn'),
      BottomNavigationBarItem(icon: Icon(Icons.home ) , label: 'Hub'),
      BottomNavigationBarItem(icon: Icon(Icons.chat ), label: 'Chat'),
      BottomNavigationBarItem(icon: Icon(Icons.person ) , label: 'Profile'),
      ],
      currentIndex: index,
      onTap: OnSelected,
      elevation: 5,
      selectedItemColor: Colors.blue,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      ),
     
      body:screens.elementAt(index),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
