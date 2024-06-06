import 'package:flutter/material.dart';
import 'package:liveness_detection/liveness_detection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liveness Detection Plugin Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              bool isLive = await LivenessDetection.startLivenessCheck();
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Liveness Check'),
                  content: Text(isLive
                      ? 'Live person detected!'
                      : 'No live person detected.'),
                ),
              );
            },
            child: Text('Start Liveness Check'),
          ),
        ),
      ),
    );
  }
}
