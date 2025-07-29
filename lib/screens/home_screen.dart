import 'package:developerhub_task2/counter_model/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tap the buttons to change ',
            style: TextStyle(fontSize: 30, color: Colors.deepPurpleAccent),
          ),
          SizedBox(height: 20),
          Center(
            child: Obx(() {
              return Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 50, color: Colors.deepPurple),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.incrementCounter();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              controller.decrementCounter();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
