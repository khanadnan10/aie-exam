// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:exam_ui/utils/color.dart';

class HighestRankingList extends StatelessWidget {
  final String name;
  final String accuracy;
  final String timeEffeciency;
  final String image;
  final String rank;
  final bool? isLast;
  const HighestRankingList({
    Key? key,
    required this.name,
    required this.accuracy,
    required this.timeEffeciency,
    required this.image,
    required this.rank,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: AppColor.kPrimaryBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    rank,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: AppColor.kWhite,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: AppColor.kWhite,
                        ),
                      ),
                      const SizedBox(height: 18.0),
                      const Text(
                        'Accuracy',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          color: AppColor.kWhite,
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        '$accuracy%',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                          color: AppColor.kWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    '90%',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: AppColor.kWhite,
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  const Text(
                    'Time efficiency',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                      color: AppColor.kWhite,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    '$timeEffeciency%',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      color: AppColor.kWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        isLast == true ? const Divider() : const SizedBox(),
      ],
    );
  }
}
