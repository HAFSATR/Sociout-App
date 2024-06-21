import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  final VoidCallback show;
   LoginScreen (this.show,{super.key});

  @override

  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F= FocusNode();
  final password = TextEditingController();
  FocusNode password_F= FocusNode();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: 96,height: 100,),
            Center(
              child: Image.asset('images/sociout name1.png'),
            ),
            SizedBox(height: 120),
            Textfield(email,Icons.email,'Email',email_F),
            SizedBox(height: 15),
            Textfield(password,Icons.lock,'Pasword',password_F),
            SizedBox(height: 10),
            Forgot(),
            SizedBox(height: 10),
           Login(),
            SizedBox(height: 10),
            Have(),
          ],
        ),
      ),
    );
  }

  Widget Have() {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Don't have account?",
                style: TextStyle(fontSize: 15,
                color: Colors.grey,
            ),
                ),
                GestureDetector(
                  onTap: widget.show,
                child: Text("Sign up",
                    style: TextStyle(fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                ),
                ),
    ),
              ],
            ),
          );
  }

  Widget Login() {
    return Padding(
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Container(
             alignment: Alignment.center,
             width: double.infinity,height: 44,
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Text('Log in',
               style: TextStyle(fontSize: 23,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ), ),

           ),
         );
  }

  Widget Forgot() {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Forgot your password?',
              style: TextStyle(fontSize: 16,
                color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            ),
          );
  }

  Widget Textfield(TextEditingController,IconData icon,String type,FocusNode focusNode) {
    var controller;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      
                child: TextField(
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    hintText: type,
                        prefixIcon: Icon(icon,color: focusNode.hasFocus? Colors.black:Colors.grey,),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                    ),
                ),
                            ),
              ),
    );
  }
}
