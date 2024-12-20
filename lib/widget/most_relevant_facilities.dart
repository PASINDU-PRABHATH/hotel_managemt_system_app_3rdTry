import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem({super.key, required this.facilityName});

  final String facilityName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          facilityName,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
}
