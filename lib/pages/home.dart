import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 31, 31, 39),
          child: ListView(
            children: const [
              ListTile(
                title: Text("Home", style: TextStyle(color: Colors.white)),
                leading: Icon(
                  Icons.home,
                  color: Colors.white70,
                ),
              ),
              ListTile(
                title: Text("About", style: TextStyle(color: Colors.white)),
                leading: Icon(
                  Icons.person,
                  color: Colors.white70,
                ),
              ),
              ListTile(
                title: Text("Contact", style: TextStyle(color: Colors.white)),
                leading: Icon(
                  Icons.phone,
                  color: Colors.white70,
                ),
              ),
              ListTile(
                title: Text("Rate us", style: TextStyle(color: Colors.white)),
                leading: Icon(
                  Icons.rate_review,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 31, 31, 39),
          title: const Text('Home Page'),
          // add a drawer
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Nitro 5",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, color: Colors.grey),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                    color: Color.fromARGB(255, 31, 31, 39),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Go full throttle with the Acer Nitro 5 gaming laptop in either 15 or 17-inch models – whether using it as a laptop for casual gaming or ranking up online.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    )),
              ),
              Card(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                          "https://i0.wp.com/laptopmedia.com/wp-content/uploads/2021/10/Nitro5-AN515-57-KSP1-Large-1.jpg?ssl=1",
                          fit: BoxFit.cover))),
              Card(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                          "https://static.acer.com/up/Resource/Acer/Laptops/Nitro_5/rev-jan-2022-intel/20211216/Nitro_5_AGW_KSP01.jpg",
                          fit: BoxFit.cover))),
              Card(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                          "https://static.acer.com/up/Resource/Acer/Laptops/Nitro_5/rev-jan-2022-intel/20211227/1/Nitro_5_AGW_KSP03.jpg",
                          fit: BoxFit.cover))),
            ],
          ),
        ),
      ),
    );
  }
}
