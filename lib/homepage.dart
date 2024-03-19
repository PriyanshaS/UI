import 'package:flutter/material.dart';
import 'package:ui/widgets/Contain.dart';
import 'package:ui/widgets/ListViewHorizontal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/Group 972.png'),
        actions: [Image.asset('assets/images/forum_black_24dp 1.png') , 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/Notification.png'),
        )]),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 8.0 , vertical: 2),
                child: Text('Hello, Priya!' ,style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 8.0),
                child: Text('What do you wanna learn today?' , style: TextStyle(color: Colors.grey),),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Contain( title: 'Programs',icon : Icon(Icons.bookmark_add , color: Colors.blue,),),
                Contain(icon :Icon(Icons.help , color: Colors.blue,), title: 'Get help'),
              
              ],),
              SizedBox(height: 5,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Contain( title: 'Learn',icon : Icon(Icons.menu_book , color: Colors.blue,),),
                Contain(icon :Icon(Icons.line_style, color: Colors.blue,), title: 'DD Tracker'),
              ],),

              ListViewHorizontal(title: 'Programs for you',img: ['assets/images/Frame 122.png' ,'assets/images/Frame 123.png' ] ,isImgs: true, txt1: 'LIFESTYLE',txt2:'A complete guide for your new born baby',
              txt3: '16 lessons', icon: Container() , isIcon: false,),
              ListViewHorizontal(
                isImgs: false,
                title: 'Events and experiences' , img: ['assets/images/young-woman-doing-natarajasana-exercise 1.png'],
              txt1: 'BABYCARE', txt2: 'Understanding of human behavious', txt3: '13 Feb, Sunday', icon: Container(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 2),
                child: Text('Book' , style: TextStyle(color: Colors.blue , fontSize: 13),),
              ) ,decoration: BoxDecoration(
                shape: BoxShape.rectangle , border: Border.all(width: 1 , color: Colors.blue), borderRadius: BorderRadius.circular(15),
              )),isIcon: true, ),
              ListViewHorizontal(
                isImgs: false,
                title: 'Lessons for you' , img: ['assets/images/young-woman-doing-natarajasana-exercise 1.png'],
              txt1: 'BABYCARE', txt2: 'Understanding of human behavious',txt3: '3 min',
              icon: Icon(Icons.lock , color: Colors.grey,), isIcon: true,)
            ],
          ),
        ),
    );
  }
}