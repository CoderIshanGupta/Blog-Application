import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/signin_screen.dart';
import 'package:login/service/database.dart';

import 'employee.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController agecontroller = new TextEditingController();
  TextEditingController locationcontroller = new TextEditingController();


  Stream? EmployeeStream;

getontheload()async{
  EmployeeStream= await DatabaseMethods().getEmployeeDetails();
  setState(() {

  });
}

@override
  void initState() {
  getontheload();
    super.initState();
  }


Widget allEmployeeDetails(){
  return StreamBuilder(
    stream: EmployeeStream,
      builder: (context, AsyncSnapshot snapshot){
    return snapshot.hasData 
        ? ListView.builder(
        itemCount: snapshot.data.docs.length,
        itemBuilder: (context, index) {
        DocumentSnapshot ds = snapshot.data.docs[index];
  return  Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Name : "+ds["Name"],
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: (){
                    namecontroller.text=ds["Name"];
                    agecontroller.text=ds["Age"];
                    locationcontroller.text=ds["Location"];
                    EditEmployeeDetails(ds["Id"]);
                  },
                    child: Icon(Icons.edit,color: Colors.orange,))
              ],
            ),
            Text(
              "Age : "+ds["Age"],
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Location : "+ds["Location"],
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ) ,
      ),
    ),
  );
    })
        : Container();
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Employee()));
      },child: Icon(Icons.add),),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "FLutter",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "FireBase",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),),



    body: Container(
      margin: EdgeInsets.only(left: 20,right: 20,top: 30),
      child: Column(
        children: [

         Expanded (child: allEmployeeDetails()),

        ],
      ),
    ) ,

    );
  }
  Future EditEmployeeDetails(String id)=> showDialog(context: context, builder: (context)=> AlertDialog(
    content: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.cancel),
              ),
              SizedBox(width: 60,),
              Text(
                "Edit",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Details",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("name", style: TextStyle(color: Colors.black,fontSize:20,fontWeight:FontWeight.bold)),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
            ),

            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  border: InputBorder.none ),
            ),
          ),
          Text(
              "Age",
              style: TextStyle(
                  color: Colors.black,
                  fontSize:20,
                  fontWeight:FontWeight.bold)),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              controller: agecontroller,
              decoration: InputDecoration(border: InputBorder.none ),
            ),),
          SizedBox(height:20),
          Text(
              "Location",
              style: TextStyle(
                  color: Colors.black,
                  fontSize:20,
                  fontWeight:FontWeight.bold)),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              controller: locationcontroller,
              decoration: InputDecoration(border: InputBorder.none ),
            ),),
          SizedBox(height: 30,),
          Center(
            child: ElevatedButton(onPressed: ()async{
              Map<String, dynamic>updateInfo={
              "Name": namecontroller.text,
                "Age": agecontroller.text,
                "Id": id,
                "Location" : locationcontroller.text,
              };
              await DatabaseMethods().updateEmployeeDetail(id, updateInfo).then((value) {
                Navigator.pop(context);
              });
            }, child: Text("Update")),
          )
        ],
      ),
    ),
  ));

}
