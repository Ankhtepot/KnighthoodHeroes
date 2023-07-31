import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

InlineSpan textSpanImage(String imagePath, {double width = 16, double height = 16, double padding = 0}) => WidgetSpan(
      child: Container(
        padding: EdgeInsets.fromLTRB(padding, padding, padding, 3),
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
        ),
      ),
    );

TextSpan textSpan(String text) => TextSpan(
      text: text,
      style: GoogleFonts.cabin(),
    );

TextSpan textSpanBold(String text) => TextSpan(
      text: text,
      style: GoogleFonts.cabin(fontWeight: FontWeight.bold),
    );

TextSpan textSpanLink(String text, String url) => TextSpan(
      text: text,
      style: GoogleFonts.cabin(
        color: const Color.fromARGB(255, 13, 0, 255),
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
      ),
      recognizer: TapGestureRecognizer()..onTap = () => _launchURL(url),
    );

void _launchURL(String url) async {
  if (await canLaunchUrlString(url)) {
    if (Platform.isAndroid) {
      await launchUrlString(url, mode: LaunchMode.platformDefault);
    }
  } else {
    throw 'Could not launch $url';
  }
}
