import 'package:flutter/material.dart';
class track_order extends StatefulWidget {
  const track_order({Key? key}) : super(key: key);

  @override
  _track_orderState createState() => _track_orderState();
}

class _track_orderState extends State<track_order> {
  
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Track Orders"),
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
                      Align(alignment: Alignment.topLeft,child: Text("Track Orders",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),)),
                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child:Stepper(
                            steps: [
                              Step(title: Text("Order Placed"), content: Text(""),
                                subtitle: Text("11:35 PM"),
                                isActive: true,
                                state: StepState.complete,
                              ),
                              Step(title: Text("Order Conformed"), content: Text(""),
                                subtitle: Text("12:35 PM"),
                                isActive: true,
                                state: StepState.complete,
                              ),
                              Step(title: Text("Order Processed"), content: Text(""),
                                subtitle: Text("1:35 PM"),
                                isActive: true,
                                state: StepState.disabled,
                              ),
                              Step(title: Text("Order Delivered"), content: Text(""),
                                subtitle: Text("2:35 PM"),
                                isActive: true,
                                state: StepState.disabled,
                              ),
                            ],
                            currentStep: index,
                            onStepTapped: (index){
                              setState(() {
                                index=index;
                              }
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Divider(
                                color: Colors.black,
                                height: 20,
                              ),
                            ),
                            Text("Items",style: TextStyle(fontSize: 12),),
                            SizedBox(height: 3,),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Total Amount",style: TextStyle(fontSize: 14,),),
                            SizedBox(width: 8,),
                            Text("₹ 300",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
