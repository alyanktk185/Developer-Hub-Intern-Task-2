import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter++;
    print(counter);
  }

  decrementCounter() {
    counter--;
    print(counter);
  }
}
