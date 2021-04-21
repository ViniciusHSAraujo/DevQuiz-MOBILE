import 'package:devquiz/application/widgets/ScaffoldItems/app_bar.widget.dart';
import 'package:devquiz/application/widgets/buttons/level_button.widget.dart';
import 'package:devquiz/application/widgets/cards/quiz_card.widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(label: "Fácil"),
                SizedBox(
                  width: 5,
                ),
                LevelButtonWidget(label: "Médio"),
                SizedBox(
                  width: 5,
                ),
                LevelButtonWidget(label: "Difícil"),
                SizedBox(
                  width: 5,
                ),
                LevelButtonWidget(label: "Perito")
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
