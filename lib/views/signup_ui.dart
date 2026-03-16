import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 35,
            bottom: 45,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Column(
              children: [
                // Back Button
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 30,
                    ),
                  ),
                ),
                // Logo
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                // Welcome Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Get On Board!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create your profile to start your journey.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Full Name
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.amber,
                    ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(22),
                  ),
                ),
                SizedBox(height: 15),
                // Email
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.amber,
                    ),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(22),
                  ),
                ),
                SizedBox(height: 15),
                // Phone No
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_android_outlined,
                      color: Colors.amber,
                    ),
                    hintText: 'Phone No',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(22),
                  ),
                ),
                SizedBox(height: 15),
                // Password
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.fingerprint,
                      color: Colors.amber,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(22),
                  ),
                ),
                SizedBox(height: 25),
                // Signup Button
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text('OR'),
                SizedBox(height: 20),
                // Google Button
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                        width: 25,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 30),
                // Login Redirect
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
