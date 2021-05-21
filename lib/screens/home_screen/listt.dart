import 'package:flutter/material.dart';
import 'package:instagram_ui/data/data.dart';
import 'package:instagram_ui/screens/home_screen/post.dart';
import 'package:instagram_ui/screens/home_screen/status.dart';

class Listt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.postInfo.length + 1,
      itemBuilder: (context, index) {
        return index == 0
            ? Status()
            : Post(
                image: Data.postInfo[index - 1]['image'],
                likedProfile: Data.postInfo[index - 1]['likedProfile'],
                postedOn: Data.postInfo[index - 1]['postedOn'],
                profile: Data.postInfo[index - 1]['profile'],
                username: Data.postInfo[index - 1]['username'],
              );
      },
    );
  }
}
