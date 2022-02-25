import 'package:flutter/material.dart';
import 'categories/computer_science.dart';

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

// Widget compScienceCategory = Container(
// );
@override
Widget compScienceCategory(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('First Route'),
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComputerScience()),
          );
        },
      ),
    ),
  );
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('First Route'),
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComputerScience()),
          );
        },
      ),
    ),
  );
}

// style: ButtonStyle(
//     foregroundColor:
//         MaterialStateProperty.all<Color>(const Color(0xFF083663)),
//     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//         RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             side: const BorderSide(color: Color(0xFF083663))))),
// onPressed: () {
//   ComputerScience();
// },
// child: const Text('Computer Science resources'),
// );

// style: ButtonStyle(
//   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//     RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(18.0),
//       side: BorderSide(color: Colors.red)
//     )
//   )
// )

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComputerScience()),
                );
              })
        ],
        backgroundColor: const Color(0xFF083663),
      ),
      body: ListView(
        // children: [
        //   textSection,
        //   categorySection,
        //   categoryTwo,
        //   categorySection,
        //   categoryThree,
        //   categorySection,
        //   categoryFour,
        //   categorySection,
        //   categoryFour,
        //   categorySection,
        // ],

        // padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>[
          textSection,
          Row(
            children: <Widget>[
              const Text(
                'Computer Science resources',
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              IconButton(
                  icon: const Icon(Icons.arrow_right),
                  onPressed: () {
                    // Add action for on pressed
                  })
            ],
          ),
          categorySection,
          Row(),
          Row(),
          const SizedBox(
            height: 60.0,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(fontSize: 20.0),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20.0),
                filled: true),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Column(
            children: <Widget>[
              ButtonTheme(
                height: 50,
                disabledColor: Colors.blueAccent,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  disabledElevation: 4.0,
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
