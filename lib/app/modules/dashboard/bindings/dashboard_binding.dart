import 'package:get/get.dart';
import 'package:publiclibrary/app/modules/book/controllers/book_controller.dart';
import 'package:publiclibrary/app/modules/history/controllers/history_controller.dart';
import 'package:publiclibrary/app/modules/home/controllers/home_controller.dart';
import 'package:publiclibrary/app/modules/profile/controllers/profile_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<BookController>(
      () => BookController(),
    );
    Get.lazyPut<HistoryController>(
      () => HistoryController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
