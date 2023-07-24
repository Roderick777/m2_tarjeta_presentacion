import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class DialogHelper {
  void show({
    required BuildContext context,
    required String description,
    String? title,
    IconData? icon = FontAwesomeIcons.circleInfo,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 150,
              child: AlertDialog(
                title: title != null && title.isNotEmpty
                    ? Text(title)
                    : const Text(
                        'Aviso',
                        style: TextStyle(fontSize: 20),
                      ),
                content: Row(
                  children: [
                    Text(description),
                    const SizedBox(width: 10),
                    FaIcon(icon, color: Colors.teal),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cerrar'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
