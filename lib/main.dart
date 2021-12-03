import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;
import 'package:provider/provider.dart';
import 'package:homework/config/beam_locations.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:homework/providers/story_provider.dart';

void main() {
  setPathUrlStrategy();
  runApp(riverpod.ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final routeDelegate = BeamerDelegate(
    locationBuilder: SimpleLocationGenerator.simpleLocationBuilder,
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StoryProvider(),
      child: MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: routeDelegate,
        backButtonDispatcher:
            BeamerBackButtonDispatcher(delegate: routeDelegate),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
