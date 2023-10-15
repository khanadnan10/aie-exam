// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';
import 'dart:ui';

import 'package:exam_ui/features/ranking/widgets/highest_ranking_list.dart';
import 'package:flutter/material.dart';

import 'package:exam_ui/features/ranking/constants/constants.dart';
import 'package:exam_ui/features/ranking/data/ranking.dart';
import 'package:exam_ui/features/ranking/widgets/ranking_list.dart';
import 'package:exam_ui/features/ranking/widgets/winner_ranking_card.dart';
import 'package:exam_ui/utils/color.dart';

class Ranking extends StatelessWidget {
  const Ranking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Ranking',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: AppColor.kWhite,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () =>
              Navigator.pop(context), // navigating back to the previous page
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.amber,
          ),
        ),
      ),
      backgroundColor: AppColor.kPrimaryBlue,
      // Appbar ends here----------------------
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -70,
                      left: -120,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: topBackgroundCircleDimension, // 300.0
                        width: topBackgroundCircleDimension, // 300.0
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColor.kWhiteLinearGradient,
                          color: AppColor.kWhite.withOpacity(0.7),
                        ),
                      ),
                    ),
                    //bottom left container
                    Positioned(
                      bottom: -50,
                      left: -170,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: topBackgroundCircleDimension - 150.0, // 300.0
                        width: topBackgroundCircleDimension, // 300.0
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColor.kBlueLinearGradient,
                          color: AppColor.kWhite,
                        ),
                      ),
                    ),
                    //upper right container
                    Positioned(
                      top: -100,
                      right: -130,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: topBackgroundCircleDimension, // 300.0
                        width: topBackgroundCircleDimension, // 300.0
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColor.kWhiteLinearGradient,
                          color: AppColor.kWhite.withOpacity(0.4),
                        ),
                      ),
                    ),
                    //bottom right container
                    Positioned(
                      top: 70,
                      right: -150,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: topBackgroundCircleDimension, // 300.0
                        width: topBackgroundCircleDimension, // 300.0
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColor.kBlueLinearGradient,
                          color: AppColor.kWhite.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ],
                ),
                // Ranking placeholders--
                const Column(
                  children: [
                    SizedBox(height: kToolbarHeight * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Winner Avatar -----------
                        Flexible(
                          child: WinnerRankingCard(
                            name: 'Niharika',
                            isWinner: false,
                            rank: '1',
                            image: 'images/Rectangle 1179@2x.png',
                          ),
                        ),
                        Flexible(
                          child: WinnerRankingCard(
                            name: 'Niharika',
                            isWinner: true,
                            image: 'images/Rectangle 1179@2x.png',
                          ),
                        ),
                        Flexible(
                          child: WinnerRankingCard(
                            name: 'Niharika',
                            isWinner: false,
                            rank: '2',
                            image: 'images/Rectangle 1179@2x.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Upper ranking ends here =======================================
          // Body section ==================================================
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                color: AppColor.kYellow,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: [
                  for (int i = 0; i < rankingData.length; i++)
                    if (rankingData[i]['isWinner'] == 'yes')
                      HighestRankingList(
                        name: rankingData[i]['name'],
                        accuracy: rankingData[i]['accuracy'],
                        timeEffeciency: rankingData[i]['timeEfficiency'],
                        image: rankingData[i]['image'],
                        rank: rankingData[i]['rank'],
                        isLast: i != 1 ? false : i == rankingData.length - 1,
                      )
                    else
                      RankingList(
                        rank: rankingData[i]['rank'],
                        image: rankingData[i]['image'],
                        name: rankingData[i]['name'],
                        percent: rankingData[i]['percent'],
                        isLast: i == 0 ? false : i != rankingData.length - 1,
                      )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
