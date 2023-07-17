import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/avatar_image.widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({
    super.key,
    required this.name,
    required this.position,
    required this.avatar,
  });
  final String name;
  final String avatar;
  final String position;

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarImageWidget(
          avatar: widget.avatar,
          width: 135,
          height: 135,
        ),
        Text(
          widget.name,
          style: GoogleFonts.dancingScript(
            textStyle: const TextStyle(color: Colors.white, fontSize: 32.0),
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              widget.position,
              textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
              speed: const Duration(milliseconds: 300),
            ),
          ],
          totalRepeatCount: 1,
          pause: const Duration(milliseconds: 10000),
          displayFullTextOnTap: false,
          stopPauseOnTap: false,
        ),
      ],
    );
  }
}
