import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.withOpacity(0.2),
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new_sharp),),
        title: Text("Login"),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text("Email"),
                hintText: "abdullah@gmail.com",
                prefixIcon: Icon(Icons.email),
                suffix: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                  borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  label: Text("Password"),
                  hintText: "************",
                  prefixIcon: Icon(Icons.lock),
                  suffix: Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      ),
                      borderSide: BorderSide.none
                  )
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                  , child: Text("Login")),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account?"),
                TextButton(onPressed: (){}, child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
