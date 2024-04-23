import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class navProfil extends StatelessWidget {
  const navProfil(
      {super.key,
      required this.title,
      required this.image,
      required this.icon,
      this.subtitle = ""});
  final String title;
  final String subtitle;
  final IconData icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xff09142E)),
        child: Image.asset(image),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily:
                GoogleFonts.poppins(fontWeight: FontWeight.w700).fontFamily),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontFamily:
                GoogleFonts.poppins(fontWeight: FontWeight.w700).fontFamily),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 213, 213, 213)),
        child: FaIcon(icon,color: Colors.black,),
      ),
    );
  }
}
