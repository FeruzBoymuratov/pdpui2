import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    "assets/images/image1.jpg",
    "assets/images/img.png",
    "assets/images/image1.jpg",
    "assets/images/img.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        title: const Text(
          "Apple Products", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 32,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.orange,
              ),
              child: const Center(
                child: Text(
                  "7", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage(
                        "assets/images/photo-1610945265064-0e34e5519bbf.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Center(
                    child: Text("Lifestyle sale",
                      style: TextStyle(color: Colors.white, fontSize: 37),),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text("Shop now"),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                children:
                  _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
    Widget cellOfList(String item){
      return Card(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(item),
               fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 35,),
            ],
          ),
        ),
      );
    }
}
