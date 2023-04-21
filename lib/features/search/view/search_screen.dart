// ignore_for_file: prefer_final_locals

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_text_field.dart';
import 'package:schedule/features/search/widgets/organization_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> items = ['По рейтингу', 'По новизне', 'По алфавиту'];
  final List<OrganizationMock> organizations = [
    OrganizationMock(
      'IITU',
      'Almaty',
      'Manasa 147B',
      'https://adaldyq.kz/assets/images/univerimg/univer_4.jpg',
    ),
    OrganizationMock(
      'SDU',
      'Almaty',
      'Manasa 147B',
      'https://epicur.education/wp-content/uploads/2022/02/SDU7-1024x601.jpg',
    ),
    OrganizationMock(
      'AITU',
      'Almaty',
      'Manasa 147B',
      'https://tengrinews.kz/userdata/news/2021/news_441947/thumb_m/photo_366440.jpeg',
    ),
    OrganizationMock(
      'ATU',
      'Almaty',
      'Manasa 147B',
      'https://atu.edu.kz/old-version/wp-content/uploads/2021/11/1-1.png',
    ),
    OrganizationMock(
      'AlmaU',
      'Almaty',
      'Manasa 147B',
      'https://www.almau.edu.kz/images/uploads/193030cd57f9e147abd3abde61ece97f.png',
    ),
    OrganizationMock(
      'KNPU Abai',
      'Almaty',
      'Manasa 147B',
      'https://smapse.ru/storage/2018/10/converted/825_585_eb6404ce33e116387549f5c1a3670a65.jpg',
    ),
  ];

  List<OrganizationMock> _foundOrganizations = [];
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.kPrimary,
      ),
    );
    _foundOrganizations = organizations;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String? selectedItem;

  void _search(String enteredKeyword) {
    List<OrganizationMock> results = [];
    if (enteredKeyword.isEmpty) {
      results = organizations;
    } else {
      results = organizations
          .where(
            (organization) => organization.orgName.toLowerCase().contains(enteredKeyword.toLowerCase()),
          )
          .toList();
    }
    setState(() {
      _foundOrganizations = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              decoration: const BoxDecoration(color: AppColors.kPrimary),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      context.localized.search,
                      style: AppTextStyles.m24w600,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      onChanged: (value) {
                        _search(value);
                        setState(() {});
                      },
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.kGrey,
                        size: 20,
                      ),
                      label: Text(
                        context.localized.search,
                        style: AppTextStyles.m14w400,
                      ),
                      hintText: context.localized.enterYourPassword,
                      hintStyle: AppTextStyles.m14w400Grey,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0).copyWith(top: 5, bottom: 5),
              child: Text('${_foundOrganizations.length} results', style: AppTextStyles.m15w500),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: _foundOrganizations.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: OrganizationWidget(
                      isFavourite: false,
                      orgName: _foundOrganizations[index].orgName,
                      orgCity: _foundOrganizations[index].orgCity,
                      orgLocation: _foundOrganizations[index].orgLocation,
                      orgPhotoSrc: _foundOrganizations[index].orgPhotoSrc,
                      onFavTap: () {},
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

// void _runFilter(String enteredKeyword) {
//     final List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allUsers;
//     } else {
//       results = _allUsers
//           .where((user) =>
//           user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }
//   }
}

class OrganizationMock {
  final String orgName;
  final String orgCity;
  final String orgLocation;
  final String orgPhotoSrc;

  OrganizationMock(this.orgName, this.orgCity, this.orgLocation, this.orgPhotoSrc);
}
