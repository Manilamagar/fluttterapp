import 'package:flutter/material.dart';
import 'package:bit_learns/Screen/home_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          Column(
            children: [
              Text(
                "winter"
                "Vacation Trips",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Enjoy the winter vacation with warmth and amazing sightseeing on the Mountains."
                "Enjoy the best expriences with us.",
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Lets go!",
                        style: TextStyle(fontFamily: 'Merriweather'),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  //replace with your widgetgi
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
