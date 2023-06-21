import 'package:curie/constants/colors.dart';
import 'package:curie/constants/fonts.dart';
import 'package:curie/constants/textstyles.dart';
import 'package:curie/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  const MoneyCard({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
          color: ApplicationColors.fillWhite,
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(8.0, 8.0))
          ],
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(24.0)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ApplicationColors.primaryColor,
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(1.0, 1.0))
                    ],
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: const Text(
                    '₹',
                    style: TextStyles.h2,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text('52,503',
                    style: TextStyles.h1.copyWith(fontWeight: FontWeight.w900))
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('All time gains:'),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward_rounded,
                        size: 20.0,
                        color: ApplicationColors.textGreen,
                      ),
                      Text(
                        '₹2,503',
                        style: TextStyles.h3.copyWith(
                            fontSize: FontSize.L,
                            color: ApplicationColors.textGreen),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Past 1-year CAGR:'),
                  Row(
                    children: [
                      Text(
                        '8.5% ',
                        style: TextStyles.h3.copyWith(
                            fontSize: FontSize.L, color: Colors.black),
                      ),
                      const Icon(
                        Icons.info_outline_rounded,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, height * 0.035),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {},
                    key: const Key('add-money'),
                    height: 56.0,
                    color: ApplicationColors.green,
                    borderColor: Colors.white,
                    child: const Text(
                      'Add Money',
                      style: TextStyles.buttonText,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Expanded(
                  child: CustomButton(
                    onTap: () {},
                    key: const Key('scan-and-pay'),
                    height: 56.0,
                    child: const Text(
                      'Scan & Pay',
                      style: TextStyles.buttonText,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
