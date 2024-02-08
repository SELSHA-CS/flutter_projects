import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Circle_Timer(),
    ),
  );
}

class Circle_Timer extends StatefulWidget {

  @override
  State<Circle_Timer> createState() => _Circle_TimerState();
}

class _Circle_TimerState extends State<Circle_Timer> {
  late CountDownController _controller;

  @override
  void initState() {
    _controller = CountDownController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularCountDownTimer(
              duration: 10,
              initialDuration: 0,
              controller: CountDownController(),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.purpleAccent[100]!,
              fillGradient: null,
              backgroundColor: Colors.purple[500],
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                  fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.S,
              isReverse: false,
              isReverseAnimation: false,
              isTimerTextShown: false,
              autoStart: true,
              onStart: () {
                  debugPrint('Countdown Started');
              },
              onComplete: () {
                  debugPrint('Countdown Ended');
              },
              onChange: (String timeStamp) {
                  debugPrint('Countdown Changed $timeStamp');
              },
              timeFormatterFunction: (defaultFormatterFunction, duration) {
                  if (duration.inSeconds == 0) {
                    return "Start";
                  } else {
                    return Function.apply(defaultFormatterFunction, [duration]);
                  }
              },
            ),            
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            _controller.start();
          }, child: Text("start countdown"))
        ],
      )
    );
  }
}