import 'package:flutter/material.dart';
import 'package:book_app/models/ent_model.dart';
import 'package:book_app/details/ent_details.dart';


class leadership extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrepreneurship resources'),
        backgroundColor: Color(0xFF083663),
        ),
        body: ListView.builder(itemCount:booklist.length, itemBuilder: (context, index){
          Leadership_Books book = booklist[index];
          return Card(
            child: ListTile(
              title: Text(book.title),
              subtitle: Text(book.edition),
              leading: Image.network(book.imageurl),
             onTap: () {
               Navigator.push(
                 context, MaterialPageRoute(builder: (context) => leadership_bookdetails(book)));
             },

            )
          );
          
        }),

    );
  }
}