import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              controller: emailController,
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
              controller: passwordController,
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
              child: ElevatedButton(onPressed: (){
                if(emailController.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Email is empty"))
                  );
                  return;
                }
                if(passwordController.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password is empty"))
                  );
                  return;
                }
                if(passwordController.text.length < 8){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Password must be more than 8 digits"))
                  );
                  return;
                }
                showDialog(
                  barrierDismissible: false,
                    context: context,
                  builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Thank You!"),
                        content: Text("Login Successfully"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Back")),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Ok")),
                        ],
                      );

                  },
                    );
              },
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.blue,
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
                TextButton(onPressed: (){
                  showModalBottomSheet(
                    isDismissible: false,
                      context: context,
                    builder: (BuildContext context) {
                        return Container(
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      label: Text("Username"),
                                      hintText: "Abdullah Rehman",
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
                                TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      label: Text("Email"),
                                      hintText: "abdullah@gmail.com",
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
                                TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      label: Text("Password"),
                                      hintText: "**************",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)
                                          ),
                                          borderSide: BorderSide.none
                                      )
                                  ),
                                ),
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("Close"))
                              ],
                            ),
                          ),
                        );
                  },
                     );
                }, child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
