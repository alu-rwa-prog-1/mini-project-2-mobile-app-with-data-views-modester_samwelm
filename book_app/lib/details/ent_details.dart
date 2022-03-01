import 'dart:html';

import 'package:book_app/booklist/cs_booklist.dart';
import 'package:flutter/material.dart';
import 'package:book_app/models/ent_model.dart';

class leadership_bookdetails extends StatelessWidget {
  final Leadership_Books book;
  const leadership_bookdetails(this.book);
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(book.imageurl,
            height: 500,),
            Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              book.edition,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
            ),
            ),

             Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              book.author,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 22.0),
            ),
            ),

             Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              book.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 22.0),
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(6.0),
            child: 
            Column
              (children: <Widget>[
                ButtonTheme(
                  height: 5.0,
                  buttonColor: Color(0xFF083663),
                  child: RaisedButton(
                    onPressed: ()
                 {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  (computerscience()),
                        )
                      );
                    },
                 child: const Text('Read', 
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  
                  ),
                    ),
                ),
              ],
              ), 
            ), 
  
           ],
        )
      ),
      ),

    );

  }
}