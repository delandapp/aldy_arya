import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:publiclibrary/app/components/bookNew.dart';
import 'package:publiclibrary/app/components/bookRekomendasi.dart';
import 'package:publiclibrary/app/components/myInput.dart';
import 'package:publiclibrary/app/components/navProfil.dart';
import 'package:publiclibrary/app/data/constans/constans.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final heightFullBody =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final widthFullBody = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        width: widthFullBody,
        height: heightFullBody,
        // width: widthFullBody,
        child: controller.obx(
          (state) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                navProfil(
                  title: "Welcome",
                  image: "assets/images/profil.png",
                  icon: FontAwesomeIcons.bell,
                  subtitle: controller.username.value.toString(),
                ),
                SizedBox(
                  height: heightFullBody * 0.04,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: widthFullBody * 0.05),
                    child: myInput(
                      controller: controller,
                      controllerField: controller.search,
                      hintText: "Search for books",
                      autoFocus: true,
                      textAlign: TextAlign.center,
                      prefixIcon: FontAwesomeIcons.searchengin,
                    )),
                SizedBox(
                  height: heightFullBody * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Kategori",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily:
                              GoogleFonts.poppins(fontWeight: FontWeight.w400)
                                  .fontFamily,
                          fontSize: 17.0,
                          color: const Color(0XFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state!.state3![0].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![1].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![2].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![3].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![4].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![5].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![6].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![7].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              state.state3![8].namaKategori.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400)
                                    .fontFamily,
                                fontSize: 17.0,
                                color: const Color(0XFF000000),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: heightFullBody * 0.04,
                ),
                BookNew(dataBookNew: state.state1!),
                SizedBox(
                  height: heightFullBody * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Rekomendasi",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily:
                          GoogleFonts.poppins(fontWeight: FontWeight.w400)
                              .fontFamily,
                      fontSize: 17.0,
                      color: const Color(0XFFFFFFFF),
                    ),
                  ),
                ),
                BookRekomendasi(dataBookPopular: state.state2!)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
