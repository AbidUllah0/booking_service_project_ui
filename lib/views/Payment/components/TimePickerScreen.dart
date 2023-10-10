import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';

class TimePickerScreen extends StatefulWidget {
  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  TimeOfDay? _timeOfDay;

  Future getTime() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime == null) {
      return null;
    } else {
      setState(() {
        _timeOfDay = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: 'Select Time',
          color: Colors.black,
          fontSize: 24,
        ),
        ElevatedButton(
          onPressed: () {
            getTime();
          },
          child: Text('Select the Date'),
        ),
        Text(
           _timeOfDay!=null ? ' ${_timeOfDay?.hour} - ${_timeOfDay?.minute}' : 'Time Not Select',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black
          ),
        ),
      ],
    );
  }
}
