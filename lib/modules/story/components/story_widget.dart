import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:homework/models/story.dart';
import 'package:homework/modules/story/screens/expand_story.dart';
import 'package:homework/providers/story_provider.dart';
import 'package:flutter/cupertino.dart';

class StoryWidget extends StatelessWidget {
  final Story story;

  const StoryWidget({
    required this.story,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: storyTile(context),
      );

  Widget storyTile(BuildContext context) => GestureDetector(
        onTap: () => expandStory(context, story),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(story.createdTime.toString(),
                  style: TextStyle(fontSize: 15)),
              Text(
                story.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 23,
                ),
              ),
              Text(
                story.subtitle,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 100),
                child: Divider(
                  height: 25,
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              if (story.post.isNotEmpty)
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    story.post,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                )
            ],
          ),
        ),
      );

  void deleteStory(BuildContext context, Story story) {
    final provider = Provider.of<StoryProvider>(context, listen: false);
    provider.removeTodo(story);
  }

  void expandStory(BuildContext context, Story story) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ExpandStory(story: story),
        ),
      );
}
