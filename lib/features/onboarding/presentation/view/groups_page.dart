import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_buttons/custom_button.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/groups_cubit.dart';
import 'package:schedule/features/search/models/group_dto.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class GroupsPage extends StatefulWidget with AutoRouteWrapper {
  // final EduProgramDTO educationalProgram;
  // final CourseDTO course;
  const GroupsPage({
    super.key,
    // required this.educationalProgram,
    // required this.course
  });

  @override
  State<GroupsPage> createState() => _GroupsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GroupsCubit(context.repository.onboardingRepository),
        ),
        // BlocProvider(
        //   create: (context) => EduProgramCoursesCubit(context.repository.onboardingRepository),
        // ),
      ],
      child: this,
    );
  }
}

class _GroupsPageState extends State<GroupsPage> {
  List<GroupDTO> _foundGroups = [];
  List<GroupDTO> myGroups = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    BlocProvider.of<GroupsCubit>(context).getGroups();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: BlocConsumer<GroupsCubit, GroupsState>(
              listener: (context, state) {
                state.whenOrNull(
                  initialState: () {
                    context.loaderOverlay.hide();
                  },
                  loadingState: () {
                    context.loaderOverlay.show();
                  },
                  loadedState: (groups) async {
                    _foundGroups = groups;
                    context.loaderOverlay.hide();
                    setState(() {});
                    // context.router.push(const EduCoursesRoute());
                    // context.router.push();
                  },
                  errorState: (String message) {
                    context.loaderOverlay.hide();
                    buildErrorCustomSnackBar(context, message);
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loadedState: (groups) {
                    return Column(
                      children: [
                        Text(
                          context.localized.chooseGroup,
                          style: AppTextStyles.m15w600.copyWith(color: AppColors.kPrimary),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CupertinoTextField(
                            prefix: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                height: 40,
                                width: 20,
                                child: SvgPicture.asset(Assets.icons.icSearch.path),
                              ),
                            ),
                            decoration: BoxDecoration(color: AppColors.kGrey3, borderRadius: BorderRadius.circular(10)),
                            placeholder: context.localized.search,
                            controller: searchController,
                            onChanged: (enteredKeyword) {
                              _search(enteredKeyword, groups);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 50),
                            itemCount: _foundGroups.length,
                            itemBuilder: (context, index) {
                              return ChoiceCardWidget(
                                choosable: true,
                                isChoosed: myGroups.contains(_foundGroups[index]),
                                onCardTap: () {
                                  if (myGroups.contains(_foundGroups[index])) {
                                    myGroups.remove(_foundGroups[index]);
                                  } else {
                                    myGroups.add(_foundGroups[index]);
                                  }
                                  setState(() {});
                                },
                                index: index + 1,
                                text: _foundGroups[index].title,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: CustomButton(
                radius: 10,
                body: Text(
                  context.localized.ready,
                  style: AppTextStyles.m16w500.copyWith(color: AppColors.kScaffoldBack),
                ),
                onClick: () {
                  context.router.push(
                    UniInformationRoute(
                      groups: myGroups,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _search(String enteredKeyword, List<GroupDTO> groups) {
    final List<GroupDTO> results = [];
    for (final GroupDTO a in groups) {
      if (a.title != null && a.title!.toLowerCase().contains(enteredKeyword.toLowerCase())) {
        results.add(a);
      }
    }
    setState(() {
      _foundGroups = results;
    });
  }
}
