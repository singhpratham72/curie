import 'package:curie/constants/colors.dart';
import 'package:curie/constants/fonts.dart';
import 'package:curie/constants/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 36.0,
                width: 36.0,
                decoration: BoxDecoration(
                    color: ApplicationColors.fillWhite,
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(2.0, 2.0))
                    ],
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(6.0),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/p.jpeg'))),
              ),
              const SizedBox(width: 8.0),
              RichText(
                text: TextSpan(
                    text: 'hey\n',
                    style: TextStyle(
                        fontSize: FontSize.S,
                        height: 1.2,
                        fontFamily: GoogleFonts.charm().fontFamily),
                    children: [
                      TextSpan(
                          text: 'John!',
                          style: TextStyles.h3.copyWith(
                              fontFamily: GoogleFonts.roboto().fontFamily))
                    ]),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Row(
              children: [
                Text(
                  '9876543210@curieyesbank',
                  style: TextStyles.smallText,
                ),
                const SizedBox(width: 4.0),
                Container(
                  height: 12.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
