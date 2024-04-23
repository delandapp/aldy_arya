import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:publiclibrary/app/components/book.dart';

import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.obx(
      (state) => Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xFF686868)),
        child: SafeArea(
          child: Stack(
            children: [
              const Positioned(
                top: 15,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Expanded(flex: 1, child: SizedBox()),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.87,
                  child: buildSection(
                    data: state!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
