import 'package:final_project/Services/firebase_services.dart';
import 'package:final_project/screens/login.screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GmailScreen extends StatefulWidget {
  const GmailScreen({super.key});

  @override
  State<GmailScreen> createState() => _GmailScreenState();
}

class _GmailScreenState extends State<GmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            SizedBox(height: 20,),
            Text('${FirebaseAuth.instance.currentUser!.displayName}'),
            Text('${FirebaseAuth.instance.currentUser!.email}'),    
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseServices().signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
