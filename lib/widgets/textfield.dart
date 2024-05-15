
import 'package:flutter/material.dart';

import '../utilities/globalVariable.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? filled;
  final bool enabled;
var filledColor;
  final Widget? prefixIcon;
  final bool? haveBorder;

  final bool readOnly;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;

   CustomTextField({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    this.controller,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.filledColor,

    this.filled,

    this.enabled = true,
    this.haveBorder ,

    this.readOnly = false,
    this.validator,
    this.initialValue,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.onSaved,
    this.onChanged,
    this.prefixIcon,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      focusNode: focusNode,
      initialValue: initialValue,
      validator: validator,
      enabled: enabled,
      onTap: onTap,
      
      readOnly: readOnly,
      onSaved: onSaved,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        focusColor: firstColor,
        filled: filled??false,
        fillColor: filledColor,
        enabledBorder: haveBorder==true? OutlineInputBorder(
          borderSide: BorderSide(color: blackColor.withOpacity(.5)),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ):InputBorder.none,
        focusedBorder:haveBorder==true? OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: firstColor),
        ):InputBorder.none,
        focusedErrorBorder:haveBorder==true?  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: redColor),
        ):InputBorder.none,
        errorBorder:haveBorder==true?  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: redColor),
        ):InputBorder.none,
        disabledBorder:haveBorder==true?  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: blackColor),
        ):InputBorder.none,
        prefixIcon: prefixIcon,
        counterText: "",
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.5),
        iconColor: firstColor,
        prefixIconColor: firstColor,

        hintStyle: TextStyle(
          color: Colors.black26,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static InputDecoration get myDecoration {
    return InputDecoration(
      // labelText: labelText ,

      // hintText: labelText,

      filled: true,

      contentPadding: const EdgeInsets.all(8.0),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),
    );
  }

  static InputDecoration get myDecoration1 {
    return InputDecoration(
      // labelText: labelText ,

      // hintText: labelText,
      prefixIcon: const CircleAvatar(
          radius: 5,
          backgroundColor: Colors.transparent,
          child: Image(
            image: AssetImage("assets/icons/certificate.png"),
            height: 20,
            width: 20,
          )),

      filled: true,

      contentPadding: const EdgeInsets.all(20.0),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),
    );
  }
}

class CustomTextFieldWithoutBorder extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final Icon? prefixIcon;
  final bool readOnly;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;

  const CustomTextFieldWithoutBorder({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    this.controller,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.enabled = true,
    this.readOnly = false,
    this.validator,
    this.initialValue,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.onSaved,
    this.onChanged,
    this.prefixIcon,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        focusNode: focusNode,
        initialValue: initialValue,
        validator: validator,
        enabled: enabled,
        onTap: onTap,
        readOnly: readOnly,
        onSaved: onSaved,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        textInputAction: textInputAction,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          border: InputBorder.none,
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: blackColor),
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //   borderSide: BorderSide(color: firstColor),
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //   borderSide: BorderSide(color: redColor),
          // ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //   borderSide: BorderSide(color: redColor),
          // ),
          // disabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //   borderSide: BorderSide(color: blackColor),
          // ),
          prefixIcon: prefixIcon,
          counterText: "",
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          iconColor: blackColor,
          prefixIconColor: blackColor,

          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 13.26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  static InputDecoration get myDecoration {
    return InputDecoration(
      // labelText: labelText ,

      // hintText: labelText,

      filled: true,

      contentPadding: const EdgeInsets.all(8.0),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),
    );
  }

  static InputDecoration get myDecoration1 {
    return InputDecoration(
      // labelText: labelText ,

      // hintText: labelText,
      prefixIcon: const CircleAvatar(
          radius: 5,
          backgroundColor: Colors.transparent,
          child: Image(
            image: AssetImage("assets/icons/certificate.png"),
            height: 20,
            width: 20,
          )),

      filled: true,

      contentPadding: const EdgeInsets.all(20.0),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: blackColor, width: 1),
      ),
    );
  }
}
