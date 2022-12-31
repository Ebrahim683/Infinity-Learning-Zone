import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinity_learning_zone/data/model/user/user_model.dart';

class DrawerHeaderWidget extends StatelessWidget {
  final UserModel userModel;
  const DrawerHeaderWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withAlpha(0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white.withOpacity(0.4),
                child: Image.asset(
                  userModel.profilePic.toString(),
                  height: 45.h,
                  width: 45.w,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  userModel.userName.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  userModel.email.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
