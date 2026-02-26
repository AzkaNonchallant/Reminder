import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder_fe/pages/login_pages.dart';
import 'package:reminder_fe/pages/register_pages.dart';
import 'package:reminder_fe/widget/stacked.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      header: Column(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
         
          Icon(Icons.timer, size: 80,color: Colors.white,),
          Text("Pabilu", style: TextStyle(fontSize: 40, color: Colors.white),),
          SizedBox(height: 20,),
          
          Text("Mengingatkan Kamu Yang Pelupa", style: TextStyle(fontSize: 20,color: Colors.white),),
          
        ],

      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome", style: GoogleFonts.poppins(fontSize: 40,color: Colors.black )),
          SizedBox(height: 20,),
          Text("Ayo Login Dulu", style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),),
          SizedBox(height: 20,), 
               Row(
                children: [
                    Expanded(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPages()));},style: ElevatedButton.styleFrom(backgroundColor: Colors.black,padding: EdgeInsets.symmetric(vertical: 16), shape: StadiumBorder()), child: Text("SignIn", style: TextStyle(color: Colors.white),)),),
              SizedBox(width: 10,),
              Expanded(child: OutlinedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));},style: OutlinedButton.styleFrom(backgroundColor: Colors.white, shape: StadiumBorder()), child: Text('SignUp', style: TextStyle(color: Colors.black),)))
                ]
              
               ) 

        ],
      ),
    );
  }
}