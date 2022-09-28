import 'package:cloud_kitchen/congratulation.dart';
import 'package:flutter/material.dart';
class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {

  bool _value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Checkout"),
        actions:<Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Work",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("House no.1,budhapara,raipur",style: TextStyle(fontSize: 14),),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 3,),
          Container(margin: const EdgeInsets.only(left:15.0,right: 15.0),
              padding: const EdgeInsets.all(3.0),child: Text("Select Payment Methods",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
          SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left:15.0,right:15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                margin: const EdgeInsets.only(right:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: 0,
                      groupValue: val,
                      onChanged: (int? value) {
                        setState(() {
                          val = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    SizedBox(width: 10,),
                    Text("Razorpay Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Expanded(child: Align(
                        alignment: FractionalOffset.topRight,
                        child: Icon(Icons.check_circle))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left:15.0,right:15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                margin: const EdgeInsets.only(right:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: 0,
                      groupValue: val,
                      onChanged: (int? value) {
                        setState(() {
                          val = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    SizedBox(width: 10,),
                    Text("Paytm Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Expanded(child: Align(
                        alignment: FractionalOffset.topRight,
                        child: Icon(Icons.check_circle))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left:15.0,right:15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                margin: const EdgeInsets.only(right:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: 0,
                      groupValue: val,
                      onChanged: (int? value) {
                        setState(() {
                          val = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    SizedBox(width: 10,),
                    Text("Netbanking Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Expanded(child: Align(
                        alignment: FractionalOffset.topRight,
                        child: Icon(Icons.check_circle))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left:15.0,right:15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                margin: const EdgeInsets.only(right:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                      value: 0,
                      groupValue: val,
                      onChanged: (int? value) {
                        setState(() {
                          val = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    SizedBox(width: 10,),
                    Text("Cash Payment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Expanded(child: Align(
                        alignment: FractionalOffset.topRight,
                        child: Icon(Icons.check_circle))),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>congratulation()),);
                },
                child: Container(
                  color: Theme.of(context).primaryColor,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(">>>> Proceed to payment",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                        Text("₹ 200",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
