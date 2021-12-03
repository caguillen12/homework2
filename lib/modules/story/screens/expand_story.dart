import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:homework/models/story.dart';
import 'package:homework/providers/story_provider.dart';
import 'package:homework/modules/story/screens/edit_story.dart';
import 'package:homework/utils/screen_size.dart';

class ExpandStory extends StatefulWidget {
  final Story story;

  const ExpandStory({Key? key, required this.story}) : super(key: key);

  @override
  _ExpandStoryState createState() => _ExpandStoryState();
}

class _ExpandStoryState extends State<ExpandStory> {
  late String title;
  late String subtitle;
  late String post;

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<StoryProvider>(context, listen: false);

    title = widget.story.title;
    subtitle = widget.story.subtitle;
    post = widget.story.post;
    provider.displayStory(widget.story);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StoryProvider>(context);
    final story = provider.story;

    final screenSize = ScreenSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, '/nothing');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EditStoryPage(story: widget.story),
                          ),
                        );
                      },
                      child: Text('Edit Story'),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        final provider =
                            Provider.of<StoryProvider>(context, listen: false);
                        provider.removeTodo(widget.story);

                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          story.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Text(story.subtitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[900])),
                      ),
                      Text(
                        'Posted on: ${story.createdTime.toString()}',
                        style: TextStyle(fontSize: 12),
                      ),
                      Container(
                        constraints:
                            const BoxConstraints(minWidth: 100, maxWidth: 200),
                        child: const Divider(
                          height: 40,
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Text(story.post,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600])),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
