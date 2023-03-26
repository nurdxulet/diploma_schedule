import 'package:flutter/material.dart';
import 'package:schedule/core/resources/resources.dart';

class OrganizationWidget extends StatelessWidget {
  const OrganizationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(blurRadius: 15, spreadRadius: 2, color: Colors.grey.shade300),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              'https://unicen.americancouncils.org/wp-content/uploads/2019/09/800px-%D0%97%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5_%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D0%BE%D0%B3%D0%BE_%D0%A3%D0%BD%D0%B8%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D1%82%D0%B5%D1%82%D0%B0_%D0%98%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D1%85_%D0%A2%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D0%B9.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'International Information Technologies University',
                    style: AppTextStyles.m14w500,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(
                  Icons.bookmark_border_rounded,
                  size: 20,
                ),
                // Icon(
                //   Icons.bookmark_rounded,
                //   size: 20,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
