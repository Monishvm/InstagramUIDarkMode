import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  Post({
    this.username,
    this.profile,
    this.image,
    this.likedProfile,
    this.postedOn,
  });
  final String username;
  final String image;
  final String profile;
  final List<String> likedProfile;
  final String postedOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      height: MediaQuery.of(context).size.width + 170,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildMiddle(context),
          _buildBottom(context),
        ],
      ),
    );
  }

  Container _buildMiddle(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.width,
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }

  Container _buildBottom(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.width + 170) -
          (MediaQuery.of(context).size.width + 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              Transform.rotate(
                angle: 3.14 + 2.5,
                origin: Offset(-9, 0),
                child: IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.bookmark_outline_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Stack(
                children: [
                  SizedBox(
                    height: 30,
                    width: 70,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: _buildLikedProfile(
                        likedProfile[0],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: _buildLikedProfile(
                        likedProfile[1],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: _buildLikedProfile(
                        likedProfile[2],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 2),
              Text(
                'Liked by',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 2),
              Text(
                'name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 2),
              Text(
                'and',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 2),
              Text(
                '3 others',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              postedOn,
              style: GoogleFonts.aBeeZee(color: Colors.grey.shade600),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTop() {
    return Container(
      height: 60,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  profile,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' - following',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 17,
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Container _buildLikedProfile(String profile) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          profile,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
