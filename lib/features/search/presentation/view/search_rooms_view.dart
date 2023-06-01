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
import 'package:schedule/features/home/data/models/schedule_dto.dart';
import 'package:schedule/features/search/bloc/search_cubit.dart';
import 'package:schedule/features/search/presentation/widgets/choice_card_widget.dart';

class RoomSearchView extends StatefulWidget {
  const RoomSearchView({super.key});

  @override
  State<RoomSearchView> createState() => _RoomSearchViewState();
}

class _RoomSearchViewState extends State<RoomSearchView> {
  TextEditingController nameController = TextEditingController();

  List<RoomDTO> _foundRooms = [];

  @override
  void initState() {
    super.initState();
  }

  RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        state.whenOrNull(
          errorState: (message) => buildErrorCustomSnackBar(context, message),
          loadedRoomsState: (rooms) {
            _foundRooms = rooms;
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
          loadedRoomsState: (rooms) {
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
                      _search(enteredKeyword, rooms);
                    },
                  ),
                ),
                Expanded(
                  child: rooms.isNotEmpty
                      ? ListView.builder(
                          padding: const EdgeInsets.only(top: 8),
                          itemCount: _foundRooms.length,
                          itemBuilder: (context, index) {
                            return ChoiceCardWidget(
                              onCardTap: () {
                                context.router.push(ScheduleRoute(id: _foundRooms[index].id ?? '', searchType: 'ROOM'));
                              },
                              index: index + 1,
                              text: '${context.localized.room} ${_foundRooms[index].name}',
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
    );

    // return BlocConsumer<SearchCubit, SearchState>(
    //   listener: (context, state) {
    //     state.whenOrNull(
    //       errorState: (message) => buildErrorCustomSnackBar(context, message),
    //     );
    //   },
    //   builder: (context, state) {
    //     return Column(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //           child: CupertinoTextField(
    //             prefix: Padding(
    //               padding: const EdgeInsets.only(left: 10),
    //               child: SizedBox(height: 40, width: 20, child: SvgPicture.asset(Assets.icons.icSearch.path)),
    //             ),
    //             decoration: BoxDecoration(color: AppColors.kGrey3, borderRadius: BorderRadius.circular(10)),
    //             placeholder: context.localized.search,
    //             controller: nameController,
    //             // onChanged: (enteredKeyword) {
    //             //   _search(enteredKeyword, groups);
    //             // },
    //           ),
    //         ),
    //         Expanded(
    //           child: state.maybeWhen(
    //             orElse: () => const SizedBox(),
    //             loadingState: () {
    //               return const SliverToBoxAdapter(
    //                 child: Expanded(
    //                   child: CircularProgressIndicator(
    //                     color: Colors.blue,
    //                   ),
    //                 ),
    //               );
    //             },
    //             loadedRoomsState: (rooms) {
    //               return rooms.isNotEmpty
    //                   ? ListView.builder(
    //                       padding: const EdgeInsets.only(top: 8),
    //                       itemCount: rooms.length,
    //                       itemBuilder: (context, index) {
    //                         return ChoiceCardWidget(
    //                           index: index + 1,
    //                           text: '${context.localized.room} ${rooms[index].name}',
    //                         );
    //                       },
    //                     )
    //                   : const Center(
    //                       child: Text(
    //                         'NO DATA',
    //                         style: AppTextStyles.m20w600,
    //                       ),
    //                     );
    //             },
    //           ),
    //         ),
    //       ],
    //     );
    //   },
    // );
  }

  _search(String enteredKeyword, List<RoomDTO> rooms) {
    final List<RoomDTO> results = [];
    for (final RoomDTO a in rooms) {
      if (a.name != null && a.name!.toLowerCase().contains(enteredKeyword.toLowerCase())) {
        results.add(a);
      }
    }
    setState(() {
      _foundRooms = results;
    });
  }
}
