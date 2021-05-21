import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/data/data.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      height: 102,
      color: Colors.black,
      child: ListView.builder(
        itemCount: Data.statusInfo.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _buildStatus(index == 0 ? true : false,
              Data.statusInfo[index]['image'], Data.statusInfo[index]['name']);
        },
      ),
    );
  }

  Widget _buildStatus(bool me, String image, String name) {
    if (me) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Your Story',
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(left: 8),
        height: 102,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFC50096),
                        Color(0xFFF9430A),
                        Color(0xFFFCB61A),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              name,
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
  }
}
