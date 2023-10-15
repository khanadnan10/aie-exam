// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:exam_ui/utils/color.dart';

class RankingList extends StatelessWidget {
  final String rank;
  final String image;
  final String name;
  final String percent;
  final bool? isLast;
  const RankingList({
    Key? key,
    required this.rank,
    required this.image,
    required this.name,
    required this.percent,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: AppColor.kWhite,
                    ),
                  ),
                ],
              ),
              Text(
                '$percent%',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: AppColor.kWhite,
                ),
              ),
            ],
          ),
        ),
        isLast == true ? const Divider() : const SizedBox(),
      ],
    );
  }
}
