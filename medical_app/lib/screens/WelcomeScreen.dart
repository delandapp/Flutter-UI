import 'package:flutter/material.dart';
import 'package:medical_app/screens/LoginScreen.dart';
import 'package:medical_app/screens/RegisterScreen.dart';
import 'package:medical_app/screens/RootScreen.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Rootscreen(),
                    ),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset("assets/images/doctors.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Doctors Appointment",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Appoint yout doctor",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registerscreen(),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginscreen(),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
