import 'package:flutter/material.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Month Picker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: TextButton(
          onPressed: () {
            final selectedDate = showMonthPicker(
              context: context,
              initialDate: DateTime.now(), // Today's date
              firstDate: DateTime(2000, 5), // Stating date : May 2000
              lastDate: DateTime(2050), // Ending date: Dec 2050
            );
          },
          child: const Text('Open Flutter Month Picker'),
        ),
      ),
    );
  }
}
