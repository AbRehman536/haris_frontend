import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.arrow_back)),
            SizedBox(height: 30,),
            Text("Login",style: GoogleFonts.inter(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color(0xff121212),
            ),),
            Text("Please enter the mobile number associated with your account."
              ,style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff949494),
              ),),
            TextField(
              decoration: InputDecoration(
                fillColor: Color(0xffEEF0F6),
                filled: true,
              //  prefixIcon: Image.asset("assets/images/pakistan.png"),
                hintText: "1278347340983"
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Send OTP")),
            ElevatedButton(onPressed: (){}, child: Column(
              children: [
                Text("Don’t have an account?"),
                Text("Create Account")
              ],
            ))
          ],
        ),
      ),
    );
  }
}
