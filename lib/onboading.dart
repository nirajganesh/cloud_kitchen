

import 'package:cloud_kitchen/home.dart';
import 'package:cloud_kitchen/model/getcontroller.dart';
import 'package:cloud_kitchen/model/onboading_content.dart';
import 'package:cloud_kitchen/otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onboading extends StatefulWidget {
  const onboading({Key? key}) : super(key: key);

  @override
  _onboadingState createState() => _onboadingState();
}

class _onboadingState extends State<onboading> {
int currentIndex=0;
final getcontroller c=Get.put(getcontroller());
String dropdownvalue = 'Apple';
var items =  ['Apple','Banana','Grapes','Orange','watermelon','Pineapple'];
Map<String, String> formData = {
'City': 'Bangalore',
'Country': 'INDIA',
};
List<String> cities=["Raipur","Bilaspur","Kanker"];
String valuechooser="Raipur";
List listitem=["Raipur","Bhilai","Durg"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: contents.length,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex=index;
                      c.state_change=RxInt(index);
                    });
                  },
                  itemBuilder:(_,i){
                    return Padding(
                      padding: const EdgeInsets.all(60),
                      child: Column(
                        children: [
                          Text('Logo',textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                          SizedBox(height: 30,),
                          Image.asset(contents[i].image,height: 130,),
                          SizedBox(height: 30,),
                          Text(contents[i].title,textAlign: TextAlign.center,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    );

                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:List.generate(
                      contents.length,
                          (index)=>buildDot(index, context)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              c.state_change.toString()=="0"?Container(
    width:double.infinity,
    height: 300,
    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.only(left: 10,right: 10),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 5,),
    Text('Hello',style: TextStyle(fontSize: 20),),
    SizedBox(height: 5,),
    Text("let's get started!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
    SizedBox(height: 20,),
    Text("Enter your name",style: TextStyle(fontSize: 16)),
    SizedBox(height: 10,),
    Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    children: [
    Icon(Icons.person, color: Colors.grey, size: 30.0,),
    Container(height: 35, child: VerticalDivider(color: Colors.grey)),
    Container(
    width: 150,
    height: 35,
    child: TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    hintText: 'Niraj'
    ),
    ),
    ),
    SizedBox(height: 3,),
    ],
    ),
    ),
    SizedBox(height: 15,),
    Container(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
    onPressed: () {},
    child: Text('Save'),
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
    ):c.state_change.toString()=="1"? Container(
    width:double.infinity,
    height: 300,
    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.only(left: 10,right: 10),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 5,),
    Text("let's get started!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
    SizedBox(height: 20,),
    Text("Enter your mobile number",style: TextStyle(fontSize: 16)),
    SizedBox(height: 10,),
    Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    children: [
    Icon(Icons.call, color: Colors.grey, size: 30.0,),
    Container(height: 35, child: VerticalDivider(color: Colors.grey)),
    Container(
    width: 150,
    height: 35,
    child: TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    hintText: '7999107995'
    ),
    ),
    ),
    SizedBox(height: 3,),
    ],
    ),
    ),
    SizedBox(height: 15,),
    Container(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>otp()),);
    },
    child: Text('Login'),
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12), // <-- Radius
    ),
    ),
    ),
    ),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Not have a account?",style: TextStyle(fontSize: 16,color: Colors.grey)),
    Text("Signup",style: TextStyle(fontSize: 16)),
    ],
    )
    ],
    ),
    ),
    ): Container(
    width:double.infinity,
    height: 300,
    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.only(left: 10,right: 10),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 5,),
    Text("let's get started!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
    SizedBox(height: 20,),
    Text("Choose your location",style: TextStyle(fontSize: 16)),
    SizedBox(height: 10,),
    Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    children: [
    Icon(Icons.place, color: Colors.grey, size: 30.0,),
    Container(height: 35, child: VerticalDivider(color: Colors.grey)),
    // Container(
    // width: 150,
    // height: 35,
    //   child: TextField(
    //     decoration: InputDecoration(
    //         border: InputBorder.none,
    //         focusedBorder: InputBorder.none,
    //         enabledBorder: InputBorder.none,
    //         hintText: 'Raipur'
    //     ),
    //   ),
    // ),
      Flexible(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: DropdownButton(
              value: valuechooser,
              isExpanded: true,
              underline: Container(color: Colors.transparent),
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged:(String? newValue){
                setState(() {
                  valuechooser=newValue!;
                });
              },
              items: <String>['Raipur', 'Bhilai', 'Durg']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    SizedBox(height: 3,),
    ],
    ),
    ),
    SizedBox(height: 15,),
    Container(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
    onPressed: () {},
    child: Text('Add location'),
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12), // <-- Radius
    ),
    ),
    ),
    ),
    SizedBox(height: 10,),
    Container(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>home()),);
    },
    child: Text('Get started',style: TextStyle(color: Theme.of(context).primaryColor),),
    style: ElevatedButton.styleFrom(
    primary:Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12), //
    side: BorderSide(
    width: 2,
    color: Theme.of(context).primaryColor
    ),// <-- Radius
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
            ],
          ),
        ],
      ),
   );
  }
  void bottom_widghet()
  {
    setState(() {
      if(currentIndex==0)
      {
        Container(
          width:double.infinity,
          height: 300,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Text('Hello',style: TextStyle(fontSize: 20),),
                SizedBox(height: 5,),
                Text("let's get started!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                SizedBox(height: 20,),
                Text("Enter your name",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Colors.grey, size: 30.0,),
                      Container(height: 35, child: VerticalDivider(color: Colors.grey)),
                      Container(
                        width: 150,
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: '7999107995'
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: double.infinity,
                  // child: FlatButton(
                  //   child: Text("Login"),
                  //   onPressed: (){},
                  //   color: Theme.of(context).primaryColor,
                  //   textColor: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(25)
                  //   ),
                  // ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not have a account?",style: TextStyle(fontSize: 16,color: Colors.grey)),
                    Text("Signup",style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
          ),
        );
      }
      if(currentIndex==1)
      {
        Container(
          width:double.infinity,
          height: 300,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Text("let's get started!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                SizedBox(height: 20,),
                Text("Enter your name",style: TextStyle(fontSize: 16)),
                SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Colors.grey, size: 30.0,),
                      Container(height: 35, child: VerticalDivider(color: Colors.grey)),
                      Container(
                        width: 150,
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: '7999107995'
                          ),
                        ),
                      ),
                      SizedBox(height: 3,),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: double.infinity,
                  // child: FlatButton(
                  //   child: Text("Login"),
                  //   onPressed: (){},
                  //   color: Theme.of(context).primaryColor,
                  //   textColor: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(25)
                  //   ),
                  // ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not have a account?",style: TextStyle(fontSize: 16,color: Colors.grey)),
                    Text("Signup",style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
          ),
        );
      }
    });

  }
  Container buildDot(int index,BuildContext  context)
  {
    return Container(
      height: 10,
      width: currentIndex==index ? 20:10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
  late var cities_selected=TextEditingController();
}
