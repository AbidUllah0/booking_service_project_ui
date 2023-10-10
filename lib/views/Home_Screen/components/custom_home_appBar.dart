import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
         padding: EdgeInsets.all(5),
          height: 39,
          width: 139,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
           color: Colors.white,
           boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 8, // Blur radius
              offset: Offset(-1, -1),
            )
           ],
           border: Border.all(
             color: Colors.grey,
           )
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/images/abid.png'),
              ),
              Text(
                'Welcome ! ABID',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.location_on),
            Text('Austin',style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w500,
              color: Color(0xff3B4051),
            ),),
          ],
        )
      ],
    );
  }
}
