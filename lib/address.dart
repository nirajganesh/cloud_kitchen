import 'package:cloud_kitchen/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class address extends StatefulWidget {
  const address({Key? key}) : super(key: key);

  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {

  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Manages your address"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child:GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.vertical,
                shrinkWrap:true,
                mainAxisSpacing: 10,
                childAspectRatio: (.3),
                children:<Widget>[
                  Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)
                                        )
                                    ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Work",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        Text("House no.1,Budhapara raipur",style: TextStyle(fontSize: 14),),
                                        Row(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>checkout()),);
                                                  },
                                                  child: Text('Select Address',),
                                                  style: ElevatedButton.styleFrom(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(12), // <-- Radius
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 50,),
                                                Row(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            Container(
                                                               color: Theme.of(context).primaryColor,
                                                               width: 30,
                                                               height: 30,
                                                               child: Icon(Icons.edit),
                                                             ),
                                                            SizedBox(width: 5,),
                                                            Container(
                                                              color: Theme.of(context).primaryColor,
                                                              width: 30,
                                                              height: 30,
                                                              child: Icon(Icons.delete),
                                                            ),
                                                          ],
                                                        ),
                                              ],
                                            ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                      )
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Work",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        Text("House no.1,Budhapara raipur",style: TextStyle(fontSize: 14),),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) =>checkout()),);
                                              },
                                              child: Text('Select Address',),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12), // <-- Radius
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 50,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(Icons.edit),
                                                ),
                                                SizedBox(width: 5,),
                                                Container(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(Icons.delete),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                      )
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Work",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        Text("House no.1,Budhapara raipur",style: TextStyle(fontSize: 14),),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) =>checkout()),);
                                              },
                                              child: Text('Select Address',),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12), // <-- Radius
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 50,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(Icons.edit),
                                                ),
                                                SizedBox(width: 5,),
                                                Container(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(Icons.delete),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                      )
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Work",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                        Text("House no.1,Budhapara raipur",style: TextStyle(fontSize: 14),),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) =>checkout()),);
                                              },
                                              child: Text('Select Address',),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12), // <-- Radius
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 50,),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(Icons.edit),
                                                ),
                                                SizedBox(width: 5,),
                                                Container(
                                                  color: Theme.of(context).primaryColor,
                                                  width: 30,
                                                  height: 30,
                                                  child: Icon(Icons.delete),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),

                        ],
                      ),
                    ),
                ],
              ),
        ),
      ),
    );
  }
}
