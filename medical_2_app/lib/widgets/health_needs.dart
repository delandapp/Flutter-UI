import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIconsHealthNeeds = [
      CustomIcon(
        title: "Appointment",
        pathImage: "assets/icons/appointment.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Hospital",
        pathImage: "assets/icons/hospital.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Covid-19",
        pathImage: "assets/icons/virus.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Pharmacy",
        pathImage: "assets/icons/drug.png",
        onTap: () {},
      ),
    ];
    List<CustomIcon> customIconsSpesialisCare = [
      CustomIcon(
        title: "Donor Darah",
        pathImage: "assets/icons/blood.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Heart Care",
        pathImage: "assets/icons/health_care.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Gigi",
        pathImage: "assets/icons/tooth.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Asuransi",
        pathImage: "assets/icons/insurance.png",
        onTap: () {},
      ),
    ];
    List<CustomIcon> customIcons = [
      CustomIcon(
        title: "Appointment",
        pathImage: "assets/icons/appointment.png",
        onTap: () {
          showModalBottomSheet(
            showDragHandle: true,
            backgroundColor: Colors.white,
            context: context,
            builder: (context) => Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Health Needs",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: customIconsHealthNeeds,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Health Needs",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: customIconsSpesialisCare,
                  )
                ],
              ),
            ),
          );
        },
      ),
      CustomIcon(
        title: "Hospital",
        pathImage: "assets/icons/hospital.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "Covid-19",
        pathImage: "assets/icons/virus.png",
        onTap: () {},
      ),
      CustomIcon(
        title: "More",
        pathImage: "assets/icons/more.png",
        onTap: () {},
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: customIcons,
    );
  }
}

class CustomIcon extends StatelessWidget {
  CustomIcon({
    super.key,
    required this.title,
    required this.pathImage,
    required this.onTap,
  });
  final String title;
  final String pathImage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(15.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1), shape: BoxShape.circle),
            child: Image.asset(
              pathImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
