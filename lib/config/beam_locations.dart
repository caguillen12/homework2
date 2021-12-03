import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:homework/modules/story/screens/home.dart';
import 'package:homework/modules/characters/screens/characters.dart';

class RouteLocationGenerator {
  static const String homeRoute = '/';
  static const String expandStoryRoute = '/expandStory';
  static const String todoRoute = '/characters';
}

//OPTION A: SIMPLE LOCATION BUILDER
class SimpleLocationGenerator {
  static final simpleLocationBuilder = SimpleLocationBuilder(routes: {
    '/': (context, state) => BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          child: HomePage(),
          type: BeamPageType.noTransition,
        ),
    '/home': (context, state) => BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          child: HomePage(),
          type: BeamPageType.noTransition,
        ),
    '/characters': (context, state) => BeamPage(
          key: ValueKey('characters'),
          title: 'GraphQL',
          child: CharacterPage(),
          type: BeamPageType.noTransition,
        ),
  });
}
