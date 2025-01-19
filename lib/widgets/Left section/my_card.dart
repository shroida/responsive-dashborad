import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: ShapeDecoration(
              color: const Color(0xff4eb7f2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesCardBackground))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42, top: 16),
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text('Shroida Walied',
                    style: AppStyles.styleMedium20(context)),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8216',
                      style: AppStyles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              )
            ],
          ),
        ));
  }
}
