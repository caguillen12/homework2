import 'package:flutter/material.dart';

class StoryFormWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String post;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedSubtitle;
  final ValueChanged<String> onChangedPost;
  final VoidCallback onSavedStory;

  const StoryFormWidget({
    Key? key,
    this.title = '',
    this.subtitle = '',
    this.post = '',
    required this.onChangedTitle,
    required this.onChangedSubtitle,
    required this.onChangedPost,
    required this.onSavedStory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          createTitle(),
          SizedBox(height: 8),
          createSubtitle(),
          SizedBox(height: 8),
          createPost(),
          SizedBox(height: 16),
          buildButton(),
        ],
      ),
    );
  }

  Widget createTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        onChanged: onChangedTitle,
        validator: (title) {
          if (title!.isEmpty) {
            return 'The title cannot be empty';
          }
          return null;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );
  Widget createSubtitle() => TextFormField(
        maxLines: 2,
        initialValue: subtitle,
        onChanged: onChangedSubtitle,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Subtitle',
        ),
      );
  Widget createPost() => TextFormField(
        maxLines: 10,
        initialValue: post,
        onChanged: onChangedPost,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Body',
        ),
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: onSavedStory,
          child: Text('Save'),
        ),
      );
}
