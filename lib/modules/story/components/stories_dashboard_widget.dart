import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:homework/providers/story_provider.dart';
import 'package:homework/modules/story/components/story_widget.dart';

class StoriesDashboard extends StatelessWidget {
  const StoriesDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StoryProvider>(context);
    final stories = provider.stories;

    return stories.isEmpty
        ? Center(
            child: Text(
              'No stories.',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            separatorBuilder: (context, index) => Container(height: 8),
            itemCount: stories.length,
            itemBuilder: (context, index) {
              final story = stories[index];

              return StoryWidget(story: story);
            },
          );
  }
}
