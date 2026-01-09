import 'package:bit_learns/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.lock),

                  suffixIcon: IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.visibility)),
                  border: OutlineInputBorder(),
                ),
              ),
              CustomButton(text: 'login'),
              onPressed: () {},
              backgroundColor : Color(0xFF7C6FFF),
              textStyle:TextStyle(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
