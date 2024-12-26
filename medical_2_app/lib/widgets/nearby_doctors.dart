import 'package:flutter/material.dart';
import 'package:medical_2_app/models/doctor_model.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    List<DoctorModel> doctors = [
      DoctorModel(
        name: "Dr. Anisa Ramadani",
        speciality: "Spesialis Kanker",
        rating: 4.7,
        reviews: 195,
        image: "assets/images/doctor_1.jpg",
      ),
      DoctorModel(
        name: "Dr. Anisa Ramadani",
        speciality: "Spesialis Jatung",
        rating: 4.7,
        reviews: 195,
        image: "assets/images/doctor_2.jpg",
      ),
      DoctorModel(
        name: "Dr. Anisa Ramadani",
        speciality: "Spesialis Kelamin",
        rating: 4.7,
        reviews: 195,
        image: "assets/images/doctor_3.jpg",
      ),
      DoctorModel(
        name: "Dr. Anisa Ramadani",
        speciality: "Spesialis Bedah",
        rating: 4.7,
        reviews: 195,
        image: "assets/images/doctor_1.jpg",
      ),
      DoctorModel(
        name: "Dr. Anisa Ramadani",
        speciality: "Spesialis Lansia",
        rating: 4.7,
        reviews: 195,
        image: "assets/images/doctor_2.jpg",
      ),
      DoctorModel(
        name: "Dr. Anisa Ramadani",
        speciality: "Spesialis Paru-Paru",
        rating: 4.7,
        reviews: 195,
        image: "assets/images/doctor_3.jpg",
      ),
    ];
    return Column(
      children: List.generate(
        doctors.length,
        (index) => CardDoctor(doctorModel: doctors[index]),
      ),
    );
  }
}

class CardDoctor extends StatelessWidget {
  CardDoctor({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(doctorModel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorModel.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(doctorModel.speciality,
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    doctorModel.rating.toStringAsFixed(2),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(${doctorModel.reviews} Reviews)",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
