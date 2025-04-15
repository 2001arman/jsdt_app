import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/support/support_ui.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget subjectItem({
      required String title,
      bool showDownload = false,
    }) {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Text(
              title,
              style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
            const SizedBox(width: 10),
            if (showDownload)
              Image.asset(
                'assets/icons/download.png',
                width: 20,
              ),
          ],
        ),
      );
    }

    return Drawer(
      backgroundColor: kWhiteColor,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/avatar-girl.png',
                    width: 70,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '[#userName]',
                    style: mainTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'EduRegister',
                    style:
                        mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/icons/download.png',
                    width: 20,
                  ),
                ],
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/edit.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Download Papers',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/download.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/subjects.png',
                        width: 18,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Subjects',
                        style: mainTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: kMainColor,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        subjectItem(title: 'Subject 1'),
                        subjectItem(title: 'Subject 2', showDownload: true),
                        subjectItem(title: 'Subject 3'),
                        subjectItem(title: 'Subject 4', showDownload: true),
                        subjectItem(title: 'Subject 5', showDownload: true),
                        subjectItem(title: 'Subject 6'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                'K53 DrivePro',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/pro.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: kGreyColor),
            ),
            ListTile(
              title: Text(
                'Support Us',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/support.png',
                width: 20,
              ),
              onTap: () => Get.toNamed(SupportUi.namePath),
            ),
            ListTile(
              title: Text(
                'Share',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/share.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Rate Us',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/like.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Disclaimer',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/disclaimer.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/settings.png',
                width: 20,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: kGreyColor),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: mainTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              selected: false,
              leading: Image.asset(
                'assets/icons/leave.png',
                width: 20,
                color: kMainColor,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
