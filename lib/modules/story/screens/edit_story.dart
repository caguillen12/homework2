import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:homework/models/story.dart';
import 'package:homework/providers/story_provider.dart';
import 'package:homework/modules/story/components/story_form_widget.dart';

class EditStoryPage extends StatefulWidget {
  final Story story;

  const EditStoryPage({Key? key, required this.story}) : super(key: key);

  @override
  _EditStoryPageState createState() => _EditStoryPageState();
}

class _EditStoryPageState extends State<EditStoryPage> {
  final _formKey = GlobalKey<FormState>();

  late String title;
  late String subtitle;
  late String post;

  @override
  void initState() {
    super.initState();

    title = widget.story.title;
    subtitle = widget.story.subtitle;
    post = widget.story.post;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: StoryFormWidget(
                  title: title,
                  subtitle: subtitle,
                  post: post,
                  onChangedTitle: (title) => setState(() => this.title = title),
                  onChangedSubtitle: (subtitle) =>
                      setState(() => this.subtitle = subtitle),
                  onChangedPost: (post) => setState(() => this.post = post),
                  onSavedStory: saveStory,
                ),
              ),
            ],
          ),
        ),
      );

  void saveStory() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final provider = Provider.of<StoryProvider>(context, listen: false);

      provider.updateStory(widget.story, title, post, subtitle);
      provider.displayStory(widget.story);

      Navigator.of(context).pop();
      //Navigator to /dashboard dapat
    }
  }
}
