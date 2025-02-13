import 'package:flutter/material.dart';
import 'package:portfoil/app/modules/home/views/components/contact_from.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(24),
    child: Column(
        children: [
          Expanded(child: ContactFrom())

      ],
    ),);
  }
}
//22.5894°N 88.4748°E


