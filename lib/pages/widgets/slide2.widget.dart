import 'package:flutter/material.dart';
import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/pages/widgets/profile_skeleton.widget.dart';
import 'package:m2_app_tarjeta_presentacion/providers/main.provider.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/info_element.widget.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/profile.widget.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/qr.widget.dart';
import 'package:provider/provider.dart';

class Slide2Widget extends StatefulWidget {
  const Slide2Widget({super.key});
  @override
  State<Slide2Widget> createState() => _Slide2WidgetState();
}

class _Slide2WidgetState extends State<Slide2Widget> {
  @override
  Widget build(BuildContext context) {
    bool loading = Provider.of<MainProvider>(context).loading;
    ProfileModel profileData = Provider.of<MainProvider>(context).profileData;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.teal,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: Builder(
          builder: (BuildContext c) {
            int currentSlide = Provider.of<MainProvider>(context).currentSlide;

            if (loading || currentSlide == 0) {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ProfileSkeleton()],
                ),
              );
            } else {
              return Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 550,
                  child: ListView(
                    children: [
                      ProfileWidget(
                        avatar: profileData.avatar,
                        name: profileData.name,
                        position: profileData.position,
                      ),
                      const SizedBox(height: 30.0),
                      InfoElementWidget(
                        text: profileData.phone,
                        customIcon: Icons.phone,
                      ),
                      InfoElementWidget(
                        text: profileData.email,
                        customIcon: Icons.email,
                      ),
                      const SizedBox(height: 30.0),
                      const QrWidget(dataCode: 'https://github.com/Roderick777')
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
