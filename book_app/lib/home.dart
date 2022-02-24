import 'package:flutter/material.dart';

Widget categorySection = Container(
  padding: const EdgeInsets.symmetric(vertical: 10.0),
  height: 220.0,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Image.asset(
        'assets/images/image1.jpg',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Ym9va3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1495640452828-3df6795cf69b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1529473814998-077b4fec6770?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
    ],
  ),
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    'ALU Library is a collection of e-learning books, artricles, documentaries and resources at large that are freely accessible to the ALU community.'
    'Any member who has the ALU email can be able to access the library',
    softWrap: true,
    style: TextStyle(fontSize: 18),
  ),
);

Widget categoryOne = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    'Computer Science resources',
    softWrap: true,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);

Widget categoryTwo = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    'Internation Business and Trade resources',
    softWrap: true,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);

Widget categoryThree = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    'Entrepreneurship resources',
    softWrap: true,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);

Widget categoryFour = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    'Global challenges resources',
    softWrap: true,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
);

Widget compScienceCategory = TextButton(
  // Widget build(BuildContext context) {};
  style: TextButton.styleFrom(
    padding: const EdgeInsets.all(16.0),
    primary: Colors.black,
    textStyle: const TextStyle(fontSize: 20),
  ),
  onPressed: () {
    // BuildContext context;
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const Home()),
    // );
  },
  child: const Text('Computer Science resources'),
);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            //Add action for menu button
          },
        ),
        title: const Text("ALU Book Library"),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Add action for on pressed
              })
        ],
        backgroundColor: const Color(0xFF083663),
      ),
      body: ListView(
        children: [
          textSection,
          compScienceCategory,
          categorySection,
          categoryTwo,
          categorySection,
          categoryThree,
          categorySection,
          categoryFour,
          categorySection,
          categoryFour,
          categorySection,
        ],
      ),
    );
  }
}
