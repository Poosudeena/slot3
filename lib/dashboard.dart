import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final phone = FirebaseAuth.instance.currentUser!.phoneNumber;
  final databaseReference = FirebaseDatabase.instance.ref();
  final ref = FirebaseDatabase.instance.ref("profile/+919566663139");
  var name = "";

  getUserProfile() {}
  void readData()async{
    try{
      DocumentSnapshot variable = await FirebaseFirestore.instance.collection("profile").doc(phone).get();
    print(variable['name']);
    }catch(e){
      print("user not found");
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Row(
                  children:const [
                    Icon(Icons.location_on,size: 30,),
                    SizedBox(width: 10,),
                    Text("location",style: TextStyle(
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
              Row(
                
              )

              // ElevatedButton(
              //   child: Text(phone.toString()),
              //   onPressed: (() {
              //     FirebaseAuth.instance.signOut();
              //   }),
              // ),
              // ElevatedButton(
              //   child: Text("Click"),
              //   onPressed: (() {
              //     readData();
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
