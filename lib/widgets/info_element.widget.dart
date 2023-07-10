import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoElementWidget extends StatelessWidget {
  const InfoElementWidget({
    super.key,
    required this.text,
    required this.customIcon,
  });
  final String text;
  final IconData customIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),
        child: Stack(
          children: [
            const SizedBox(
              width: 180,
              height: 40,
              child: Padding(
                padding: EdgeInsets.only(left: 40),
              ),
            ),
            Positioned(
              left: 40,
              top: 9.5,
              child: Text(
                text,
                style: GoogleFonts.titilliumWeb(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 10,
              child: Icon(
                customIcon,
                size: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
