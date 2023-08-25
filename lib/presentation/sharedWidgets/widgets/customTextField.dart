// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
// ignore_for_file: file_names, must_be_immutable

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final Widget? suffixWidget;
  final String? hint;

  bool isPassword;

  CustomTextField(
      {Key? key,
      required this.textEditingController,
      required this.keyboardType,
      this.hint,
      required this.isPassword,
      this.suffixWidget})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextField(
        controller: widget.textEditingController,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword
            ? visible
                ? true
                : false
            : false,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? InkWell(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: widget.suffixWidget == null
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.h),
                          child: !visible
                              ? const Icon(Icons.visibility_rounded)
                              : const Icon(Icons.visibility_off),
                        )
                      : Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 2.h),
                              child: !visible
                                  ? const Icon(Icons.visibility_rounded)
                                  : const Icon(Icons.visibility_off),
                            ),
                            widget.suffixWidget ?? const SizedBox()
                          ],
                        ))
              : Container(
                  width: 50.w,
                ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 167, 166, 166)), //<-- SEE HERE
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE7E7E7)), //<-- SEE HERE
          ),
          hintText: widget.hint ?? "",
          hintStyle: TextStyle(color: const Color(0xffA3A7AE), fontSize: 14.sp),
          contentPadding: EdgeInsets.symmetric(vertical: 15.h),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
