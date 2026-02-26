import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.child, required this.header});

  final Widget child;
  final Widget? header;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFF6EB5A5),
            height: double.infinity,
            width: double.infinity,
             child: SafeArea(
    child: Padding(
      padding: EdgeInsets.only(top: 80),
      child: header,
    ),
  ),
          ),
           Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.55,
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xFFF9F4DB),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40)
              ),
            ),
            child: child,
          ),
        )
        ],
      ),
      
    );
  }
}