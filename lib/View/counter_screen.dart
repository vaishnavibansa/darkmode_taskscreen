import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../BLoc/counter_bloc.dart';
import '../Controller/counter_controller.dart';
import '../Model/counter_model.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // final CounterController _counterController = CounterController();

  @override
  void dispose() {
    // _counterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC with MVC Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterModel>(
              builder: (context, counterModel) {
                return Text(
                  'Counter: ${counterModel.counter}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}

