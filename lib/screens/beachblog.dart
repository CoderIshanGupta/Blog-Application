import 'package:flutter/material.dart';
import 'package:login/screens/post.dart';

import 'discover.dart';


class BeachBlog extends StatelessWidget {
  const BeachBlog({super.key});


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Discover()),
                );
              },
              child: Icon(Icons.arrow_back)),
          title: Text('Beach Blog'),
        ),
        body: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Container(

                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/bh3.jpg'),
                      fit: BoxFit.cover
                  ),


                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sunset view',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(height: 20), // Adjust spacing as needed
                    // Text(
                    //   'Amaging Experiance ',
                    //   style: TextStyle(fontSize: 20, color: Colors.white),
                    // ),
                  ],
                ),



                // child: Stack(
                //   children: <Widget>[
                //     Positioned(
                //       top: 30, // Adjust this value to move the text up or down
                //       right: 10, // Adjust this value to move the text right or left
                //       child: Text(
                //         'Your Text Here', // Replace with your desired text
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 40,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //
                //   ],
                // ),
                //
                // height: 200,
                // width: double.infinity,
                // color: Colors.blue,
                // child: Center(
                //   child: Text(
                //     'Container 1',
                //     style: TextStyle(color: Colors.white, fontSize: 24),
                //   ),
                // ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.favorite,color: Colors.red,),
                    //  Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.download,color: Colors.black,)
                  ],
                ),
              ),

              // SizedBox(height: 10,),
              // Container(
              //
              //   width: double.infinity,
              //   height: 250,
              //   decoration:BoxDecoration(
              //
              //     // color: Colors.pink,
              //     borderRadius: BorderRadius.circular(0) ,
              //     image: DecorationImage(
              //
              //       //image: AssetImage(),
              //         image: AssetImage('assets/images/mou5.jpg',),
              //         fit: BoxFit.cover
              //     ),
              //
              //   ),
              //
              // ),
              SizedBox(height: 10,),


              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/bh1.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Goa Beach',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(height: 20), // Adjust spacing as needed
                    Text(
                      'Amaging Experiance ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.favorite,color: Colors.red,),
                    //  Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.download,color: Colors.black,)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Post()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration:BoxDecoration(

                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(0) ,
                    image: DecorationImage(

                      //image: AssetImage(),
                        image: AssetImage('assets/images/blog.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Marina Beach, Chennai',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(height: 20), // Adjust spacing as needed
                      // Text(
                      //   'Amaging Experiance ',
                      //   style: TextStyle(fontSize: 20, color: Colors.white),
                      // ),
                    ],
                  ),
                ),
              ),
              // Container(
              //   child: Text(
              //     'Marina Beach, Chennai',
              //     style: TextStyle(
              //       color: Colors.black12,
              //       fontSize: 20,
              //      // fontWeight: FontWeight.bold,
              //     ),
              //   ),
//),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.favorite,color: Colors.red,),
                    //  Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.download,color: Colors.black,)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/bh2.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.favorite,color: Colors.red,),
                    //  Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 170,),
                    Icon(Icons.download,color: Colors.black,)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/bh.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/bh4.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}