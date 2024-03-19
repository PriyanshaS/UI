import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  String title ; 
   
  List <String> img ; 
  bool isImgs;
  String txt1 ; 
  String txt2;
  String txt3 ; 
  Widget icon ; 
  bool isIcon ; 
   ListViewHorizontal({ required this.img , required this.isImgs, super.key , required this.title , required this.txt1 , required this.txt2 , required this.txt3 ,
   required this.icon , required this.isIcon});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0 , horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Text(title,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)) ,
          Row(children: [Text('View all' , style: TextStyle(color: Colors.grey),) , Icon(Icons.arrow_forward , color: Colors.grey,size: 20,)],),
          
           ],),
        ),
       Container(
        height: 280,
      
         child: ListView.builder(

            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Container(
                  width: 242,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isImgs? 
                    Image.asset(img[index] , height: 140,):
                    Image.asset(img[0], height: 140,),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 6),
                      child: Text(txt1 , style: TextStyle(color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal : 8.0),
                      child: Text(txt2 , style: TextStyle(fontWeight: FontWeight.bold),softWrap: true,),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(txt3, style: TextStyle(color: Colors.grey)),
                          icon,
                        ],
                      ),
                    ),
                  ],
                ),),
              ),
            );
          },),
       )
      ],
    );
  }
}