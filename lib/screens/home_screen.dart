import 'package:flutter/material.dart';
import 'package:shoppingapp/widgets/item_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    List<String> things = ["New Arrivals", "Clothes", "Furniture", "Machines"];
    List<String> images = [
      "https://shop.cleosfurniture.com/wp-content/uploads/2021/01/furniture-1024x474.jpg",
      "https://shop.cleosfurniture.com/wp-content/uploads/2021/01/furniture-1024x474.jpg",
      "https://shop.cleosfurniture.com/wp-content/uploads/2021/01/furniture-1024x474.jpg",
      "https://shop.cleosfurniture.com/wp-content/uploads/2021/01/furniture-1024x474.jpg"
    ];

    return Scaffold(
        backgroundColor: const Color(0xff1e1f28),
        appBar: AppBar(
            backgroundColor: const Color(0xff1e1f28),
            leading: const Icon(Icons.arrow_back),

            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: const Center(child: Text("Categories")),
            actions: const [Icon(Icons.search)]),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                //using card  not container
                color: Colors.red,
                height: height * 0.1,
                width: width,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("SALES",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                      Text(
                        "Up to 50% off",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Expanded(
                  child: ListView.builder(
                primary: false,
                shrinkWrap: false,
                itemBuilder: (context, index) {
                  return ItemWidget(image: images[index], title: things[index]);
                },
                itemCount: things.length,
              )),
            ],
          ),
        ));
  }
}
