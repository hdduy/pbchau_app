import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phanboichau_app/data/classes/category.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoCard extends StatelessWidget {
  final Category category;

  const InfoCard({
    Key key,
    this.category,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: category.isLink
            ? () async {
                if (await canLaunch(category.route)) {
                  launch(category.route);
                }
              }
            : () => category.route != '/'
                ? ExtendedNavigator.of(context).push(category.route)
                : {},
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10.0),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: category.fromAssets
                      ? Image.asset(
                          category.imageUrl,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          category.imageUrl,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    category.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
