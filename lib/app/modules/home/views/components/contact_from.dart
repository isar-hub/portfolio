import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoil/app/modules/home/views/components/title_text.dart';

class ContactFrom extends StatelessWidget {
  const ContactFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(title: 'Contact Form'),
            const SizedBox(height: 20),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email address',
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email address',
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Subject',
              ),
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Your Message',
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: 1.5,
                    intensity: 0.8,
                    lightSource: LightSource.topLeft,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    color: const Color(0xFF2A2A2A), // Dark background color
                    shadowDarkColor: Colors.black,
                    shadowLightColor: Colors.grey[800],
                  ),
                  child: TextButton.icon(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(18)),
                    onPressed: () {
                      print("Tapped!");
                    },
                    icon: Icon(Icons.send),
                    label: Text('Send'),
                  ),
                )
                // child: ElevatedButton(
                //   onPressed: () {
                //
                //   },
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.yellow[700],
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 24,
                //       vertical: 12,
                //     ),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(8),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: const [
                //       Icon(Icons.send, size: 18, color: Colors.black87),
                //       SizedBox(width: 8),
                //       Text(
                //         'Send Message',
                //         style: TextStyle(
                //           color: Colors.black87,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
