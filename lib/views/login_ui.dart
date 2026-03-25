// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'signup_ui.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  InputDecoration _inputDecoration({
    required String hintText,
    required Widget prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 20),
      prefixIcon: prefixIcon,
      prefixIconConstraints: const BoxConstraints(minWidth: 56, minHeight: 56),
      suffixIcon: suffixIcon,
      suffixIconConstraints: const BoxConstraints(minWidth: 56, minHeight: 56),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.black26),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.black26),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.black54),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 35,
            bottom: 45,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Column(
              children: [
                //ส่วนปุ่มไอคอนย้อนกลับ
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
                //ส่วนรูปภาพ logo
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 210,
                    height: 180,
                    fit: BoxFit.contain,
                  ),
                ),
                //ส่วนข้อความ Welcome..., Make it....
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome Back,',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make it work, make it right, make it fast.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                //ส่วนป้อนอีเมล์
                const SizedBox(height: 24),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  decoration: _inputDecoration(
                    hintText: 'E-mail',
                    prefixIcon: const Icon(Icons.person_outline, color: Colors.grey, size: 22),
                  ),
                ),
                //ส่วนป้อนรหัสผ่าน
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  decoration: _inputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.fingerprint, color: Colors.grey, size: 22),
                    suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey, size: 22),
                  ),
                ),
                //ส่วนปุ่ม Forget...
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                //ส่วนปุ่ม Login
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.black,
                    elevation: 6,
                    shadowColor: Colors.black26,
                  ),
                ),
                //ส่วนข้อควา OR
                SizedBox(height: 20),
                Text(
                  'OR',
                ),
                //ส่วนปุ่ม Google
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: Colors.black26),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/googlelogo.png',
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                //ส่วนข้อความ Don't ... กับปุ่ม Sign Up
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupUi()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
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
