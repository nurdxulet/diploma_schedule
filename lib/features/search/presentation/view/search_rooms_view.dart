import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/widgets/custom/custom_snackbars.dart';
import 'package:schedule/features/app/widgets/custom/custom_text_field.dart';
import 'package:schedule/features/search/bloc/search_cubit.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class RoomSearchView extends StatefulWidget {
  const RoomSearchView({super.key});

  @override
  State<RoomSearchView> createState() => _RoomSearchViewState();
}

class _RoomSearchViewState extends State<RoomSearchView> {
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // BlocProvider.of<SearchCubit>(context).getAllRooms();
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
                loadedRoomsState: (rooms) {
                  return rooms.isNotEmpty
                      ? ListView.builder(
                          padding: const EdgeInsets.only(top: 8),
                          itemCount: rooms.length,
                          itemBuilder: (context, index) {
                            return ChoiceCardWidget(
                              index: index + 1,
                              text: '${context.localized.room} ${rooms[index].name}',
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
