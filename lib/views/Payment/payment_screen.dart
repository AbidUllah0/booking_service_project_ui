import 'package:booking_service_project/views/Bottom_NavBar/bottom_navbar.dart';
import 'package:booking_service_project/views/Payment/components/TimePickerScreen.dart';
import 'package:booking_service_project/views/Profile_Screen/profile_screen.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_button.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../Yard_work/yard_work.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  //Date Picker Method
  DateTime? _dateTime;

  Future getDate() async {
    DateTime? selectedDate = await showDatePicker(
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.red, // button text color
              ),
            ),
            colorScheme: ColorScheme.light(
              primary: Color(0xff279B90),
              onPrimary: Colors.white,
              surface: Colors.red,
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: Color(0xff279B90),
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2028),
    );
    if (selectedDate == null) {
      return;
    } else {
      setState(() {
        _dateTime = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomText(
              text: 'Select The Date',
              color: Colors.black,
              fontSize: 24,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                getDate();
              },
              child: Text('Select Date'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              //_date.toString(),
              _dateTime != null
                  ? 'The Date Is : ${_dateTime?.day} - ${_dateTime?.month} - ${_dateTime?.year}'
                  : 'Yet Not Selected',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TimePickerScreen(),
            SizedBox(
              height: 120.h,
            ),
            CustomButton(
              btnText: 'Confirm',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YardWork(),
                  ),
                );
              },
              btnColor: AppColors.splashbottomColor,
            ),
          ],
        ),
      ),
    );
  }
}
