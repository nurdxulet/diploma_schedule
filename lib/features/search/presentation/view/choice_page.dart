import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/build_segment_widget.dart';
import 'package:schedule/features/app/widgets/custom/app_bar_with_title.dart';
import 'package:schedule/features/app/widgets/custom/custom_switch_button.dart';
import 'package:schedule/features/search/presentation/view/search_group_view.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({super.key});

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  int page = 0;
  final PageController pageController = PageController();

  //   void _search(String enteredKeyword) {
  //   List<OrganizationMock> results = [];
  //   if (enteredKeyword.isEmpty) {
  //     results = organizations;
  //   } else {
  //     results = organizations
  //         .where(
  //           (organization) => organization.orgName.toLowerCase().contains(enteredKeyword.toLowerCase()),
  //         )
  //         .toList();
  //   }
  //   setState(() {
  //     _foundOrganizations = results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWithTitle(
              title: context.localized.search,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.kGrey3,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: CustomSwitchButton<int>(
                  customSwitchButtonBorderRadius: 12,
                  // ignore: use_named_constants
                  overallPadding: const EdgeInsets.all(0),
                  groupValue: page,
                  thumbColor: AppColors.kPrimary,
                  backgroundColor: AppColors.kGrey3,
                  children: {
                    0: BuildSegmentWidget(
                      text: context.localized.myGroup,
                      isSelected: 0 == page,
                      isBordered: true,
                    ),
                    1: BuildSegmentWidget(
                      text: context.localized.subject,
                      isSelected: 1 == page,
                      isBordered: true,
                    ),
                    2: BuildSegmentWidget(
                      text: context.localized.myTeachers,
                      isSelected: 2 == page,
                      isBordered: true,
                    ),
                  },
                  onValueChanged: (int? value) {
                    setState(() {
                      page = value!;
                      pageController.animateToPage(
                        page,
                        duration: const Duration(microseconds: 3000),
                        curve: Curves.easeInBack,
                      );
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: PageView(
                // physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    page = value;
                  });
                },
                controller: pageController,
                children: const [
                  GroupSearchView(),

                  GroupSearchView(),

                  GroupSearchView(),
                  // LoginView(),
                  // RegisterView(),
                  // BlocProvider(
                  //   create: (context) => RatingCubit(context.repository.profileRepository),
                  //   child: const GeneralRatingView(),
                  // ),
                  // BlocProvider(
                  //   create: (context) => RatingCubit(context.repository.profileRepository),
                  //   child: const FriendsRatingView(),
                  // ),
                  // BlocProvider(
                  //   create: (context) => RatingCubit(context.repository.profileRepository),
                  //   child: const FriendsRatingView(),
                  // ),
                ],
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemBuilder: (context, index) {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
