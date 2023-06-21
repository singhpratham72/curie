import 'package:curie/constants/colors.dart';
import 'package:flutter/material.dart';

class KnowledgeCard extends StatelessWidget {
  const KnowledgeCard({
    super.key,
    required this.assetName,
  });

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 120.0,
      decoration: BoxDecoration(
          color: ApplicationColors.fillWhite,
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(2.0, 2.0))
          ],
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(16.0),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(assetName))),
    );
  }
}
