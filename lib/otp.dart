import 'package:cloud_kitchen/model/getcontroller.dart';
import 'package:cloud_kitchen/model/onboading_content.dart';
import 'package:cloud_kitchen/onboading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 45,),
            Text("Enter the 6-digit OTP sent to",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
            SizedBox(height: 5,),
            Text("+91 7999107995",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 35,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("4",textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive the code? Resend",style: TextStyle(fontSize: 16,color: Colors.grey),),
                  SizedBox(width: 20,),
                  Text("1:00",style: TextStyle(fontSize: 16,color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text("Get otp on call",textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              height: 50,
              child:ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>onboading()),);
                },
                child: Text('Verify'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
