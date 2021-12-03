import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:homework/config/beam_locations.dart';
import 'package:homework/utils/screen_size.dart';

class CustomMainAppBar extends PreferredSize {
  final Size _preferredSize;

  CustomMainAppBar({
    Key? key,
    Size? preferredSIze,
  })  : _preferredSize = Size.fromHeight(75),
        super(
          key: key,
          preferredSize: Size.fromHeight(75),
          child: Container(),
        );

  @override
  Size get preferredSize => _preferredSize;

  @override
  Widget build(BuildContext context) {
    final screenSize = ScreenSize(context);
    return Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.asset('assets/ink.jpg'),
                  if (screenSize.isDesktopView || screenSize.isTabletView)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SPILLED INK",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "Let your words flow.",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MenuButton(
                  text: 'Blog',
                  routeName: RouteLocationGenerator.homeRoute,
                ),
                MenuButton(
                  text: 'GraphQL',
                  routeName: RouteLocationGenerator.todoRoute,
                ),
                SizedBox(width: 25),
              ],
            ),
          ],
        ));
  }
}

class MenuButton extends StatelessWidget {
  final String? text;
  final String routeName;

  const MenuButton({
    Key? key,
    this.text,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context)!.settings.name;

    return Container(
      height: 75,
      constraints: BoxConstraints(minWidth: 50),
      child: TextButton(
        child: Text(text!, style: TextStyle(color: Colors.black)),
        onPressed: () {
          if (route != routeName) {
            Beamer.of(context).beamToNamed(
              routeName,
            );
          }
        },
      ),
    );
  }
}
