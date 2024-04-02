import 'package:flutter/material.dart';

class AppStyles {
  // static TextStyle labelTextStyle() => GoogleFonts.inter(
  //     fontSize: 14.sp, fontWeight: FontWeight.w500, color: kPrimaryColor);
  // static TextStyle appBarHeadingTextStyle() => GoogleFonts.inter(
  //     fontSize: 24.sp, fontWeight: FontWeight.w700, color: kBlackColor);
  // static BoxDecoration get outlineBlack => BoxDecoration(
  //       color: kWhiteColor,
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black26,
  //           blurRadius: 2.0,
  //           offset: Offset.fromDirection(-10.0),
  //         ),
  //       ],
  //     );
  // static BorderRadius get customBorderTL40 => BorderRadius.only(
  //       topLeft: Radius.circular(40.h),
  //       bottomRight: Radius.circular(35.h),
  //     );
  // static BorderRadius get customBorderAll16 => BorderRadius.all(
  //       Radius.circular(16.h),
  //     );
  // static BorderRadius get customBorderAll8 => BorderRadius.all(
  //       Radius.circular(8.h),
  //     );

  // // static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
  // //       backgroundColor: kGreenBgColor,
  // //       shape: RoundedRectangleBorder(
  // //         borderRadius: BorderRadius.circular(16.w),
  // //       ),
  // //     );
  // // static ButtonStyle get fillOrangeBg => ElevatedButton.styleFrom(
  // //       backgroundColor: kOrangeBgColor,
  // //       shape: RoundedRectangleBorder(
  // //         borderRadius: BorderRadius.circular(16.w),
  // //       ),
  // //     );
  // static ButtonStyle get fillWhite => ElevatedButton.styleFrom(
  //       backgroundColor: kWhiteColor,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(5.r),
  //       ),
  //     );
  // static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
  //       backgroundColor: kPrimaryColor,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(16.w),
  //       ),
  //     )

  static TextStyle infoTextStyle() => TextStyle(
        color: Colors.black.withOpacity(0.6399999856948853),
        fontSize: 16,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        height: 0.09,
        letterSpacing: 0.10,
      );
  static TextStyle normalTextStyle() => TextStyle(
        color: Colors.black,
        fontSize: 21,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        height: 0,
      );

  static TextStyle simpletextstyle() => TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        height: 0,
      );
}
