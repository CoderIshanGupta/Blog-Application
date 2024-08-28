import 'package:flutter/material.dart';
import 'package:login/screens/roadtrip.dart';
import 'Dashboad.dart';
import 'beachblog.dart';
import 'mountain.dart';

class Discover extends StatelessWidget {
  Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboad()),
            );
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text('Discover Page'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Adjusted from spaceBetween to start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Discover()),
                  );
                },
                child: Container(
                  width: double.infinity, // Changed to double.infinity for full-width container
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img1.jpg"),
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.noRepeat,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 20,
                        left: 10,
                        child: Text(
                          'Explore Blogs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MountainBlog()),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/blog1.jpg"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 100,
                            right: 20,
                            child: Text(
                              'Mountain Blogs',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MountainBlog()),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/food1.jpg"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BeachBlog()),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/blog3.jpg"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 120,
                            right: 25,
                            child: Text(
                              'Beach Blogs',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RoadTrip()),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/blog4.jpg"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 70,
                            left: 10,
                            child: Text(
                              'RoadTrip Blogs',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
