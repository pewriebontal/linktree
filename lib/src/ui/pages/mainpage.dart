import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:linktree/src/core/hex2color.dart';
import 'package:linktree/src/ui/widgets/linkcard.dart';
import 'package:linktree/src/utils/info.dart' as Constants;

class MainPage extends StatelessWidget {
  final bool isShowSubtitle = Constants.kShowSubtitleText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(32.0, 0, 32.0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.0,
              ),
              PressableDough(
                child: CircleAvatar(
                  //TODO:check if web 50, klw android kecik skit
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              Text(
                '@${Constants.kAlias}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox.shrink(),
              isShowSubtitle ? Text(Constants.kSubtitle) : SizedBox.shrink(),
              SizedBox(
                height: 25.0,
              ),
              //change or remove this part accordingliy

//              LinkCard(
//                  icon: FontAwesomeIcons.youtube,
//                  title: 'Make Her Dreams Come True',
//                  url: Constants.kAngelYoutubeUrl,
//                  color: hexToColor('#F80000')),
              LinkCard(
                  icon: FontAwesomeIcons.home,
                  title: 'Home Page',
                  url: Constants.kHomePageUrl,
                  color: Colors.grey.shade800),
              LinkCard(
                  icon: FontAwesomeIcons.twitter,
                  title: 'Twitter',
                  url: Constants.kTwitterUrl,
                  color: Colors.lightBlue.shade800),
              LinkCard(
                  icon: FontAwesomeIcons.instagram,
                  title: 'Instagram',
                  url: Constants.kInstagramUrl,
                  color: Colors.orange.shade700),
//              LinkCard(
//                  icon: FontAwesomeIcons.linkedin,
//                  title: 'Instagram',
//                  url: Constants.kLinkedinUrl,
//                  color: Colors.blue.shade900),
//              LinkCard(
//                  icon: FontAwesomeIcons.tumblr,
//                  title: 'Tumblr',
//                  url: Constants.kTumblrUrl,
//                  color: Colors.purple.shade900),
//              LinkCard(
//                  icon: FontAwesomeIcons.medium,
//                  title: 'Medium',
//                  url: Constants.kMediumUrl,
//                  color: Colors.grey.shade900),
              LinkCard(
                  icon: FontAwesomeIcons.githubAlt,
                  title: 'Github',
                  url: Constants.kGitHubUrl,
                  color: Colors.purple.shade900),
              LinkCard(
                  icon: FontAwesomeIcons.opera,
                  title: 'Onlyfans',
                  url: Constants.kOnlyFansUrl,
                  color: Colors.lightBlue.shade900),
              SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
