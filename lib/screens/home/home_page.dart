// ignore_for_file: avoid_unnecessary_containers

import 'package:cpsu_midterm_1_2023_starter/widgets/categoryButton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710392';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white
            ),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 6
                  ),
                  child: Text(
                    'Question 1 of 30',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: CategoryButton2(
                      text3: 'What is capital of Thailand',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: CategoryButton(
                      text: 'A',
                      text2: 'Chiang Mai',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: CategoryButton(
                      text: 'B',
                      text2: 'Nakhon Pathom',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: CategoryButton(
                      text: 'C',
                      text2: 'Bangkok',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 8,
                    right: 8,
                    bottom: 28
                  ),
                  child: Expanded(
                    child: CategoryButton(
                      text: 'D',
                      text2: 'Nan',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(
      child: Row(
        children: [
          Expanded(
            child: CategoryButton3(
              text4: '<',
            ),
          ),
          Expanded(
            child: CategoryButton3(
              text4: '>',
            ),
          ),
        ],
      ),
    );
  }
}
