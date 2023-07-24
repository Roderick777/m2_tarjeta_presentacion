import 'package:flutter/material.dart';
import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/screens/slide2/widgets/profile_skeleton.widget.dart';
import 'package:m2_app_tarjeta_presentacion/providers/main.provider.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/info_element.widget.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/profile.widget.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/qr.widget.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/social.widget.dart';
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
    int currentSlide = Provider.of<MainProvider>(context).currentSlide;
    String qrData = Provider.of<MainProvider>(context).qrData;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.teal,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        child: (loading || currentSlide == 0)
            ? const Center(
                key: Key('loader'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ProfileSkeleton()],
                ),
              )
            : Center(
                key: const Key('view'),
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      const SizedBox(height: 30.0),
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
                      QrWidget(dataCode: qrData),
                      const SizedBox(height: 30.0),
                      const SocialWidget(),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
