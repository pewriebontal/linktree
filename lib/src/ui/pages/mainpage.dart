import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:quicklinks/src/core/hex2color.dart';
import 'package:quicklinks/src/ui/widgets/linkcard.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;

class MainPage extends StatelessWidget {
  final bool isShowSubtitle = constants.kShowSubtitleText;

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25.0,
              ),
              const PressableDough(
                child: CircleAvatar(
                  //TODO:check if web 50, klw android kecik skit
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              const Text(
                '@${constants.kAlias}',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox.shrink(),
              isShowSubtitle ? const Text(constants.kSubtitle) : const SizedBox.shrink(),
              const SizedBox(
                height: 25.0,
              ),
              //change or remove this part accordingliy

//              LinkCard(
//                  icon: FontAwesomeIcons.youtube,
//                  title: 'Make Her Dreams Come True',
//                  url: constants.kAngelYoutubeUrl,
//                  color: hexToColor('#F80000')),
              LinkCard(
                  icon: FontAwesomeIcons.home,
                  title: 'Home Page',
                  url: constants.kHomePageUrl,
                  color: Colors.grey.shade800),
              LinkCard(
                  icon: FontAwesomeIcons.blog,
                  title: 'Blog',
                  url: constants.kBlogUrl,
                  color: Colors.grey.shade800),
              LinkCard(
                  icon: FontAwesomeIcons.twitter,
                  title: 'Twitter',
                  url: constants.kTwitterUrl,
                  color: Colors.lightBlue.shade800),
              LinkCard(
                  icon: FontAwesomeIcons.instagram,
                  title: 'Instagram',
                  url: constants.kInstagramUrl,
                  color: Colors.pink.shade700),
//              LinkCard(
//                  icon: FontAwesomeIcons.linkedin,
//                  title: 'Instagram',
//                  url: constants.kLinkedinUrl,
//                  color: Colors.blue.shade900),
//              LinkCard(
//                  icon: FontAwesomeIcons.tumblr,
//                  title: 'Tumblr',
//                  url: constants.kTumblrUrl,
//                  color: Colors.purple.shade900),
//              LinkCard(
//                  icon: FontAwesomeIcons.medium,
//                  title: 'Medium',
//                  url: constants.kMediumUrl,
//                  color: Colors.grey.shade900),
              LinkCard(
                  icon: FontAwesomeIcons.githubAlt,
                  title: 'Github',
                  url: constants.kGitHubUrl,
                  color: Colors.purple.shade900),
              LinkCard(
                  icon: FontAwesomeIcons.fan,
                  title: 'OnlyFans',
                  url: constants.kOnlyFansUrl,
                  color: Colors.lightBlue.shade900),
              const SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
