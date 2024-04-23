import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pinjam_controller.dart';

class PinjamView extends GetView<PinjamController> {
  const PinjamView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PinjamView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PinjamView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
