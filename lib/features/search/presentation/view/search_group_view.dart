import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_text_field.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class GroupSearchView extends StatefulWidget {
  const GroupSearchView({super.key});

  @override
  State<GroupSearchView> createState() => _GroupSearchViewState();
}

class _GroupSearchViewState extends State<GroupSearchView> {
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<RatingCubit, RatingState>(
    //   listener: (context, state) {
    //     state.whenOrNull(
    //       errorState: (message) => buildErrorCustomSnackBar(context, message),
    //       // loadingState: () => LoaderOverlay,
    //     );
    //   },
    //   builder: (context, state) {
    //     return state.maybeWhen(
    //       orElse: () => const SizedBox(),
    //       loadedState: (ratingList) {
    //         return ratingList.isEmpty
    //             ? SmartRefresher(
    //                 controller: refreshController,
    //                 onRefresh: () {
    //                   BlocProvider.of<RatingCubit>(context).getRatingPublic();

    //                   HapticFeedback.vibrate();
    //                   refreshController.refreshCompleted();
    //                 },
    //                 child: Center(
    //                   child: Text(
    //                     context.localized.thereIsNoInformationYetShort,
    //                     style: AppTextStyles.m16w400,
    //                   ),
    //                 ),
    //               )
    //             : SmartRefresher(
    //                 controller: refreshController,
    //                 onRefresh: () {
    //                   BlocProvider.of<RatingCubit>(context).getRatingPublic();

    //                   HapticFeedback.vibrate();
    //                   refreshController.refreshCompleted();
    //                 },
    // child:
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: CustomTextField(
            borderColor: AppColors.kPrimary,
            borderWidth: 1,
            controller: nameController,
            label: Text(
              context.localized.search,
              style: AppTextStyles.m14w400,
            ),
            hintText: context.localized.search,
            hintStyle: AppTextStyles.m14w400Grey,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 8),
            itemCount: 6,
            itemBuilder: (context, index) {
              return ChoiceCardWidget(
                index: index + 1,
                text: 'Pupyrka',
              );
            },
          ),
        ),
      ],
    );
    //                 );
    //         },
    //       );
    //     },
    //   );
  }
}
