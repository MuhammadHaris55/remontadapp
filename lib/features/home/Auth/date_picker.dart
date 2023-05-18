import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  late DateTime _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.calendar_today), onPressed: () {},

              // onPressed: () => _selectDate(context),
            ),
            const SizedBox(height: 8),
            Text("hello"
                // _selectedDate != null
                //     ? 'Selected date: ${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}'
                //     : 'No date selected',
                ),
          ],
        ),
      ),
    );
  }
}
