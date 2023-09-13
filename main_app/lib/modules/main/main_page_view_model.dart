import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:main_app/core/abstracts/app_view_model.dart';

@injectable
class MainPageViewModel extends AppViewModel {
  final int tabLength = 4;
  final int homeTabIndex = 0;
  final int peopleTabIndex = 1;
  final int clubTabIndex = 2;
  final int profileTabIndex = 3;

  MainPageViewModel();

  final _selectedIndex = 0.obs;

  late final TabController tabController;
  late final PageController pageController;

  bool get isHomeTabSelected => _selectedIndex.value == homeTabIndex;

  bool get isClubTabSelected => _selectedIndex.value == clubTabIndex;

  bool get peopleTabIndexSelected => _selectedIndex.value == peopleTabIndex;

  bool get isProfileTabSelected => _selectedIndex.value == profileTabIndex;

  void initTabController(
    TickerProviderStateMixin providerStateMixin,
  ) {
    pageController = PageController(initialPage: _selectedIndex.value);
    tabController = TabController(vsync: providerStateMixin, length: tabLength);
    tabController.addListener(() {
      _selectedIndex.value = tabController.index;
      pageController.jumpToPage(_selectedIndex.value);
    });
  }
}
