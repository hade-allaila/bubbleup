import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.2),
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(
            image: AssetImage('assets/images/google.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
