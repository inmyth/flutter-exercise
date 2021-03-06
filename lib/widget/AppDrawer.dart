import 'package:flutter/material.dart';
import 'package:flutter_app/routes/Routes.dart';


class AppDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final currentPage = ModalRoute.of(context).settings.name;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.perm_identity,
              text: 'Resume',
              onTap: () =>
              currentPage == Routes.profile ? null : Navigator.pushReplacementNamed(context, Routes.profile)),
          _createDrawerItem(
              icon: Icons.article_outlined,
              text: 'Certificate',
              onTap: () =>
              currentPage == Routes.certificate ? null : Navigator.pushReplacementNamed(context, Routes.certificate)),
          _createDrawerItem(
              icon: Icons.account_box,
              text: 'Resume (old)',
              onTap: () => currentPage == Routes.profileOld ? null :
                  Navigator.pushReplacementNamed(context, Routes.profileOld)),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/drawer_head.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Kerah Biru Flutter Demo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}