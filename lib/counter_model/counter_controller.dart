import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  @override
  void onInit() {
    super.onInit();
    loadCounter();
  }

  incrementCounter() {
    counter++;
    print(counter);
    saveCounter();
  }

  decrementCounter() {
    counter--;
    print(counter);
    saveCounter();
  }

  void saveCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', counter.value);
  }

  void loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counter.value = prefs.getInt('counter') ?? 0;
  }
}
