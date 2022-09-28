import 'package:flutter/material.dart';
class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("More"),
        actions:<Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Niraj",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("+91 7999107995",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text("Biryani@gmail.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top:15.0,left:2.0,right:2.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ),
                  Container(
                    child: Divider(
                      color: Colors.black,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Orders",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Manage Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child:Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),),
            )
          ],
        ),
      ),
    );
  }
}
