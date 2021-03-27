import 'package:clean_architecture/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:clean_architecture/injection_container.dart' as di;
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: NumberTriviaPage(),
    );
  }
}
