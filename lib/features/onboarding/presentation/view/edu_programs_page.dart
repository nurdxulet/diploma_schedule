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
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/onboarding/bloc/edu_programs_cubit.dart';
import 'package:schedule/features/onboarding/models/edu_program_dto.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class EduProgramsPage extends StatefulWidget with AutoRouteWrapper {
  const EduProgramsPage({super.key});

  @override
  State<EduProgramsPage> createState() => _EduProgramsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => EduProgramsCubit(context.repository.onboardingRepository),
      child: this,
    );
  }
}

class _EduProgramsPageState extends State<EduProgramsPage> {
  @override
  void initState() {
    BlocProvider.of<EduProgramsCubit>(context).getEduPrograms();
    super.initState();
  }

  TextEditingController searchController = TextEditingController();
  List<EduProgramDTO> _foundEduPrograms = [];

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: BlocConsumer<EduProgramsCubit, EduProgramsState>(
              listener: (context, state) {
                state.whenOrNull(
                  initialState: () {
                    context.loaderOverlay.hide();
                  },
                  loadingState: () {
                    context.loaderOverlay.show();
                  },
                  loadedState: (eduPrograms) async {
                    _foundEduPrograms = eduPrograms;
                    context.loaderOverlay.hide();
                    setState(() {});
                    // context.router.push(const EduCoursesRoute());
                    // context.router.push();
                    // context.appBloc.add(const AppEvent.logining());
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
                  loadedState: (eduPrograms) {
                    return Column(
                      children: [
                        Text(
                          context.localized.chooseEduProgram,
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
                              _search(enteredKeyword, eduPrograms);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: _foundEduPrograms.length,
                            itemBuilder: (context, index) {
                              return ChoiceCardWidget(
                                onCardTap: () {
                                  // context.router.push(EduCoursesRoute(educationalProgram: _foundEduPrograms[index]));
                                },
                                index: index + 1,
                                text: _foundEduPrograms[index].title,
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
      ),
    );
  }

  _search(String enteredKeyword, List<EduProgramDTO> eduPrograms) {
    final List<EduProgramDTO> results = [];
    for (final EduProgramDTO a in eduPrograms) {
      if (a.title != null && a.title!.toLowerCase().contains(enteredKeyword.toLowerCase())) {
        results.add(a);
      }
    }
    setState(() {
      _foundEduPrograms = results;
    });
  }
}
