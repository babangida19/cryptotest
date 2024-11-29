import 'package:crypto_test/gen/assets.gen.dart';
import 'package:crypto_test/core/theme/app_color.dart';
import 'package:crypto_test/features/explore/explore_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainView extends HookWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    void onDestinationSelected(int index) {
      selectedIndex.value = index;
    }

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        height: 94.h,
        selectedIndex: selectedIndex.value,
        onDestinationSelected: onDestinationSelected,
        destinations: [
          NavigationDestination(
            icon: Assets.icons.iconExplore.svg(),
            label: "Explore",
          ),
          NavigationDestination(
            icon: Assets.icons.iconWallet.svg(),
            label: "Portfolio",
          ),
          NavigationDestination(
            icon: Assets.icons.iconPercent.svg(),
            label: "Earn",
          ),
          NavigationDestination(
            icon: Assets.icons.iconSpend.svg(),
            label: "Spend",
          ),
          NavigationDestination(
            icon: Assets.icons.iconConnect.svg(),
            label: "Connect",
          ),
        ],
      ),
      body: _buildPage(selectedIndex.value),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const ExploreView();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
      default:
        return const ExploreView();
    }
  }
}
