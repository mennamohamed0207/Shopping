import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemWidget extends StatelessWidget {
  String title;
  String image;
  ItemWidget({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Card(
          color: Colors.black45, //mistake
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              flex: 2,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 175, 188, 204),
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            //

            Flexible(
              flex: 2,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            )
          ])),
    );
  }
}
