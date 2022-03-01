import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:book_app/models/gc_model.dart';
import 'package:book_app/details/gc_details.dart';

class globalchallenges extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Challenges Books'),
        backgroundColor: Color(0xFF083663),
        ),
        body: ListView.builder(itemCount:booklist.length, itemBuilder: (context, index){
          Gc_Books cs_book = booklist[index];
          return Card(
            child: ListTile(
              title: Text(cs_book.title),
              subtitle: Text(cs_book.edition.toString(),),
              leading: Image.network(cs_book.imageurl),
             onTap: () {
               Navigator.push(
                 context, MaterialPageRoute(builder: (context) => gc_bookdetails(cs_book)));
             },

            )
          );
          
        }),

    );
  }
}