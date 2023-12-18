import 'package:books_app_v1/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              // SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/dashboard.svg'),
                  Text('E-Book',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.background)),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    // child: Icon(Icons.person, color: Colors.black,),
                    child: Text(
                      "MD",
                      style: TextStyle(color: primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
