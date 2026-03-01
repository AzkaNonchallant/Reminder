import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder_fe/controller/auth_controller.dart';
import 'package:reminder_fe/pages/home_pages.dart';
import 'package:reminder_fe/pages/login_pages.dart';
import 'package:reminder_fe/widget/input_widget.dart';
import 'package:reminder_fe/widget/stacked.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
     header: Column(
      children: [
        Text(
          "Register ", 
          style: GoogleFonts.poppins(color: Color(0xFFF9F4DB,), fontSize: 60),
          ),
          SizedBox(height: 20,),
          Text("Register Untuk Mendapat Akses ke Dalam Aplikasi", style: GoogleFonts.poppins(fontSize: 15, color:Color(0xFFF9F4DB)),)
        ],
     ),

     child: Column(
       children: [
         InputWidget(
          hintText: 'Name',
          obscureText: false,
          controller: _nameController,
         ),

         SizedBox(height: 10,),

         InputWidget(
          hintText: "Username",
          obscureText: false,
          controller: _usernameController,
         ),

         SizedBox(height: 10,),

         InputWidget(
          hintText: "Email",
          obscureText: false,
          controller: _emailController,
         ),

         SizedBox(height: 10,),

         InputWidget(
          hintText: "Password",
          obscureText: true,
          controller: _passwordController,
         ),

         SizedBox(height: 10,),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shape: StadiumBorder()),
            onPressed: () async { bool success = await _authController.register(_nameController.text, _usernameController.text, _emailController.text, _passwordController.text); if(success) {Get.offAll(()=>HomePages());} else{Get.snackbar("error", "Credential salah");}},
            child: Text('Sign In', style: TextStyle(color: Colors.white),)
            ),
        ),  
        SizedBox(height: 10,),

        Text("Already Have an Account?"),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPages()));}, child: Text("Login", style: TextStyle(color: Color(0xFF6EB5A5)),))            




       ],
     ),
    );
  }
}