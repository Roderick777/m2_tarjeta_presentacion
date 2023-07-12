import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:m2_app_tarjeta_presentacion/models/profile.model.dart';
import 'package:m2_app_tarjeta_presentacion/pages/widgets/slide1.widget.dart';
import 'package:m2_app_tarjeta_presentacion/pages/widgets/slide2.widget.dart';
import 'package:m2_app_tarjeta_presentacion/providers/main.provider.dart';
import 'package:m2_app_tarjeta_presentacion/services/profile.service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<StatefulWidget> pages = [
    const Slide1Widget(),
    const Slide2Widget()
  ];

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    ProfileModel response = await ProfileService.getProfile();
    setMainProviderData(response: response);
  }

  setMainProviderData({required dynamic response}) {
    Provider.of<MainProvider>(context, listen: false).setProfileData(response);
    Provider.of<MainProvider>(context, listen: false).setLoading(false);
  }

  void setCurrentSlide(BuildContext c, int index) {
    Provider.of<MainProvider>(c, listen: false).setCurrentSlide(index);
  }

  @override
  Widget build(BuildContext context) {
    int currentSlide = Provider.of<MainProvider>(context).currentSlide;
    return Scaffold(
      extendBody: true,
      body: LiquidSwipe(
        pages: pages,
        slideIconWidget: currentSlide == 0
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
              )
            : (const SizedBox()),
        onPageChangeCallback: (int index) => setCurrentSlide(context, index),
      ),
    );
  }
}
