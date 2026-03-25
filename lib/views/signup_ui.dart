import 'package:flutter/material.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  InputDecoration _inputDecoration({required String hintText, required Widget prefixIcon}) {
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
                    width: 190,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),
                // Welcome Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Get On Board!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create your profile to start your journey.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Full Name
                TextField(
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  decoration: _inputDecoration(
                    hintText: 'Full Name',
                    prefixIcon: const Icon(Icons.person_outline, color: Colors.grey, size: 22),
                  ),
                ),
                const SizedBox(height: 16),
                // Email
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  decoration: _inputDecoration(
                    hintText: 'E-mail',
                    prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey, size: 22),
                  ),
                ),
                const SizedBox(height: 16),
                // Phone No
                TextField(
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  decoration: _inputDecoration(
                    hintText: 'Phone No',
                    prefixIcon: const Icon(Icons.tag, color: Colors.grey, size: 22),
                  ),
                ),
                const SizedBox(height: 16),
                // Password
                TextField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  decoration: _inputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.fingerprint, color: Colors.grey, size: 22),
                  ),
                ),
                SizedBox(height: 25),
                // Signup Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.black,
                    elevation: 6,
                    shadowColor: Colors.black26,
                  ),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 20),
                Text('OR'),
                SizedBox(height: 20),
                // Google Button
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    side: BorderSide(color: Colors.black26),
                  ),
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
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    ],
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
                        'LOGIN',
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
