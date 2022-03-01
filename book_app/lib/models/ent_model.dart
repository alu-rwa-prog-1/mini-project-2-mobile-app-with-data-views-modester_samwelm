import 'package:flutter/material.dart';

class Leadership_Books{
  String title;
  String description;
  String imageurl;
  String author;
  String edition;



  Leadership_Books(
    {
      required this.title,
      required this.description,
      required this.imageurl,
      required this.author,
      required this.edition
    }
  );
}

List<Leadership_Books> booklist =[
  Leadership_Books(
    title: 'Human Computer Interaction', 
    description: 
            '''Extensively revised and rewritten in light of recent advances, this best-selling text 
            is a comprehensive examination of human-computer interaction. The central focus of this exciting revision is the design of computer technology, 
           and how computer technology can be made more usable by people. It provides a multi-disciplinary approach to the subject through a synthesis of computer science,
           cognitive science, psychology, 
           and sociology, and stresses a principled approach to interactive systems design that fits a software engineering environment.''',
    imageurl: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRQPV3mKjnUXxIR4iYOv-m6Rdtr-rxo9IC69oeOqmXGFwvi47LN', 
    author: 'By Alan Dix & Janet Finlay',
    edition: ''),
  Leadership_Books(title: 'Book1', description: 'non', imageurl: 'ntarudi', author:'',edition: ''),
  Leadership_Books(title: 'Book1', description: 'non', imageurl: 'ntarudi', author: '', edition: ''),



];