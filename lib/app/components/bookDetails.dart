import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:publiclibrary/app/components/starRating.dart';
import 'package:publiclibrary/app/data/models/response_detailsbook.dart';

class MyBookDetails extends StatelessWidget {
  const MyBookDetails({super.key,required this.dataBookDetails});
  final DataBookDetails dataBookDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(image: NetworkImage(dataBookDetails.coverBuku.toString()),fit: BoxFit.fill)
            ),
          ),
          const SizedBox(height: 10),
          Text(dataBookDetails.judulBuku.toString(),style: TextStyle(fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w600).fontFamily,fontSize: 30),maxLines: 1,overflow: TextOverflow.ellipsis),
          StarRating(rating: dataBookDetails.rating!.toDouble(),starColor: Colors.green,),
          const SizedBox(height: 40),
          Text(dataBookDetails.deskripsi.toString(),style: TextStyle(fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w400).fontFamily,fontSize: 20),maxLines: 5,overflow: TextOverflow.ellipsis,textAlign: TextAlign.justify,),
        ]
      ),
    );
  }
}