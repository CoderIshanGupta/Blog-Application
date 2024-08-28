import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
 String? get id => null;

  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap,String)async{
   return await FirebaseFirestore.instance
       .collection("Employee")
       .doc(id)
       .set(employeeInfoMap);
  }

  Future<Stream<QuerySnapshot>> getEmployeeDetails()async{
   return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }

  Future updateEmployeeDetail(String id, Map<String,dynamic>updateInfo)async{
   return await FirebaseFirestore.instance.collection("Employee").doc(id).update(updateInfo);

  }
}