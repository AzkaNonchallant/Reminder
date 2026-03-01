import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder_fe/controller/auth_controller.dart';
import 'package:reminder_fe/pages/home_pages.dart';
import 'package:reminder_fe/pages/register_pages.dart';
import 'package:reminder_fe/widget/input_widget.dart';
import 'package:reminder_fe/widget/stacked.dart';

class LoginPages extends StatefulWidget {
   LoginPages({super.key});

 

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {

   final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthController _authenticationController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      header: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Login Pages", style:  GoogleFonts.poppins(fontSize: 60, color:Color(0xFFF9F4DB)), ),
          SizedBox(height: 20,),
          Text("Login Untuk Mendapat Akses ke Dalam Aplikasi", style: GoogleFonts.poppins(fontSize: 15, color:Color(0xFFF9F4DB)),)
        ],
      ),
      
      child: Column(
        children: [
          InputWidget(
            hintText: 'Username',
            obscureText: false,
            controller: _emailController,
          ),
          SizedBox(height: 20,),
          InputWidget(
            hintText: "Password",
            obscureText: true,
            controller: _passwordController,
          ),
          SizedBox(height: 20,),

          SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shape: StadiumBorder() ), onPressed: () async { bool success = await _authenticationController.login(_emailController.text, _passwordController.text); if(success) {Get.offAll(()=> HomePages());}else { Get.snackbar("error", "Login Gagal", snackPosition: SnackPosition.TOP);}}, child: Text("Sign In", style: TextStyle(color: Color(0xFFF9F4DB),)))),
          SizedBox(height: 20,),
          Text("Dont Have Account?"),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));}, child: Text("Sign Up", style: TextStyle(color: Color(0xFF6EB5A5)),))
        ],
        
      ),

      

      
      
     
    );
  }
}