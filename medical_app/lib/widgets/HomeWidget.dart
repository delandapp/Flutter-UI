import 'package:flutter/material.dart';

class Homewidget extends StatelessWidget {
  Homewidget({super.key});
  List<String> services = [
    "Operasi",
    "Terapi Medis",
    "Konsultasi Dokter",
    "Lainnya"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello,Deland",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 6,
                          spreadRadius: 4),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Clinic Visit",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Make an appointment",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 6,
                          spreadRadius: 4),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Home Visit",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Make an appointment",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Services",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: services.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 6,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Text(
                        services[index],
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  );
                }),
          ),
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset("assets/images/doctor1.jpg"),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("Dr. John Doe",
                          style: TextStyle(fontSize: 20)),
                      const SizedBox(height: 2),
                      const Text(
                        "Dokter Umum",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
