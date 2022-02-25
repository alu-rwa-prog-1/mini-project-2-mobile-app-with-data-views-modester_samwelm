import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class ComputerScience extends StatelessWidget {
  List titles = [
    "Book1",
    "Book2",
    "Book3",
    "Book4",
    "Book5",
    "Book6",
    "Book7",
    "Book8"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                child: Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        12.0)), //add border radius here
                                child:
                                    Image.asset(''), //add image location here
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(titles[index],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10.0),
                              ],
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: FlatButton(
                            onPressed: () {},
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: const Text("Preview",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
