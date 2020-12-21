import 'package:flutter/material.dart';
import 'package:phanboichau_app/presentation/home/feed/widgets/outlined_circle_avatar.dart';

class AccountDrawer extends StatelessWidget {
  const AccountDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                const OutlinedCircleAvatar(
                  holderClass: '',
                  // imageUrl: user.imageUrl,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: const Text(
                        'user.name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: const [
                        Icon(
                          Icons.stars,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Ban kiểm duyệt',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            // AccountDrawerBody(user: user),
            // Column(
            // children: [
            // if (user.email == 'phucvo0708@gmail.com')
            // LongButton(
            //   title: 'Đăng ký',
            //   onPress: () =>
            //       ExtendedNavigator.of(context).push(Routes.signUpScreen),
            // ),
            // LongButton(
            //   title: 'Đăng xuất',
            //   onPress: () {
            //     getIt<AuthBloc>().add(const AuthEvent.signedOut());
            //     ExtendedNavigator.of(context).pop();
            //     ExtendedNavigator.of(context).replace(Routes.signInScreen);
            //   },
            // ),
            // ],
            // ),
          ],
        ),
      ),
    );
  }
}
