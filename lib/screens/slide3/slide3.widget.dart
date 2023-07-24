import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:m2_app_tarjeta_presentacion/helpers/icon_filter.helper.dart';
import 'package:m2_app_tarjeta_presentacion/models/technology.model.dart';
import 'package:m2_app_tarjeta_presentacion/providers/main.provider.dart';
import 'package:provider/provider.dart';

class Slide3Widget extends StatefulWidget {
  const Slide3Widget({super.key});

  @override
  State<Slide3Widget> createState() => _Slide3WidgetState();
}

class _Slide3WidgetState extends State<Slide3Widget> {
  int _getColumns(BuildContext c) {
    Size size = MediaQuery.of(context).size;
    if (size.width > 1200) {
      return 5;
    } else if (size.width > 780) {
      return 4;
    } else if (size.width > 570) {
      return 3;
    } else if (size.width > 300) {
      return 2;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<TechnologyModel> techs = Provider.of<MainProvider>(context).techs;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal, Colors.amber],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Conocimientos',
                style: GoogleFonts.titilliumWeb(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 75,
              child: GridView.count(
                crossAxisCount: _getColumns(context),
                children: List.generate(
                  techs.length,
                  (int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  IconFilterHelper.getIcon(techs[index].icon),
                                  color: Colors.teal,
                                  size: 40,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  techs[index].name,
                                  style: GoogleFonts.titilliumWeb(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
