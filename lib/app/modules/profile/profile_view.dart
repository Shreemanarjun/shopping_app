import 'package:flutter/material.dart';

import 'package:settings_ui/settings_ui.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.blueAccent),
          accountEmail: Text('user@user.com'),
          accountName: Text('John Doe'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=300",
            ),
            radius: 30,
          ),
        ),
        SettingsList(
          shrinkWrap: true,
          contentPadding: const EdgeInsets.all(0),
          sections: [
            SettingsSection(
              tiles: [
                SettingsTile(
                  title: 'Order History',
                  leading: const Icon(
                    Icons.receipt_long,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'My List',
                  leading: const Icon(
                    Icons.format_list_bulleted,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Wishlist',
                  leading: const Icon(
                    Icons.favorite,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Payment Methods',
                  leading: const Icon(
                    Icons.credit_card,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Delivery Addresses',
                  leading: const Icon(
                    Icons.place,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Need Help',
                  leading: const Icon(
                    Icons.help_center,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Legal issue',
                  leading: const Icon(
                    Icons.bug_report,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Whatsapp Us',
                  leading: const Icon(
                    Icons.chat_bubble,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Sign Out',
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.blueAccent,
                  ),
                  onPressed: (BuildContext context) {},
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
