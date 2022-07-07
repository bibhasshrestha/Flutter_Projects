import 'package:flutter/material.dart';
import 'package:myapp/view/login/login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEBF0FF),
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SettingsContent(
            title: Text('Profile'),
            leading: Icon(
              Icons.person_off,
              color: Colors.blue,
            ),
          ),
          SettingsContent(
            title: Text('Account Settings'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          ),
          SettingsContent(
            title: Text('Change Language'),
            leading: Icon(
              Icons.language,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}


//Extracted Widget
class SettingsContent extends StatelessWidget {
  final title;
  final leading;

  SettingsContent({this.title, this.leading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: title,
        leading: leading,
      ),
    );
  }
}
