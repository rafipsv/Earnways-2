import 'package:earn_store/Statics/paths.dart';
import 'package:earn_store/Views/Common%20Widgets/glass_morphism_card.dart';
import 'package:earn_store/Views/Styles/textstyles.dart';
import 'package:earn_store/Views/Styles/title_text2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeExtraCategory extends StatelessWidget {
  const HomeExtraCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        const TitleText2(
          title: "Extra Category",
        ),
        SizedBox(
          height: 20.h,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              5,
              (index) => categoryBox(index: index),
            ),
          ),
        )
      ],
    );
  }

  Widget categoryBox({required int index}) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: GlassmorphismCard(
        boxHeight: 75.h,
        boxWidth: 80.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "${Paths.iconPath}fruits.png",
              height: 25.h,
              width: 25.w,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 5.h),
            SizedBox(
              width: 60.w,
              child: TextStyles.customText(
                title: "Drinks & Beverages",
                fontSize: 8.sp,
                isShowAll: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
