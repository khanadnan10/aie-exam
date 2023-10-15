import 'package:exam_ui/utils/color.dart';
import 'package:flutter/material.dart';

class WinnerRankingCard extends StatelessWidget {
  final String name;
  final String? rank; // Provide rank if the use is not a winner
  final String image;
  final bool? isWinner; // Provide rank details if the use is not a winner
  const WinnerRankingCard({
    Key? key,
    required this.name,
    this.rank,
    required this.image,
    this.isWinner = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppColor.kWhiteLinearGradient,
            color: AppColor.kWhite.withOpacity(0.7),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: isWinner == true ? 50.0 : 30.0,
                backgroundImage: AssetImage(image),
              ),
              isWinner == true
                  ? const Positioned(
                      top: -45.0,
                      child: Image(
                        image: AssetImage(
                            'images/—Pngtree—mahkota emas dengan berlian merah_7152700 1.png'),
                      ),
                    )
                  : Positioned(
                      top: -40.0,
                      child: Text(
                        rank ?? '',
                        style: const TextStyle(
                          color: AppColor.kWhite,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: isWinner == true ? 16.0 : 12.0,
            fontWeight: FontWeight.w700,
            color: AppColor.kWhite,
          ),
        ),
      ],
    );
  }
}
