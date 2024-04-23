import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:publiclibrary/app/components/myAppBar.dart';
import 'package:publiclibrary/app/components/myButton.dart';
import 'package:publiclibrary/app/components/myInput.dart';
import 'package:publiclibrary/app/components/myJarak.dart';
import 'package:publiclibrary/app/data/constans/constans.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:publiclibrary/app/routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final widthFullBody = MediaQuery.of(context).size.width;
    final myAppBar = MyAppBar(widthFullBody: widthFullBody, title: "");
    final heightFullBody = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom - myAppBar.height;
    return Scaffold(
        appBar: myAppBar,
        body: Form(
          key: controller.formKey,
          child: Container(
            color: kPrimaryColor,
            width: widthFullBody,
            height: heightFullBody,
            padding: EdgeInsets.symmetric(horizontal: widthFullBody * 0.1),
            child: Column(
              children: [
                const MyJarak(
                  flex: 4,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: widthFullBody * 0.3,
                ),
                const MyJarak(flex: 3),
                AutoSizeText(
                  "Register \nPERPUSTAKAAN",
                  minFontSize: 20,
                  maxFontSize: 27,
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter(fontWeight: FontWeight.w900)
                          .fontFamily,
                      color: kTextColor),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                const MyJarak(flex: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Email",
                      minFontSize: 17,
                      maxFontSize: 27,
                      style: TextStyle(
                          fontFamily:
                              GoogleFonts.inter(fontWeight: FontWeight.w700)
                                  .fontFamily,
                          color: kTextColor),
                      maxLines: 2,
                    ),
                    myInput(
                      controller: controller,
                      controllerField: controller.email,
                      hintText: "Email",
                      autoFocus: true,
                      validator: controller.validator,
                    )
                  ],
                ),
                const MyJarak(flex: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Username",
                      minFontSize: 17,
                      maxFontSize: 27,
                      style: TextStyle(
                          fontFamily:
                              GoogleFonts.inter(fontWeight: FontWeight.w700)
                                  .fontFamily,
                          color: kTextColor),
                      maxLines: 2,
                    ),
                    myInput(
                      controller: controller,
                      controllerField: controller.username,
                      hintText: "Username",
                      autoFocus: true,
                      validator: controller.validatorEmail,
                    )
                  ],
                ),
                const MyJarak(flex: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Password",
                      minFontSize: 17,
                      maxFontSize: 27,
                      style: TextStyle(
                          fontFamily:
                              GoogleFonts.inter(fontWeight: FontWeight.w700)
                                  .fontFamily,
                          color: kTextColor),
                      maxLines: 2,
                    ),
                    myInput(
                        controller: controller,
                        controllerField: controller.password,
                        hintText: "Password",
                        autoFocus: true,
                        isPassword: true,
                        validator: controller.validatorPassword)
                  ],
                ),
                const MyJarak(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      "You have An Account? ",
                      minFontSize: 12,
                      maxFontSize: 17,
                      style: TextStyle(
                          fontFamily:
                              GoogleFonts.inter(fontWeight: FontWeight.w500)
                                  .fontFamily,
                          color: kTextColor),
                      maxLines: 1,
                    ),
                    GestureDetector(
                      onTap: () => Get.offAllNamed(Routes.LOGIN),
                      child: AutoSizeText(
                        "Login",
                        minFontSize: 12,
                        maxFontSize: 17,
                        style: TextStyle(
                            fontFamily:
                                GoogleFonts.inter(fontWeight: FontWeight.w900)
                                    .fontFamily,
                            color: const Color(0xFFFFFFFF)),
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
                const MyJarak(flex: 2),
                MyButton(
                    widthFullBody: widthFullBody,
                    label: "Daftar",
                    width: widthFullBody * 0.4,
                    height: heightFullBody * 0.06,
                    onTap: () => controller.postRegister(),
                    controller: controller),
                const MyJarak(flex: 10)
              ],
            ),
          ),
        ));
  }
}
