import 'package:curie/constants/colors.dart';
import 'package:curie/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar(
      {super.key, required this.selectedTab, required this.changeTab});

  final int selectedTab;
  final Function changeTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(48.0, 20.0, 48.0, 12.0),
            decoration: BoxDecoration(
              color: ApplicationColors.scaffoldDark,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0)),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.1),
                    spreadRadius: 0.0,
                    blurRadius: 5.0,
                    offset: const Offset(0, 2.5))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    changeTab(0);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: selectedTab == 0
                                ? Border.all(
                                    color: ApplicationColors.lightGrey,
                                    width: 1.0)
                                : Border.all(color: Colors.black, width: 2.0),
                            boxShadow: selectedTab == 0
                                ? []
                                : const [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0))
                                  ],
                            color: selectedTab == 0
                                ? ApplicationColors.black.withOpacity(0.5)
                                : ApplicationColors.grey),
                        child: Icon(
                          Icons.home_filled,
                          color: selectedTab == 0
                              ? ApplicationColors.primaryColorDark
                              : ApplicationColors.textGrey,
                          size: 24.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Home',
                        style: selectedTab == 0
                            ? const TextStyle(
                                fontSize: FontSize.S,
                                color: Colors.white,
                                fontWeight: Weight.normal)
                            : const TextStyle(
                                fontSize: FontSize.S,
                                color: ApplicationColors.textGrey,
                                fontWeight: Weight.light),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    changeTab(1);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: selectedTab == 1
                                ? Border.all(
                                    color: ApplicationColors.lightGrey,
                                    width: 1.0)
                                : Border.all(color: Colors.black, width: 2.0),
                            boxShadow: selectedTab == 1
                                ? []
                                : const [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0))
                                  ],
                            color: selectedTab == 1
                                ? ApplicationColors.black.withOpacity(0.5)
                                : ApplicationColors.grey),
                        child: Icon(
                          Icons.attach_money,
                          color: selectedTab == 1
                              ? ApplicationColors.primaryColorDark
                              : ApplicationColors.textGrey,
                          size: 24.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Transactions',
                        style: selectedTab == 1
                            ? const TextStyle(
                                fontSize: FontSize.S,
                                color: Colors.white,
                                fontWeight: Weight.normal)
                            : const TextStyle(
                                fontSize: FontSize.S,
                                color: ApplicationColors.textGrey,
                                fontWeight: Weight.light),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    changeTab(2);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: selectedTab == 2
                                ? Border.all(
                                    color: ApplicationColors.lightGrey,
                                    width: 1.0)
                                : Border.all(color: Colors.black, width: 2.0),
                            boxShadow: selectedTab == 2
                                ? []
                                : const [
                                    BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0))
                                  ],
                            color: selectedTab == 2
                                ? ApplicationColors.black.withOpacity(0.5)
                                : ApplicationColors.grey),
                        child: Icon(
                          Icons.credit_card,
                          color: selectedTab == 2
                              ? ApplicationColors.primaryColorDark
                              : ApplicationColors.textGrey,
                          size: 24.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Debit Card',
                        style: selectedTab == 2
                            ? const TextStyle(
                                fontSize: FontSize.S,
                                color: Colors.white,
                                fontWeight: Weight.normal)
                            : const TextStyle(
                                fontSize: FontSize.S,
                                color: ApplicationColors.textGrey,
                                fontWeight: Weight.light),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Container(
          height: MediaQuery.of(context).viewPadding.bottom,
          color: Colors.black,
        ),
      ],
    );
  }
}
