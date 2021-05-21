import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.add,
            size: 30,
          ),
          Text(
            'Instagram',
            style: GoogleFonts.lobsterTwo(
              fontSize: 35,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),
          ),
          Image.network(
            'https://img.icons8.com/ios/452/facebook-messenger--v1.png',
            color: Colors.white,
            height: 30,
            width: 30,
          )
        ],
      ),
    );
  }
}
