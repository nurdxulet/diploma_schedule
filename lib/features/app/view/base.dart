import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule/core/extension/src/build_context.dart';
import 'package:schedule/core/resources/assets.gen.dart';
import 'package:schedule/core/resources/resources.dart';
import 'package:schedule/features/app/bloc/app_bloc.dart';
import 'package:schedule/features/app/router/app_router.dart';
import 'package:schedule/features/app/widgets/gradient_text.dart';
import 'package:schedule/features/app/widgets/top_indicator.dart';

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
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBLoC, AppState>(
      builder: (context, appState) {
        return AutoTabsScaffold(
          extendBody: true,
          routes: [
            const HomeRoute(),
            // TempRoute(color: Colors.blue),
            const SearchRoute(),
            const SettingsRoute(),
          ],
          backgroundColor: AppColors.kWhite,
          builder: (context, child, animation) {
            return SafeArea(bottom: false, child: child);
          },
          bottomNavigationBuilder: (_, tabsRouter) {
            return Builder(
              builder: (newContext) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16).copyWith(bottom: 32),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 194, 115, 41).withOpacity(0.42),
                          blurRadius: 32,
                          offset: const Offset(0, -5),
                        ),
                        BoxShadow(
                          color: const Color(0xff5C469D).withOpacity(0.09),
                          blurRadius: 32,
                          offset: const Offset(0, 5),
                        )
                      ],
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(23),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(23),
                        child: TabBar(
                          onTap: (value) {
                            if (tabsRouter.activeIndex == value) {
                              tabsRouter.popTop();
                            } else {
                              tabsRouter.setActiveIndex(value);
                            }
                          },
                          indicator: TopIndicator(),
                          // splashBorderRadius: BorderRadius.circular(23),
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          controller: tabController,
                          labelPadding: EdgeInsets.zero,
                          tabs: [
                            CustomTabWidget(
                              icon: Assets.icons.icHome.path,
                              activeIcon: Assets.icons.icHome.path,
                              title: context.localized.home,
                              currentIndex: tabsRouter.activeIndex,
                              tabIndex: 0,
                            ),
                            CustomTabWidget(
                              icon: Assets.icons.icSearch.path,
                              activeIcon: Assets.icons.icSearch.path,
                              title: context.localized.search,
                              currentIndex: tabsRouter.activeIndex,
                              tabIndex: 1,
                            ),
                            CustomTabWidget(
                              icon: Assets.icons.icSettings.path,
                              activeIcon: Assets.icons.icSettings.path,
                              title: context.localized.settings,
                              currentIndex: tabsRouter.activeIndex,
                              tabIndex: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
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
