import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/search/bloc/search_cubit.dart';
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
    // BlocProvider.of<SearchCubit>(context).getAllGroups();
    super.initState();
  }

  RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        state.whenOrNull(
          errorState: (message) => buildErrorCustomSnackBar(context, message),
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: CupertinoTextField(
                prefix: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(height: 40, width: 20, child: SvgPicture.asset(Assets.icons.icSearch.path)),
                ),
                decoration: BoxDecoration(color: AppColors.kGrey3, borderRadius: BorderRadius.circular(10)),
                placeholder: context.localized.search,
                controller: nameController,
                // onChanged: (enteredKeyword) {
                //   _search(enteredKeyword, groups);
                // },
              ),
            ),
            Expanded(
              child: state.maybeWhen(
                orElse: () => const SizedBox(),
                loadingState: () {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                  );
                },
                loadedGroupsState: (groups) {
                  return groups.isNotEmpty
                      ? ListView.builder(
                          padding: const EdgeInsets.only(top: 8),
                          itemCount: groups.length,
                          itemBuilder: (context, index) {
                            return ChoiceCardWidget(
                              index: index + 1,
                              text: groups[index].title,
                            );
                          },
                        )
                      : const Center(
                          child: Text(
                            'NO DATA',
                            style: AppTextStyles.m20w600,
                          ),
                        );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
