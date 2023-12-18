import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCategory extends StatelessWidget {
  final String iconPath;
  final String labelName;
  const HomeCategory({super.key, required this.iconPath, required this.labelName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.background),
          child: Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 10),
              Text(labelName)
            ],
          ),
        ),
      ),
    );
  }
}
