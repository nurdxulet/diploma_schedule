import 'package:auto_route/auto_route.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/extension/extensions.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/gradient_text.dart';

// ignore: unused_element
const _tag = 'Base';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> with TickerProviderStateMixin {
  TabController? tabController;
  int? previousIndex;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBLoC, AppState>(
      builder: (context, appState) {
        return AutoTabsScaffold(
          extendBody: true,
          routes: const [
            HomeRoute(),
            // TempRoute(color: Colors.blue),
            // SearchRoute(),
            ChoiceRoute(),
            SettingsRoute(),
          ],
          backgroundColor: AppColors.kWhite,
          builder: (context, child, animation) {
            return SafeArea(bottom: false, child: child);
          },
          bottomNavigationBuilder: (_, tabsRouter) {
            return Builder(
              builder: (newContext) {
                return FlashyTabBar(
                  selectedIndex: tabController!.index,
                  onItemSelected: (index) => setState(() {
                    tabController!.index = index;
                    if (tabsRouter.activeIndex == index) {
                      tabsRouter.popTop();
                    } else {
                      tabsRouter.setActiveIndex(index);
                    }
                  }),
                  items: [
                    FlashyTabBarItem(
                      activeColor: AppColors.kPrimary,
                      icon: SvgPicture.asset(
                        Assets.icons.icHome.path,
                        height: 25,
                        colorFilter: const ColorFilter.mode(AppColors.kGrey, BlendMode.srcIn),
                      ),
                      title: Text(context.localized.home),
                    ),
                    FlashyTabBarItem(
                      activeColor: AppColors.kPrimary,
                      icon: SvgPicture.asset(
                        Assets.icons.icSearch.path,
                        height: 30,
                        colorFilter: const ColorFilter.mode(AppColors.kGrey, BlendMode.srcIn),
                      ),
                      title: Text(context.localized.search),
                    ),
                    FlashyTabBarItem(
                      activeColor: AppColors.kPrimary,
                      icon: SvgPicture.asset(
                        Assets.icons.icSettings.path,
                        height: 25,
                        colorFilter: const ColorFilter.mode(AppColors.kGrey, BlendMode.srcIn),
                      ),
                      title: Text(context.localized.settings),
                    ),
                  ],
                );
                // return SizedBox(
                //   height: 100,
                //   child: CurvedNavigationBar(
                //     onTap: (value) {
                //       if (tabsRouter.activeIndex == value) {
                //         tabsRouter.popTop();
                //       } else {
                //         tabsRouter.setActiveIndex(value);
                //       }
                //     },
                //     backgroundColor: AppColors.kPrimary,
                //     items: [
                //       SvgPicture.asset(
                //         Assets.icons.icHome.path,
                //         height: 20,
                //       ),
                //       SvgPicture.asset(
                //         Assets.icons.icSearch.path,
                //         height: 20,
                //       ),
                //       SvgPicture.asset(
                //         Assets.icons.icSettings.path,
                //         height: 20,
                //       ),
                //     ],
                //   ),
                // );
              },
            );
          },
        );
      },
    );
  }
}

class CustomTabWidget extends StatelessWidget {
  final String icon;
  final String activeIcon;
  final String title;
  final int currentIndex;
  final int tabIndex;
  const CustomTabWidget({
    super.key,
    required this.icon,
    required this.activeIcon,
    required this.title,
    required this.currentIndex,
    required this.tabIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Tab(
        iconMargin: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: SvgPicture.asset(
                tabIndex == currentIndex ? activeIcon : icon,
                height: 20,
              ),
            ),
            if (tabIndex == currentIndex)
              GradientText(
                title,
                maxLines: 1,
                gradient: AppGradients.orangeButtonGradient,
                style: AppTextStyles.m10w600.copyWith(),
              ),
          ],
        ),
      ),
    );
  }
}

                // return Container(
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     // borderRadius: BorderRadius.circular(23),
                //     boxShadow: [
                //       BoxShadow(
                //         color: const Color.fromARGB(255, 194, 115, 41).withOpacity(0.42),
                //         blurRadius: 32,
                //         offset: const Offset(0, -5),
                //       ),
                //       BoxShadow(
                //         color: const Color(0xff5C469D).withOpacity(0.09),
                //         blurRadius: 32,
                //         offset: const Offset(0, 5),
                //       )
                //     ],
                //   ),
                //   child: Material(
                //     borderRadius: BorderRadius.circular(23),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(23),
                //       child: TabBar(
                //         onTap: (value) {
                //           if (tabsRouter.activeIndex == value) {
                //             tabsRouter.popTop();
                //           } else {
                //             tabsRouter.setActiveIndex(value);
                //           }
                //         },
                //         indicator: TopIndicator(),
                //         // splashBorderRadius: BorderRadius.circular(23),
                //         padding: const EdgeInsets.symmetric(horizontal: 19),
                //         controller: tabController,
                //         labelPadding: EdgeInsets.zero,
                //         tabs: [
                // CustomTabWidget(
                //             icon: Assets.icons.icHome.path,
                //             activeIcon: Assets.icons.icHome.path,
                //             title: context.localized.home,
                //             currentIndex: tabsRouter.activeIndex,
                //             tabIndex: 0,
                //           ),
                //           CustomTabWidget(
                //             icon: Assets.icons.icSearch.path,
                //             activeIcon: Assets.icons.icSearch.path,
                //             title: context.localized.search,
                //             currentIndex: tabsRouter.activeIndex,
                //             tabIndex: 1,
                //           ),
                //           CustomTabWidget(
                //             icon: Assets.icons.icSettings.path,
                //             activeIcon: Assets.icons.icSettings.path,
                //             title: context.localized.settings,
                //             currentIndex: tabsRouter.activeIndex,
                //             tabIndex: 2,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // );
