import 'package:bit_learns/Screen/home_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Bit());
}

class Bit extends StatelessWidget {
  const Bit({super.key});

  @override
  Widget build(BuildContext context) {
    //material app is a root app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Merriweather'),

      home: HomePage(),
    );
  }
}

//    stl --> stateless widget
//    stf --> statefull widget

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => HomeState();
// }

// class HomeState extends State<Home> {
//   bool isChangedShape = false;
//   int count = 1;
//   // Variable to store number value
//   // Used for displaying text multiple times
//   int numer = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //refernce web
//       // header --> appbar
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         leading: Icon(Icons.menu, color: Colors.white),
//         centerTitle: true,
//         title: Text(
//           'Discover',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               backgroundImage: NetworkImage(
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJy0QCeJDsQuC0Lq8bWrSzCY-JU6a0bI3Wwg&s",
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             spacing: 10,
//             children: [
//               Row(
//                 spacing: 10,
//                 children: [
//                   Text('Popular'),
//                   //for Spacing one is   ##sizebox and another is spacing provided in row widget
//                   Text('Featured'),
//                   // SizedBox(width: 10),
//                   Text('Most Visited'),
//                   Text('Europe'),
//                   Text('Asia'),
//                   Text('Popular'),
//                 ],
//               ),

//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,

//                 child: Row(
//                   children: [
//                     Container(
//                       height: 200,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/img.jpg'),
//                           fit: BoxFit.cover,
//                         ),

//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Container(
//                           height: 80,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.black.withValues(alpha: 0.3),
//                             borderRadius: BorderRadius.circular(20),
//                           ),

//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 8,
//                                   horizontal: 20,
//                                 ),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       'Northern Mountains',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 24,
//                                       ),
//                                     ),

//                                     Container(
//                                       width: 20,
//                                       height: 20,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: Icon(
//                                         Icons.favorite,
//                                         color: Colors.red,
//                                         size: 16,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),

//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.yellow,
//                                       size: 16,
//                                     ),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.yellow,
//                                       size: 16,
//                                     ),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.yellow,
//                                       size: 16,
//                                     ),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.yellow,
//                                       size: 16,
//                                     ),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.yellow,
//                                       size: 16,
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(
//                                       '4.5',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(width: 10),
//                     Container(
//                       height: 200,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/img.jpg'),
//                           fit: BoxFit.cover,
//                         ),
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Container(
//                           height: 80,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.black.withValues(alpha: 0.3),
//                             borderRadius: BorderRadius.circular(20),
//                           ),

//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                   vertical: 8,
//                                   horizontal: 20,
//                                 ),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       'Northern Mountains',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 24,
//                                       ),
//                                     ),

//                                     Container(
//                                       width: 20,
//                                       height: 20,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: Icon(
//                                         Icons.favorite,
//                                         color: Colors.red,
//                                         size: 16,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(width: 10),
//                     Container(
//                       height: 200,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/img.jpg'),
//                           fit: BoxFit.cover,
//                         ),
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Container(
//                           height: 80,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.black.withValues(alpha: 0.3),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // Container(height: 100, width: 100, color: Colors.red),
//               // // SizedBox(height: 10),
//               // Container(height: 100, width: 100,
//               // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
//               // color: Colors.green
//               // ),
//               // ),
//               // Container(height: 100,width: 100,
//               // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
//               // color: Colors.blue ),
//               // ),
//               // SizedBox(height: 100),
//               // SingleChildScrollView(
//               //   scrollDirection: Axis.horizontal,
//               //   child: Row(
//               //     spacing: 10,
//               //     children: [
//               //       for (int i = 0; i < count; i++)
//               //         Container(
//               //           height: 100,
//               //           width: 100,
//               //           decoration: BoxDecoration(
//               //             shape: isChangedShape
//               //                 ? BoxShape.rectangle
//               //                 : BoxShape.circle,
//               //             color: Colors.yellow,
//               //           ),
//               //         ),
//               //     ],
//               //   ),
//               // ),
//               // //Image.asset("assets/img.png", height: 200),
//               // // Image.asset("assets/img.jpg", height: 100),

//               // //for text
//               // Text("fsdf"),
//               // Icon(Icons.add),
//               // ElevatedButton(
//               //   onPressed: () {
//               //     setState(() {
//               //       isChangedShape = !isChangedShape;
//               //     });
//               //   },
//               //   child: Text("Change Shape"),
//               // ),
//               // Text(numer.toString()),
//               // OutlinedButton(
//               //   onPressed: () {
//               //     setState(() {
//               //       count++;
//               //     });
//               //   },
//               //   child: Text("Add Shape"),
//               // ),
//               // TextButton(
//               //   onPressed: () {
//               //     setState(() {
//               //       numer++;
//               //     });
//               //   },
//               //   child: Text("Text button"),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
