import 'package:booking_service_project/views/Category_Page/category_page.dart';
import 'package:booking_service_project/views/Home_Screen/components/custom_home_appBar.dart';
import 'package:booking_service_project/widgets/customAppBar.dart';
import 'package:booking_service_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class QuestionOne extends StatefulWidget {
  @override
  State<QuestionOne> createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  List<String> _list = ['1', '2', '3', 'more'];

  double start = 30;
  double end = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Column(
        children: [
          RangeSlider(
            // onChangeStart: (RangeValues value) {
            //   setState(() {
            //     start=value.start;
            //   });
            // },
            // onChangeEnd: (RangeValues value) {
            //   setState(() {
            //     end=value.end;
            //   });
            // },
            overlayColor: MaterialStateProperty.all(Colors.greenAccent),
            activeColor: Color(0xff264653),
            inactiveColor: Color(0xffE8E8E8),
            values: RangeValues(start, end),
            min: 10,
            max: 100,
            labels: RangeLabels(start.toString(), end.toString()),
            onChanged: (RangeValues value) {
              setState(() {
                start = value.start;
                end = value.end;
              });
            },
          ),
          SizedBox(height: 30,),
          CustomText(
            text: 'How many TV you need to install?',
            color: Color(0xff264653),
            textAlign: TextAlign.center,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 30,),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 150,
                    child: Card(
                      child: CustomText(
                        text: _list[index],
                        color: Color(0xff264653),
                        textAlign: TextAlign.center,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
