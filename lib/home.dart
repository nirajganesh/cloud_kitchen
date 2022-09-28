
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_kitchen/address.dart';
import 'package:cloud_kitchen/cart.dart';
import 'package:cloud_kitchen/categories.dart';
import 'package:cloud_kitchen/more.dart';
import 'package:cloud_kitchen/order.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  int current_index=0;
  final List<Widget>tabs=[
    Home(),
    cart(),
    order(),
    more(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: tabs[current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        selectedItemColor:Colors.white,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_bag),
            title: Text("Cart"),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.list_alt_sharp),
            title: Text("Order"),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.more_horiz),
            title: Text("More"),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
        onTap: (index){
          setState(() {
            current_index=index;
          });
        },
      ),
    );
  }
}

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> myProducts =
  List.generate(4, (index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home"),
        actions:<Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.shopping_bag)),
        ],
      ),
        drawer: Drawer(
          child:Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children:<Widget> [
                      Container(
                        height: 170,
                        child: DrawerHeader(
                          child:Column(
                            children: [
                              Image.asset('images/logo.png',height: 120.0,)
                            ],
                          ),
                          decoration: BoxDecoration(
                            color:Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Home',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.dashboard,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => home()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Cart',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.supervised_user_circle,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => cart()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Orders',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.fitness_center,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => order()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'More',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black),
                        ),
                        leading: Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>more()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Log out',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.red),
                        ),
                        leading: Icon(
                          Icons.logout,
                          size: 20.0,
                          color: Colors.red,
                        ),
                        onTap: () {
                          // prefs.remove('Login_id');
                          // prefs.remove('Branch_id');
                          // prefs.remove('gym_name');
                          // prefs.remove('Password');
                          // prefs.remove('Name');
                          // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) =>
                          //     admin_login()), (Route<dynamic> route) => false);
                        },
                      ),
                    ],

                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 80,
                                color: Theme.of(context).primaryColorDark,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset('images/logo.png',height:25,),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Powered by:   ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Titilliumweb',
                                            color: Colors.white.withOpacity(0.5),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: ()=>{
                                            //_launchInBrowser(_url)
                                          },
                                          child: Text(
                                            'DigiKraft Social',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Titilliumweb',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white.withOpacity(0.8),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )


          ),

        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              height: 70,
              child:Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi,Niraj Ganesh",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Have a nice day",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Icon(Icons.person),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              child:ListView(
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/5736566.jpg?alt=media&token=2665334c-cdbc-4d51-8375-4158c2ddbc96"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/food-menu-restaurant-facebook-cover-template_106176-275.jpg?alt=media&token=6c78bda2-3445-4281-9aed-c93f2fcc7ceb"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/5736566.jpg?alt=media&token=2665334c-cdbc-4d51-8375-4158c2ddbc96"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/food-menu-restaurant-facebook-cover-template_106176-275.jpg?alt=media&token=6c78bda2-3445-4281-9aed-c93f2fcc7ceb"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 45.0, right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 20,
                      )),
                ),
                Text("Explore Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 45.0),
                      child: Divider(
                        color: Colors.black,
                        height: 40,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    shrinkWrap:true,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: (1),
                    physics: NeverScrollableScrollPhysics(),
                    children:<Widget>[
                      Flexible(
                        child: Container(
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
                                        child: Image.asset('images/chicken_biryani3.jpg',height: 100,width:double.infinity,fit: BoxFit.cover),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Chicken Biryani",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
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
                                      child: Image.asset('images/chicken_biryani2.jpg',height: 100,width:double.infinity,fit: BoxFit.cover),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Chicken Biryani",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                                      child: Image.asset('images/chicken_birayani.jpg',height: 100,width:double.infinity,fit: BoxFit.cover),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Chicken Biryani",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                                      child: Image.asset('images/chicken_biryani4.jpg',height: 100,width:double.infinity,fit: BoxFit.cover),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Chicken Biryani",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 45.0, right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 20,
                      ),
                  ),
                ),
                Text("Product Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 45.0),
                      child: Divider(
                        color: Colors.black,
                        height: 40,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 1,
                    scrollDirection: Axis.vertical,
                    shrinkWrap:true,
                    mainAxisSpacing: 10,
                    childAspectRatio: (1),
                    physics: NeverScrollableScrollPhysics(),
                    children:<Widget>[
                      Flexible(
                        child: Container(
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
      )
    );
  }
}

