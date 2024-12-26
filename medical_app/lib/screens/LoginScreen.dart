import 'package:flutter/material.dart';
import 'package:medical_app/screens/RegisterScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Image.asset("assets/images/doctors.png"),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.deepPurple)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.deepPurple)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.deepPurple)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.deepPurple)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 8),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Registerscreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
