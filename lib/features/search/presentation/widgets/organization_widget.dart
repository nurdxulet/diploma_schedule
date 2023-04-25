import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';

class OrganizationWidget extends StatelessWidget {
  final String orgName;
  final String orgCity;
  final String orgLocation;
  final String orgPhotoSrc;
  final bool isFavourite;
  final Function()? onFavTap;
  const OrganizationWidget({
    super.key,
    required this.isFavourite,
    required this.orgName,
    required this.orgCity,
    required this.orgLocation,
    required this.orgPhotoSrc,
    this.onFavTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(blurRadius: 15, spreadRadius: 2, color: Colors.grey.shade300),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  orgPhotoSrc,
                  fit: BoxFit.cover,
                  height: 160,
                  width: double.infinity,
                ),
              ),
              Positioned(
                right: 16,
                top: 16,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: onFavTap,
                      child: isFavourite
                          ? const Icon(
                              Icons.bookmark_border_rounded,
                              size: 25,
                            )
                          : const Icon(
                              Icons.bookmark_rounded,
                              size: 25,
                              color: AppColors.kPrimary,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orgName,
                  style: AppTextStyles.m14w500,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.icCity.path,
                      height: 17,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      orgCity,
                      style: AppTextStyles.m14w500,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.icLocation.path,
                      height: 17,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      orgLocation,
                      style: AppTextStyles.m14w500,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
