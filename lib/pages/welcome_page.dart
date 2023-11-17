import 'package:books_app_v1/components/my_button.dart';
import 'package:flutter/material.dart';

class MyWelcomePage extends StatelessWidget {
  const MyWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(width: 360, "assets/images/splash_icon2.png"),
                    SizedBox(height: 30),
                    Text(
                      'E - Book Store',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Here you can find best book for you and you can also read book and listens book',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                          ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'Disclaimer',
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                            'Publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum',
                            style: Theme.of(context).textTheme.labelSmall),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: PrimaryButton(
                btnName: 'CONTINUE',
                ontap: () {},
              )),
        ],
      ),
    );
  }
}
