import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerCupertinoExample extends StatefulWidget {
  const DatePickerCupertinoExample({super.key});

  @override
  _DatePickerCupertinoExampleState createState() =>
      _DatePickerCupertinoExampleState();
}

class _DatePickerCupertinoExampleState
    extends State<DatePickerCupertinoExample> {
  DateTime? selectedDate;

  void _showCupertinoDatePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => Container(
        height: 300,
        color: Colors.white,
        child: Column(
          children: [
            // Верхняя панель с кнопками
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  child: const Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoButton(
                  child: const Text("Done"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            // Сам DatePicker
            Expanded(
              child: CupertinoDatePicker(
                initialDateTime: selectedDate ?? DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                use24hFormat: true,
                onDateTimeChanged: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino DatePicker Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate != null
                  ? "Selected Date: ${selectedDate!.toLocal()}"
                  : "No Date Selected",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showCupertinoDatePicker(context),
              child: const Text("Select Date"),
            ),
          ],
        ),
      ),
    );
  }
}
