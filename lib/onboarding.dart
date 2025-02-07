import 'package:flutter/material.dart';
import 'package:gemini_app/homepage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Your AI Assistant',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Using this software, you can ask you question and receive articles using AI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                  ),
                )
              ],
            ),
            SizedBox(height: 32,),
            Image.asset('assets/onboarding.png'),
            SizedBox(height: 32,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context)=> const Homepage()),
                          (route) => false
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32)
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Continue', style: TextStyle(color: Colors.white),),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white,)

                  ],
                ))
          ],
        ),
      ),
    );
  }
}
