import 'package:flutter/material.dart';

import 'discover.dart';

class MountainBlog extends StatelessWidget {
  const MountainBlog({super.key});


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
          title: Text('Mountain Blog'),
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
                      image: AssetImage('assets/images/mou1.jpg'),
                      fit: BoxFit.cover
                  ),


                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 30, // Adjust this value to move the text up or down
                      right: 10, // Adjust this value to move the text right or left
                      child: Text(
                        'Your Text Here', // Replace with your desired text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),



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
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/mou8.jpg'),
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
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/mou3.jpg'),
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
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/mou7.jpg'),
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
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/mou9.jpg'),
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
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 250,
                decoration:BoxDecoration(

                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(0) ,
                  image: DecorationImage(

                    //image: AssetImage(),
                      image: AssetImage('assets/images/mou1.jpg'),
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
            ],
          ),
        ),
      ),
    );
  }
}