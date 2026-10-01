import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;

  const CategoryItem({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
