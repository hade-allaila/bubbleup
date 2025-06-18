import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizentalDivider extends StatelessWidget {
  const HorizentalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider()),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text("OR"),
          ),

          Expanded(child: Divider()),
        ],
      ),
    );
  }
}
