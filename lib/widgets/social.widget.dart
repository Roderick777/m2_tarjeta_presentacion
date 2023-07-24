import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:m2_app_tarjeta_presentacion/helpers/dialog.helper.dart';
import 'package:m2_app_tarjeta_presentacion/providers/main.provider.dart';
import 'package:provider/provider.dart';

class SocialWidget extends StatefulWidget {
  const SocialWidget({super.key});

  @override
  State<SocialWidget> createState() => _SocialWidgetState();
}

class _SocialWidgetState extends State<SocialWidget> {
  @override
  Widget build(BuildContext context) {
    MainProvider provider = Provider.of<MainProvider>(context, listen: false);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterSocialButton(
            onTap: () {
              provider.setQrData('https://github.com/Roderick777');
              DialogHelper().show(
                context: context,
                description: 'Mostrando QR de github',
                icon: FontAwesomeIcons.github,
              );
            },
            mini: true,
            buttonType: ButtonType.github,
          ),
          const SizedBox(width: 10),
          FlutterSocialButton(
            onTap: () {
              provider.setQrData('https://facebook.com');
              DialogHelper().show(
                context: context,
                description: 'Mostrando QR de facebook',
                icon: FontAwesomeIcons.facebook,
              );
            },
            mini: true,
            buttonType: ButtonType.facebook,
          ),
          const SizedBox(width: 10),
          FlutterSocialButton(
            onTap: () {
              provider.setQrData('https://web.whatsapp.com');
              DialogHelper().show(
                context: context,
                description: 'Mostrando QR de whatsapp',
                icon: FontAwesomeIcons.whatsapp,
              );
            },
            mini: true,
            buttonType: ButtonType.whatsapp,
          )
        ],
      ),
    );
  }
}
