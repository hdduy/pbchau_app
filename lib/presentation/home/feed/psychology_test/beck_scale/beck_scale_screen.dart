import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phanboichau_app/data/questions/beck_scale_questions.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class BeckScaleScreen extends StatefulWidget {
  @override
  _BeckScaleScreenState createState() => _BeckScaleScreenState();
}

class _BeckScaleScreenState extends State<BeckScaleScreen> {
  final data = BeckScaleQuestions();
  bool completed = false;
  int under15 = 0;
  int currentQuestion = 1;
  int selectedAnswer;
  int points = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thang đo trầm cảm Beck'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF24C6DC),
                      Color(0xFF514A9D),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          completed
                              ? currentQuestion.toString()
                              : (currentQuestion - 1).toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '  / ${data.size} câu hỏi',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.only(left: 5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '$points điểm',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.white54,
                            valueColor: const AlwaysStoppedAnimation(
                              Colors.white,
                            ),
                            value: completed
                                ? 1
                                : (currentQuestion - 1) / data.size,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          completed
                              ? '100%'
                              : (currentQuestion - 1) / data.size == 1
                                  ? '100%'
                                  : (currentQuestion - 1) / data.size == 0
                                      ? '0%'
                                      : '${((currentQuestion - 1) / data.size * 100).toStringAsFixed(2)}%',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  data.content[currentQuestion - 1].question,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: completed
                        ? null
                        : () {
                            setState(() {
                              selectedAnswer = index;
                            });
                          },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color:
                          selectedAnswer == index ? Colors.black : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 20.0,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                data.content[currentQuestion - 1]
                                    .answers[index],
                                style: TextStyle(
                                  color: selectedAnswer == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: selectedAnswer == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              margin: const EdgeInsets.only(left: 5.0),
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '+${data.content[currentQuestion - 1].answersPoints[index]}',
                                style: TextStyle(
                                  color: selectedAnswer == index
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: data.content[currentQuestion - 1].answers.length,
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white70,
        padding: const EdgeInsets.all(10.0),
        child: RaisedButton.icon(
          color: Colors.black,
          onPressed: completed
              ? () => ExtendedNavigator.of(context).replace(
                    Routes.resultScreen,
                    arguments: ResultScreenArguments(
                      questionsAnswered: currentQuestion,
                      points: points,
                      description: points <= 14
                          ? 'Không biểu hiện trầm cảm.'
                          : points <= 19
                              ? 'Trầm cảm nhẹ\n(${under15 > points - under15 ? 'Trầm cảm nội sinh' : 'Trầm cảm tâm căn hay trầm cảm cơ thể'})'
                              : points <= 29
                                  ? 'Trầm cảm vừa\n(${under15 > points - under15 ? 'Trầm cảm nội sinh' : 'Trầm cảm tâm căn hay trầm cảm cơ thể'})'
                                  : 'Trầm cảm nặng\n(${under15 > points - under15 ? 'Trầm cảm nội sinh' : 'Trầm cảm tâm căn hay trầm cảm cơ thể'})',
                    ),
                  )
              : selectedAnswer != null
                  ? () {
                      setState(() {
                        points += data.content[currentQuestion - 1]
                            .answersPoints[selectedAnswer];
                        if (currentQuestion <= 14) {
                          under15 += data.content[currentQuestion - 1]
                              .answersPoints[selectedAnswer];
                        }
                        if (currentQuestion == data.size) {
                          completed = true;
                        } else {
                          selectedAnswer = null;
                          currentQuestion++;
                        }
                      });
                    }
                  : null,
          icon: completed
              ? const Icon(
                  Icons.my_library_books,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                ),
          label: Text(
            completed ? 'Xem kết quả' : 'Câu tiếp theo',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
