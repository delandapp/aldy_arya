import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:publiclibrary/app/data/models/response_bookNew.dart';
import 'package:publiclibrary/app/routes/app_pages.dart';

class BookNew extends StatelessWidget {
  const BookNew({
    super.key,
    required this.dataBookNew,
  });

  final List<DataBookNew> dataBookNew;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Baru Datang",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w400)
                      .fontFamily,
                  fontSize: 17.0,
                  color: const Color(0XFFFFFFFF),
                ),
              ),
              GestureDetector(
                onTap: () => null,
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w400)
                        .fontFamily,
                    fontSize: 17.0,
                    color: const Color(0XFFFFFFFF),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.22,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: dataBookNew
                    .map((e) => SizedBox(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 20,
                                child: GestureDetector(
                                  onTap: () => Get.toNamed(Routes.DETAILBOOK,
                                      parameters: {
                                        "idbook": e.bukuID.toString()
                                      }),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              e.coverBuku.toString()),
                                          fit: BoxFit.fill),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(
                                              2, 5), // Atur posisi bayangan
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.28,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  e.judulBuku.toString(),
                                  style: TextStyle(
                                    height: 1.2,
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontSize: 12.0,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
