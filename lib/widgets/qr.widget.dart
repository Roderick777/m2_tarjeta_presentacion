import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrWidget extends StatelessWidget {
  const QrWidget({super.key, required this.dataCode});
  final String dataCode;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: QrImageView(
            data: dataCode,
            size: 150,
          ),
        ),
      ),
    );
  }
}
