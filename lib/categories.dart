import 'package:cloud_kitchen/cart.dart';
import 'package:flutter/material.dart';
class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  late Item selectedUser;
  String dropdownValue = 'Biryani';
  String valuechooser="Biryani";
  List listitem=["Biryani","Kabbab","Milk"];
  List<Item> users = <Item>[
    const Item('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
    const Item('Flutter',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
    const Item('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
    const Item('iOS',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Categories"),
        actions:<Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16.0),
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
                  items: <String>['Biryani', 'Kabbab', 'Milk']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 1,
                  scrollDirection: Axis.vertical,
                  shrinkWrap:true,
                  mainAxisSpacing: 10,
                  childAspectRatio: (1),
                  children:<Widget>[
                    Container(
                        height: 100,
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Column(
                          children: [
                            Card(
                              child: Stack(
                                children:<Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>categories()),);
                                    },
                                    child:  Center(
                                      child: Image.asset('images/chicken_biryani3.jpg',height: 200,width:double.infinity,fit: BoxFit.cover),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                      Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Container(
                                          width: 150.0,
                                          child:Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),),
                                        ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) =>cart()),);
                                        },
                                        child: Text('Add'),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12), // <-- Radius
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
                      child: Column(
                        children: [
                          Card(
                            child: Stack(
                              children:<Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>categories()),);
                                  },
                                  child:  Center(
                                    child: Image.asset('images/chicken_biryani2.jpg',height: 200,width:double.infinity,fit: BoxFit.cover),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 200.0,
                                      child:Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>cart()),);
                                      },
                                      child: Text('Add'),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12), // <-- Radius
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

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
                      child: Column(
                        children: [
                          Card(
                            child: Stack(
                              children:<Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>categories()),);
                                  },
                                  child:  Center(
                                    child: Image.asset('images/chicken_birayani.jpg',height: 200,width:double.infinity,fit: BoxFit.cover),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 200.0,
                                      child:Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>cart()),);
                                      },
                                      child: Text('Add'),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12), // <-- Radius
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                      child: Column(
                        children: [
                          Card(
                            child: Stack(
                              children:<Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>categories()),);
                                  },
                                  child:  Center(
                                    child: Image.asset('images/chicken_biryani4.jpg',height: 200,width:double.infinity,fit: BoxFit.cover),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Product name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    Text("₹ 200",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 200.0,
                                      child:Text("This is for the sample description of the cloud kitchen for testing",style: TextStyle(fontSize: 14),),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>cart()),);
                                      },
                                      child: Text('Add'),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12), // <-- Radius
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}
