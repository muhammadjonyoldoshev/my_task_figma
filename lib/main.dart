import 'package:flutter/material.dart';
import 'package:my_task_figma/pages/grid_page.dart';
import 'package:my_task_figma/pages/home_pae.dart';
import 'package:my_task_figma/pages/search_page.dart';
import 'package:my_task_figma/pages/splash_page.dart';
import 'package:my_task_figma/pages/task_page.dart';
void main () {
  runApp(const MyTasks());
}
class MyTasks extends StatelessWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        SearchPage.id: (context) => const SearchPage(),
        GridPage.id: (context) => const GridPage(),
        TaskPage.id: (context) => const TaskPage(),
      },
    );
  }
}
