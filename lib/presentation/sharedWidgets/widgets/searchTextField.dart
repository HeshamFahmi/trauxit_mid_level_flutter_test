// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/strings/appStrings.dart';

class SearchCustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final VoidCallback onsearhIconTap;

  const SearchCustomTextField({
    Key? key,
    required this.textEditingController,
    required this.onsearhIconTap,
  }) : super(key: key);

  @override
  State<SearchCustomTextField> createState() => _SearchCustomTextFieldState();
}

class _SearchCustomTextFieldState extends State<SearchCustomTextField> {
  bool showCloseIcon = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: TextField(
        controller: widget.textEditingController,
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            showCloseIcon = true;
          });
        },
        decoration: InputDecoration(
          prefixIcon: InkWell(
            onTap: widget.onsearhIconTap,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.search),
            ),
          ),
          suffixIcon: showCloseIcon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.textEditingController.clear();
                      showCloseIcon = false;
                    });
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xffA3A7AE),
                  ))
              : SizedBox(
                  width: 5.w,
                  height: 5.h,
                ),
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
                const BorderSide(color: Color(0xffE7E7E7)), //<-- SEE HERE
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
                const BorderSide(color: Color(0xffE7E7E7)), //<-- SEE HERE
          ),
          hintText: "بحث",
          hintStyle: TextStyle(
              color: const Color(0xffA3A7AE),
              fontFamily: AppStringsFonts.appFontFamilyRegular,
              fontSize: 14.sp),
          contentPadding: EdgeInsets.symmetric(vertical: 5.h),
          filled: true,
          fillColor: const Color(0x1FA7A7AF),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
