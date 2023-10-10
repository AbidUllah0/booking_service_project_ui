import 'package:flutter/cupertino.dart';

class LoginViewTitleText extends StatelessWidget {
  const LoginViewTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: 'Pros',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 41,
                color: Color(0xff54D0BE),
              )),
          TextSpan(
            text: 'Ready',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 41,
            ),
          ),
        ],
      ),
    );
  }
}