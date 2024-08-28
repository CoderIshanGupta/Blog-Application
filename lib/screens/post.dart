import 'package:flutter/material.dart';

import 'discover.dart';

class Post extends StatelessWidget {
  const Post({super.key});

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
        title: Text('Blog Box'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
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
              // child: Text('Container 1', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),

            SizedBox(height: 0), // Adds spacing between containers
            Container(
              width: double.infinity,
              //width: 200,
              height: 50,
              color: Colors.white,
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
            SizedBox(height: 20), // Adds spacing between containers
            Container(
              width: double.infinity,
              height: 500,
              // color: Colors.orange,
              child: Column(
                children: [
                  Text('Marina Beach, Chennai',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26,),),
                  Text('The second longest urban beach in the world, Marina Beach is one of the main attractions in Chennai, the capital of Tamil Nadu. The long stretches of white sand along the coast of the Bay of Bengal attract around thirty thousand tourists and locals every day.',style: TextStyle(fontSize: 20),),
                  Text('An early morning visit to Marina Beach is the best thing to do while visiting Chennai on your holiday trip. Other than amazing beach life, you can also see the statues of the legends and an aquarium full of exotic sea creatures on Marina Beach.',style: TextStyle(fontSize: 20),)
                ],
                //child: Text('Container 3', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
