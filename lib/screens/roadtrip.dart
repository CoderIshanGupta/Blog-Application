import 'package:flutter/material.dart';

import '../reusable_widget/modal.dart';
import 'discover.dart';

class RoadTrip extends StatelessWidget {
  RoadTrip({super.key});
  final List _photos = [
    Data(image:"assets/images/road4.jpg", text:"Mountain"),
    Data(image:"assets/images/road5.jpg", text:"trip"),
    Data(image:"assets/images/road1.jpg", text:"road trip"),
    Data(image:"assets/images/road2.jpg", text:"road trip"),
    Data(image:"assets/images/road3.jpg", text:"road trip"),
    //  Data(image:"assets/images/blog5.jpg", text:"ocen"),
    // Data(image:"assets/images/img4.jpg", text:"Attendance"),
    // Data(image:"assets/images/img5.jpg", text:"Attendance"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Discover()),
              );
            },
            child: Icon(Icons.arrow_back)),
        title: Text('RoadTrip Blog', ),

      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.fromLTRB(0,20,0,20),
          child:Card(
            elevation: 30,

            shape: Border.all(width: 5,color:Colors.white70 ),
            child: Container( child: Container(
              width: double.infinity,
              height: 250,
              decoration:BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(0) ,
                image: DecorationImage(
                    image: AssetImage(_photos[index].image),

                    fit: BoxFit.cover
                ),

              ),

            ),
            ),
          ),
        );
      }, itemCount: _photos.length,),

    );
  }
}
