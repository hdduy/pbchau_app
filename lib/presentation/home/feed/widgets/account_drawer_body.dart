import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:phanboichau_app/presentation/routes/router.gr.dart';

class AccountDrawerBody extends StatelessWidget {

  const AccountDrawerBody({
    Key key
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          ListTile(
            onTap: () {},
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.insert_chart,
                ),
                SizedBox(width: 10),
                Text(
                  'Kiểm tra thông tin vé',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.bookmarks,
                ),
                SizedBox(width: 10),
                Text(
                  'Thông tin lớp đăng kí',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.clear_all,
                ),
                SizedBox(width: 10),
                Text(
                  'Huỷ xác thực vé',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.receipt,
                ),
                SizedBox(width: 10),
                Text(
                  'Làm mới vé',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.remove_circle,
                ),
                SizedBox(width: 10),
                Text(
                  'Xoá thông tin vé',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () => launch('https://m.me/phuccer'),
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.verified_user,
                ),
                SizedBox(width: 10),
                Text(
                  'Liên hệ Phuc Vo',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              ExtendedNavigator.of(context).pop();
              ExtendedNavigator.of(context).push(Routes.aboutUs);
            },
            title: Row(
              children: const <Widget>[
                Icon(
                  Icons.info,
                ),
                SizedBox(width: 10),
                Text(
                  'Thông tin ứng dụng',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NoPermissionDialog extends StatelessWidget {
  const NoPermissionDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Bạn không có quyền thực hiện thao tác này.'),
      content: const Text(
          'Nhằm tránh sự lạm dụng quyền lực để điều khiển vé trái phép, tính năng này chỉ có Phuc Vo được phép sử dụng.\n\nNếu bạn tin rằng có gì đó cần thay đổi, hãy liên hệ Phuc Vo.'),
      actions: [
        RaisedButton.icon(
          onPressed: () => launch('https://m.me/phuccer'),
          icon: const Icon(Icons.message),
          label: const Text('Liên hệ'),
        ),
        RaisedButton(
          onPressed: () => ExtendedNavigator.root.popUntilRoot(),
          child: const Text('Đã hiểu'),
        ),
      ],
    );
  }
}
