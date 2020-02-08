import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {}),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Sigma Tenant",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: Text("data"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            header(),
            body(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 2, 8),
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey[500],
                  offset: new Offset(0.0, 10.0),
                )
              ],
              image: new DecorationImage(
                image: new AssetImage('assets/images/JL-Logo-150.png'),
              )),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: "Search Your Location",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<String> _cities = [
    "Chennai",
    "Kota",
    "BLR",
    "Jaipur",
    "Patna",
    "Kanpur",
    "Noida",
    "Delhi",
    "Kochi",
    "Indore",
    "Bhopal",
    "Mysore",
    "Jodhpur",
    "Vizag",
    "HYD",
    "Pune",
  ];

  Widget body() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 8, 8),
                  child: Text(
                    "City",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _cities.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 35,
                            child: Text(
                              _cities[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
            // child: Text("data"),
          )
        ],
      ),
    );
  }
}
