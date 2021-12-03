import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:homework/models/story.dart';
import 'package:homework/providers/story_provider.dart';
import 'package:homework/modules/story/components/story_form_widget.dart';

class ShareStoryWidget extends StatefulWidget {
  const ShareStoryWidget({Key? key}) : super(key: key);

  @override
  _ShareStoryWidgetState createState() => _ShareStoryWidgetState();
}

class _ShareStoryWidgetState extends State<ShareStoryWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String subtitle = '';
  String post = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Story',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 8),
              StoryFormWidget(
                onChangedTitle: (title) => setState(() => this.title = title),
                onChangedSubtitle: (subtitle) =>
                    setState(() => this.subtitle = subtitle),
                onChangedPost: (post) => setState(() => this.post = post),
                onSavedStory: addStory,
              ),
            ],
          ),
        ),
      );

  void addStory() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final story = Story(
        id: DateTime.now().toString(),
        title: title,
        subtitle: subtitle,
        post: post,
        createdTime: DateTime.now(),
      );

      final provider = Provider.of<StoryProvider>(context, listen: false);
      provider.addStory(story);

      Navigator.of(context).pop();
    }
  }
}
