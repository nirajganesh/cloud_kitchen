import 'package:cloud_kitchen/address.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text("Cart"),
        actions:<Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag)),
        ],
      ),

      body:
        SingleChildScrollView(
          child: Column(
              children: [
                Container(
                      width: double.infinity,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            GridView.count(
                              crossAxisCount: 1,
                              scrollDirection: Axis.vertical,
                              shrinkWrap:true,
                              mainAxisSpacing: 10,
                              childAspectRatio: (1/.3),
                              physics: NeverScrollableScrollPhysics(),
                              children:<Widget>[
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/chicken_biryani3.jpg',height: 100,width:100,fit: BoxFit.cover),
                                      SizedBox(width: 20,),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Container(
                                                    width: 120,
                                                    child: Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),)),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.remove,color:Colors.white,)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text("2",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                                    SizedBox(width: 5,),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.add,color:Colors.white)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/chicken_biryani3.jpg',height: 100,width:100,fit: BoxFit.cover),
                                      SizedBox(width: 20,),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Container(
                                                    width: 120,
                                                    child: Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),)),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.remove,color:Colors.white,)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text("2",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                                    SizedBox(width: 5,),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.add,color:Colors.white)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/chicken_biryani3.jpg',height: 100,width:100,fit: BoxFit.cover),
                                      SizedBox(width: 20,),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Container(
                                                    width: 120,
                                                    child: Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),)),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.remove,color:Colors.white,)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text("2",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                                    SizedBox(width: 5,),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.add,color:Colors.white)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/chicken_biryani3.jpg',height: 100,width:100,fit: BoxFit.cover),
                                      SizedBox(width: 20,),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Container(
                                                    width: 120,
                                                    child: Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),)),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(height: 6,),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.remove,color:Colors.white,)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text("2",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                                    SizedBox(width: 5,),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(child: Icon(Icons.add,color:Colors.white)),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context).primaryColor,
                                                        borderRadius: BorderRadius.circular(5),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 2,),
                                      Center(
                                        child: Text("Bill Details",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      ),
                                       SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Text("Sub total items",style:TextStyle(fontSize: 16,color: Colors.grey),),
                                          Text("₹ 200",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Text("Delivery charge",style:TextStyle(fontSize: 16,color: Colors.grey),),
                                          Text("0",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(
                                        child: Divider(
                                          color: Colors.black,
                                          height: 20,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          Text("Total Amount",style:TextStyle(fontSize: 16,color: Colors.grey),),
                                          Text("₹ 500",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
              ],
            ),
        ),

      bottomNavigationBar:
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>address()),);
          },
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          child: Text('Select Address'),
        ),
    );
  }
}
