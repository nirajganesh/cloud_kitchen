import 'package:cloud_kitchen/track_order.dart';
import 'package:flutter/material.dart';
class order_details extends StatefulWidget {
  const order_details({Key? key}) : super(key: key);

  @override
  _order_detailsState createState() => _order_detailsState();
}

class _order_detailsState extends State<order_details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Orders Details"),
        actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 12,),
                  Text("Items",style: TextStyle(fontSize: 14,),),
                  Text("₹ 300",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                ],
          ),
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Placed On",style: TextStyle(fontSize: 14),),
                                Text("Order status",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("July 10th,Friday 2021",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("Pending",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Items",style: TextStyle(fontSize: 12),),
                            Text("Egg Dum Biryani[1/2 kg]",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Egg Dum Biryani[1/2 kg]",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Egg Dum Biryani[1/2 kg]",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Egg Dum Biryani[1/2 kg]",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>track_order()),);
                              },
                              child: Text('Track Orders'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12), // <-- Radius
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text("Items",style: TextStyle(fontSize: 14,),),
                                Text("₹ 300",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
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
