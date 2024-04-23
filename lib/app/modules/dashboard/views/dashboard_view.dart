import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:publiclibrary/app/modules/book/views/book_view.dart';
import 'package:publiclibrary/app/modules/history/views/history_view.dart';
import 'package:publiclibrary/app/modules/home/views/home_view.dart';
import 'package:publiclibrary/app/modules/profile/views/profile_view.dart';
import 'package:publiclibrary/app/components/customBarMaterial.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){ 
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
              child: SafeArea(
                child: Center(
                    child: IndexedStack(
                  index: controller.tabIndex,
                  children: const [
                    HomeView(),
                    BookView(),
                    HistoryView(),
                    ProfileView(),
                  ],
                )),
              ),
            ),
            bottomNavigationBar: CustomBottomBarMaterial(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
            ));
      },
    );
  }
}
