import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/search/bloc/search_cubit.dart';
import 'package:schedule/features/search/models/teacher_dto.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class TeacherSearchView extends StatefulWidget {
  const TeacherSearchView({super.key});

  @override
  State<TeacherSearchView> createState() => _TeacherSearchViewState();
}

class _TeacherSearchViewState extends State<TeacherSearchView> {
  TextEditingController nameController = TextEditingController();

  List<TeacherDTO> _foundTeachers = [];

  @override
  void initState() {
    // BlocProvider.of<SearchCubit>(context).getAllTeachers();
    super.initState();
  }

  RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          state.whenOrNull(
            errorState: (message) => buildErrorCustomSnackBar(context, message),
            loadingState: () {
              context.loaderOverlay.show();
            },
            loadedTeachersState: (teachers) {
              _foundTeachers = teachers;
              context.loaderOverlay.hide();
              setState(() {});
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loadingState: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            },
            loadedTeachersState: (techers) {
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
                      onChanged: (enteredKeyword) {
                        _search(enteredKeyword, techers);
                      },
                    ),
                  ),
                  Expanded(
                    child: techers.isNotEmpty
                        ? ListView.builder(
                            padding: const EdgeInsets.only(top: 8),
                            itemCount: techers.length,
                            itemBuilder: (context, index) {
                              return ChoiceCardWidget(
                                onCardTap: () {
                                  context.router.push(ScheduleRoute(id: techers[index].id, searchType: 'TEACHER'));
                                },
                                index: index + 1,
                                text:
                                    '${techers[index].firstName} ${techers[index].middleName} ${techers[index].lastName}',
                              );
                            },
                          )
                        : const Center(
                            child: Text(
                              'NO DATA',
                              style: AppTextStyles.m20w600,
                            ),
                          ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  _search(String enteredKeyword, List<TeacherDTO> eduPrograms) {
    final List<TeacherDTO> results = [];
    for (final TeacherDTO a in eduPrograms) {
      if (a.firstName != null && a.firstName!.toLowerCase().contains(enteredKeyword.toLowerCase())) {
        results.add(a);
      }
    }
    setState(() {
      _foundTeachers = results;
    });
  }
}
