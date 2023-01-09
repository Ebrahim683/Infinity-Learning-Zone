import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MCQPage extends StatefulWidget {
  const MCQPage({super.key});

  @override
  State<MCQPage> createState() => _MCQPageState();
}

class _MCQPageState extends State<MCQPage> {
  String valueOne = 'I';
  String valueTwo = 'II';
  String valueThree = 'III';
  String valueFour = 'IV';
  String mark = '√';
  String selectedAns = '';

  String question = 'What is the name of our country?';
  String ans1 = 'Bangladesh';
  String ans2 = 'Afghanistan';
  String ans3 = 'Pakistan';
  String ans4 = 'Italy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/hero.jpg'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
          child: Column(
            children: [
              SizedBox(height: 70.h),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Card(
                    color: Colors.white.withAlpha(0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            maxLines: 5,
                            question,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              //option 1
              InkWell(
                onTap: () {
                  setState(() {
                    valueOne = '√';
                    valueTwo = 'II';
                    valueThree = 'III';
                    valueFour = 'IV';
                    selectedAns = ans1;
                    log(selectedAns);
                  });
                },
                child: Card(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            valueOne,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            ans1,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              //option 2
              InkWell(
                onTap: () {
                  setState(() {
                    valueOne = 'I';
                    valueTwo = '√';
                    valueThree = 'III';
                    valueFour = 'IV';
                    selectedAns = ans2;
                    log(selectedAns);
                  });
                },
                child: Card(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            valueTwo,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            ans2,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              //option 3
              InkWell(
                onTap: () {
                  setState(() {
                    valueOne = 'I';
                    valueTwo = 'II';
                    valueThree = '√';
                    valueFour = 'IV';
                    selectedAns = ans3;
                    log(selectedAns);
                  });
                },
                child: Card(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            valueThree,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            ans3,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              //option 4
              InkWell(
                onTap: () {
                  setState(() {
                    valueOne = 'I';
                    valueTwo = 'II';
                    valueThree = 'III';
                    valueFour = '√';
                    selectedAns = ans4;
                    log(selectedAns);
                  });
                },
                child: Card(
                  color: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            valueFour,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            maxLines: 2,
                            ans4,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          log('submit');
        },
        label: const Text('Submit'),
        icon: const Icon(Icons.done),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
