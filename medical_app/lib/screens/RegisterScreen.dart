import 'package:flutter/material.dart';
import 'package:medical_app/screens/LoginScreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
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
                  prefixIcon: Icon(Icons.person),
                  label: Text("Full Name"),
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  label: Text("Phone Number"),
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
            const SizedBox(height: 15),
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
                          "Create Account",
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
                Text("Already have an account? "),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Loginscreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Login",
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
