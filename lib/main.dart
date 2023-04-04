import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:settings_page/account_settings.dart';

const kSettingsMenu = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF333333),
);

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Settings(),
  ));
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(FontAwesomeIcons.arrowLeft),
                  Icon(FontAwesomeIcons.bars),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          AssetImage('images/stefan-stefancik.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Stefan Stefancik',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '@cikstefan',
                          style: TextStyle(
                            fontSize: 19.0,
                            color: Color(0xAA000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(FontAwesomeIcons.chevronRight),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Account',
                        style: kSettingsMenu,
                      ),
                      Text(
                        'Social',
                        style: kSettingsMenu,
                      ),
                      Text(
                        'Devices',
                        style: kSettingsMenu,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 0.0),
                    child: Column(
                      children: const [
                        AccountSettings(icon: FontAwesomeIcons.envelope, text: 'Email'),
                        AccountSettings(icon: FontAwesomeIcons.bell, text: 'Notifications'),
                        AccountSettings(icon: FontAwesomeIcons.lock, text: 'Privacy'),
                        AccountSettings(icon: FontAwesomeIcons.buildingLock, text: 'Security'),
                        Divider(height: 50.0, thickness: 1.0,),
                        AccountSettings(icon: FontAwesomeIcons.tv, text: 'Display mode'),
                        AccountSettings(icon: FontAwesomeIcons.commentDots, text: 'Text size'),
                        AccountSettings(icon: FontAwesomeIcons.language, text: 'language'),
                        Divider(height: 50.0, thickness: 1.0),
                        AccountSettings(icon: FontAwesomeIcons.phone, text: 'Contact'),
                        AccountSettings(icon: FontAwesomeIcons.book, text: 'Terms of Service'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xFF7A7A7A),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.house, color: Colors.white),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user, color: Colors.white),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.comment, color: Colors.white),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.gear, color: Colors.white),
                  label: 'Settings',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
