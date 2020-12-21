import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final bool survey;
  final int questionsAnswered;
  final String description;
  final int points;
  final List<int> surveyPoints;

  const ResultScreen({
    Key key,
    this.survey = false,
    this.questionsAnswered,
    this.description,
    this.points = -1,
    this.surveyPoints,
  }) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    firestore.collection('public').doc('app_status').update(
      {
        'questions_taken': FieldValue.increment(1),
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Bạn đã hoàn thành\n${widget.questionsAnswered} câu hỏi',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                Image.asset('assets/icons/graduate.png'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.survey ? (widget.surveyPoints[0] + widget.surveyPoints[1] + widget.surveyPoints[2]) : widget.points} điểm',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '  / ${widget.questionsAnswered} câu hỏi',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.survey
                      ? '${widget.description} với môi trường học tập mới ở Trường THPT Phan Bội Châu'
                      : widget.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (widget.survey)
                  Column(
                    children: [
                      const Divider(),
                      const Text(
                        'Sự thích ứng về mặt học tập:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.surveyPoints[0] <= 10
                            ? 'Không thích ứng (${widget.surveyPoints[0]}đ)'
                            : widget.surveyPoints[0] <= 30
                                ? 'Ít thích ứng (${widget.surveyPoints[0]}đ)'
                                : widget.surveyPoints[0] <= 50
                                    ? 'Khá thích ứng (${widget.surveyPoints[0]}đ)'
                                    : 'Rất thích ứng (${widget.surveyPoints[0]}đ)',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Divider(),
                      const Text(
                        'Sự thích ứng về mặt xã hội:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.surveyPoints[1] <= 10
                            ? 'Không thích ứng (${widget.surveyPoints[1]}đ)'
                            : widget.surveyPoints[1] <= 30
                                ? 'Ít thích ứng (${widget.surveyPoints[1]}đ)'
                                : widget.surveyPoints[1] <= 50
                                    ? 'Khá thích ứng (${widget.surveyPoints[1]}đ)'
                                    : 'Rất thích ứng (${widget.surveyPoints[1]}đ)',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Divider(),
                      const Text(
                        'Sự thích ứng về mặt tình cảm:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.surveyPoints[2] <= 10
                            ? 'Không thích ứng (${widget.surveyPoints[2]}đ)'
                            : widget.surveyPoints[2] <= 25
                                ? 'Ít thích ứng (${widget.surveyPoints[2]}đ)'
                                : widget.surveyPoints[2] <= 35
                                    ? 'Khá thích ứng (${widget.surveyPoints[2]}đ)'
                                    : 'Rất thích ứng (${widget.surveyPoints[2]}đ)',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                const SizedBox(height: 150),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: RaisedButton(
          color: Colors.black,
          onPressed: () {
            ExtendedNavigator.of(context).popUntilRoot();
          },
          child: const Text(
            'Hoàn thành',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
