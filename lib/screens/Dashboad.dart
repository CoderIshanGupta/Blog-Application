import 'package:flutter/material.dart';
import 'package:login/screens/profile.dart';
import 'package:login/screens/signin_screen.dart';

import '../reusable_widget/modal.dart';
import 'blogScreen.dart';
import 'discover.dart';


class Dashboad extends StatelessWidget {
  //const Dashboad({super.key});
  Dashboad({super.key});
  final List _photos = [
    Data(image:"assets/images/img1.jpg", text:"Mountain"),
    Data(image:"assets/images/blog1.jpg", text:"trip"),
    Data(image:"assets/images/blog2.jpg", text:"road trip"),
    Data(image:"assets/images/blog3.jpg", text:"road trip"),
    Data(image:"assets/images/blog4.jpg", text:"road trip"),
    Data(image:"assets/images/blog5.jpg", text:"ocen"),
    // Data(image:"assets/images/img4.jpg", text:"Attendance"),
    // Data(image:"assets/images/img5.jpg", text:"Attendance"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.cyan,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Icon(Icons.account_circle)),
        title: Text('BlogApp'),
        actions: [




          //adding dropdown
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: PopupMenuButton<String>(
              icon: Icon(Icons.density_medium, color: Colors.white),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'option1',
                  child: Text('Discover Page'),
                ),
                PopupMenuItem<String>(
                  value: 'option2',
                  child: Text('Share your day'),
                ),
                PopupMenuItem<String>(
                  value: 'option3',
                  child: Text('LogOut'),
                ),
              ],
              onSelected: (String value) {
                // Handle menu item selection
                // print('Selected: $value');
                // Perform actions based on selected value
                switch (value) {
                  case 'option1':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Discover()),
                    );
                    break;
                  case 'option2':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BlogScreen()),
                    );
                    // Handle option 2
                    break;
                  case 'option3':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
                    // Handle option 3
                    break;
                  default:
                    break;
                }
              },
            ),
          ),






        ],

      ),
      body: Column(
        children: [

          Container(
            child: Container(
              width: double.infinity,
              height: 250,
              decoration:BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(0) ,
                image: DecorationImage(
                  //image: AssetImage(),
                  //   image: AssetImage('assets/images/discover.jpg'),
                  image: AssetImage('assets/images/discover.jpg'),
                    fit: BoxFit.cover
                ),

              ),

            ),

            //height: 100, // Example height for the container
            // color: Colors.blue,
            // child: Center(
            //   child: Text(
            //     'This is a container on top of ListView.builder',
            //     style: TextStyle(fontSize: 18, color: Colors.white),
            //   ),
            // ),
          ),
          Container(
            child: Text(
              'Your feed Box',
              style: TextStyle(
                color: Colors.black12,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,20),
                child:Card(
                  elevation: 20,

                  shape: Border.all(width: 3,color:Colors.white70 ),
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
          ),

        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: ,
      //   tooltip: 'Publish',
      //   child: Icon(Icons.upload_outlined),
      // ),

    );
  }
}

