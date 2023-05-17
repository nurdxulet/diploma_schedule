import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/app/widgets/custom/custom_text_field.dart';
import 'package:schedule/features/search/bloc/search_schedule_cubit.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class GroupSearchView extends StatefulWidget
// with AutoRouteWrapper
{
  const GroupSearchView({super.key});

  @override
  State<GroupSearchView> createState() => _GroupSearchViewState();

  // @override
//   Widget wrappedRoute(BuildContext context) {
//     return BlocProvider<SearchDetailCubit>(
//       create: (context) =>
//           SearchDetailCubit(context.repository.searchRepository),
//       child: this,
//     );
//   }
}

class _GroupSearchViewState extends State<GroupSearchView> {
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // BlocProvider.of<SearchDetailCubit>(context).getGroupSchedule();
    super.initState();
  }

  RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<SearchDetailCubit, SearchDetailState>(
    //   listener: (context, state) {
    //     state.whenOrNull(
    //       errorState: (message) => buildErrorCustomSnackBar(context, message),
    //     );
    //   },
    //   builder: (context, state) {
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
    //     },
    //   );
  }
}
