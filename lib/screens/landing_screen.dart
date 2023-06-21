import 'package:curie/constants/colors.dart';
import 'package:curie/constants/fonts.dart';
import 'package:curie/constants/textstyles.dart';
import 'package:curie/widgets/custom_button.dart';
import 'package:curie/widgets/custom_header.dart';
import 'package:curie/widgets/custom_navigation_bar.dart';
import 'package:curie/widgets/knowledge_card.dart';
import 'package:curie/widgets/money_card.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late final PageController _pageController;
  int selectedTab = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: selectedTab);
    super.initState();
  }

  void changeTab(int value) {
    setState(() {
      selectedTab = value;
      _pageController.jumpToPage(
        selectedTab,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: height * 0.35,
                    decoration: const BoxDecoration(
                        color: ApplicationColors.scaffoldDark,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/rays.png"))),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomHeader(height: height),
                            MoneyCard(height: height),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 56.0, bottom: 36.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                      onTap: () {},
                                      key: const Key('setup-sip'),
                                      height: 64.0,
                                      child: Transform.translate(
                                        offset: const Offset(-12.0, 0.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/sip.png'),
                                            const SizedBox(width: 12.0),
                                            Text(
                                              'Setup SIP',
                                              style: TextStyles.buttonText
                                                  .copyWith(
                                                      fontSize: FontSize.S),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 24.0),
                                  Expanded(
                                    child: CustomButton(
                                      onTap: () {},
                                      key: const Key('linked-bank-accounts'),
                                      height: 64.0,
                                      child: Transform.translate(
                                        offset: const Offset(-12.0, 0.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/linked.png'),
                                            const SizedBox(width: 12.0),
                                            Flexible(
                                              child: Text(
                                                'Linked bank\nacccounts',
                                                overflow: TextOverflow.clip,
                                                style: TextStyles.buttonText
                                                    .copyWith(
                                                        fontSize: FontSize.S),
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
                            const Text(
                              'Curie\u2019s knowledge bank',
                              style: TextStyles.buttonText,
                            ),
                            const SizedBox(height: 24.0)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 180.0,
                        child: ListView.builder(
                            padding: const EdgeInsets.only(
                                left: 24.0, bottom: 24.0, right: 8.0),
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              String assetName =
                                  "assets/images/card${index + 1}.webp";
                              return KnowledgeCard(assetName: assetName);
                            }),
                      ),
                      const SizedBox(height: 32.0)
                    ],
                  ),
                ],
              ),
            ),
            const Center(child: Text('Transactions')),
            const Center(child: Text('Debit Card')),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        selectedTab: selectedTab,
        changeTab: changeTab,
      ),
    );
  }
}
