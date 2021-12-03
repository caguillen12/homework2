import 'package:flutter/material.dart';
import 'package:homework/modules/story/components/stories_dashboard_widget.dart';
import 'package:homework/modules/story/components/share_story_widget.dart';
import 'package:homework/common/components/main_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomMainAppBar(),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const ShareStoryWidget(),
              );
            },
            child: const Text('Post a short piece'),
          ),
          const Expanded(child: StoriesDashboard()),
        ],
      ),
    );
  }
}
