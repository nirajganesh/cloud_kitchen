import 'package:cloud_kitchen/home.dart';
import 'package:flutter/material.dart';
class congratulation extends StatefulWidget {
  const congratulation({Key? key}) : super(key: key);

  @override
  _congratulationState createState() => _congratulationState();
}

class _congratulationState extends State<congratulation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Success"),
        actions:<Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag)),
        ],
      ),
      body:Center(
        child: Container(
                width:320,
                height: 400,
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50,height: 50,child: Icon(Icons.check_circle)),
                Text("Congratulation",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("Order Placed Successfully",style: TextStyle(fontSize: 20),),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order No.",style: TextStyle(fontSize: 14),),
                          Text("#123456",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment Ref.",style: TextStyle(fontSize: 14),),
                          Text("#123456",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount Paid",style: TextStyle(fontSize: 14),),
                          Text("#127893",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>home()),);
                  },
                  child: Text('Shop More'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 35,right: 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // <-- Radius
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
