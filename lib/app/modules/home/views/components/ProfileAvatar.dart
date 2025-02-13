import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class AvatarStatusWidget extends StatelessWidget {
  final double size;
  final String? avatarUrl;
  final bool isOnline;
  final double statusIndicatorSize;
  final Color onlineColor;
  final Color offlineColor;
  final double borderRadius;
  final Color backgroundColor;

  const AvatarStatusWidget({
    Key? key,
    this.size = 150.0,
    this.avatarUrl,
    this.isOnline = false,
    this.statusIndicatorSize = 16.0,
    this.onlineColor = const    Color(0xFF00ff44),
    this.offlineColor = Colors.grey,
    this.borderRadius = 32.0,
    this.backgroundColor = const Color(0xFF2C2C2E),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        children: [
          // Avatar
          Center(
            child: avatarUrl != null
                ? Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(borderRadius),
                                child: Image.asset(
                  avatarUrl!,
                  width: size,
                  height: size,
                  fit: BoxFit.cover,
                                ),
                              ),
                )
                : Icon(
              Icons.person,
              size: size * 0.9,
              color: Colors.white54,
            ),
          ),
          // Status Indicator
          Positioned(
            bottom: 2,
            right: 2,
            child: AvatarGlow(
              glowColor: Colors.green,
              glowCount: 1,
              glowRadiusFactor: 1.2,
              child: Container(
                width: statusIndicatorSize,
                height: statusIndicatorSize,
                decoration: BoxDecoration(
                  color: isOnline ? onlineColor : offlineColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: backgroundColor,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
