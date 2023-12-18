import 'package:books_app_v1/components/cat_data.dart';
import 'package:books_app_v1/components/home_appbar.dart';
import 'package:books_app_v1/components/home_categoery.dart';
import 'package:books_app_v1/components/home_searchbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.primary,
            height: 500,
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  HomeAppBar(),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text("Good Morning",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .background)),
                      Text("❤️Azmat",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .background)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                            "Time to read book and enhance your Knowledge",
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  HomeSearchBar(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Topics',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.background),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryData
                          .map(
                            (e) => HomeCategory(
                                iconPath: e['icon']!, labelName: e['lebel']!),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
