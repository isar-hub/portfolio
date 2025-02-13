import 'package:flutter/material.dart';
import 'package:portfoil/app/modules/home/views/components/ProfileAvatar.dart';
import 'package:portfoil/app/modules/home/views/components/skill_card.dart';
import 'package:portfoil/app/modules/home/views/list_tile/list_tile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../generated/assets.dart';

class ProfileCard extends StatelessWidget {
   ProfileCard({super.key});

   final List<String> socialMedia = [Assets.assetsLinkedin,Assets.assetsGithub,Assets.assetsGoogle,Assets.assetsMedium];
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size){
      if(size.isMobile){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(          ),
        );
      }
      else{
       return Card(
         child: Padding(
           padding: const EdgeInsets.all(30),
           child: Column(
             mainAxisSize: MainAxisSize.min, // ✅ Ensures proper height constraints
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               AvatarStatusWidget(avatarUrl: Assets.assetsProfileImg,isOnline: true,),
               SizedBox(height: 16),
               Text('Isar Ahmad',
                 style: Theme.of(context).textTheme.headlineLarge,
               ),
               SizedBox(height: 8),
               Container(decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 color: Colors.black,
               ),child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                 child: Text('Flutter Developer',style: Theme.of(context).textTheme.labelSmall,),
               ),),
               SizedBox(height: 18),
               Divider(color: Colors.grey,),
               SizedBox(height: 10),
               // SkillCard(title: 'Email', subtitle: 'isar786ahmad@gmail.com', iconSvg: Assets.assetsGithub),
               CustomListTile(title: 'Email', subtitle: 'isar786ahmad@gmail.com', icon: Icons.email_sharp),
               SizedBox(height: 10),

               CustomListTile(title: 'Phone', subtitle: '+91 6299550551', icon: Icons.phone_sharp),
               SizedBox(height: 10),

               CustomListTile(title: 'Location', subtitle: 'Kolkata, India', icon: Icons.location_city_sharp),
               SizedBox(height: 18),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: socialMedia.map((iconPath) => Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.asset(iconPath, width: 20, height: 20),
                 )).toList(),
               ),
               // Spacer()
             ],
           ),
         ),
       );
      }
    });
  }
}
