import 'package:homework/models/story.dart';
import 'package:flutter/cupertino.dart';

class StoryProvider extends ChangeNotifier {
  List<Story> _stories = [
    Story(
      createdTime: DateTime.now(),
      title: 'A Little Match Girl',
      subtitle: 'A fairy tale about a dying child\'s dreams and hope.',
      post:
          '''It was so terribly cold. Snow was falling, and it was almost dark. Evening came on, the last evening of the year. In the cold and gloom a poor little girl, bareheaded and barefoot, was walking through the streets. Of course when she had left her house she'd had slippers on, but what good had they been? They were very big slippers, way too big for her, for they belonged to her mother. The little girl had lost them running across the road, where two carriages had rattled by terribly fast. One slipper she'd not been able to find again, and a boy had run off with the other, saying he could use it very well as a cradle some day when he had children of his own. And so the little girl walked on her naked feet, which were quite red and blue with the cold. In an old apron she carried several packages of matches, and she held a box of them in her hand. No one had bought any from her all day long, and no one had given her a cent.

Shivering with cold and hunger, she crept along, a picture of misery, poor little girl! The snowflakes fell on her long fair hair, which hung in pretty curls over her neck. In all the windows lights were shining, and there was a wonderful smell of roast goose, for it was New Year's eve. Yes, she thought of that!

In a corner formed by two houses, one of which projected farther out into the street than the other, she sat down and drew up her little feet under her. She was getting colder and colder, but did not dare to go home, for she had sold no matches, nor earned a single cent, and her father would surely beat her. Besides, it was cold at home, for they had nothing over them but a roof through which the wind whistled even though the biggest cracks had been stuffed with straw and rags.

Her hands were almost dead with cold. Oh, how much one little match might warm her! If she could only take one from the box and rub it against the wall and warm her hands. She drew one out. R-r-ratch! How it sputtered and burned! It made a warm, bright flame, like a little candle, as she held her hands over it; but it gave a strange light! It really seemed to the little girl as if she were sitting before a great iron stove with shining brass knobs and a brass cover. How wonderfully the fire burned! How comfortable it was! The youngster stretched out her feet to warm them too; then the little flame went out, the stove vanished, and she had only the remains of the burnt match in her hand.

She struck another match against the wall. It burned brightly, and when the light fell upon the wall it became transparent like a thin veil, and she could see through it into a room. On the table a snow-white cloth was spread, and on it stood a shining dinner service. The roast goose steamed gloriously, stuffed with apples and prunes. And what was still better, the goose jumped down from the dish and waddled along the floor with a knife and fork in its breast, right over to the little girl. Then the match went out, and she could see only the thick, cold wall. She lighted another match. Then she was sitting under the most beautiful Christmas tree. It was much larger and much more beautiful than the one she had seen last Christmas through the glass door at the rich merchant's home. Thousands of candles burned on the green branches, and colored pictures like those in the printshops looked down at her. The little girl reached both her hands toward them. Then the match went out. But the Christmas lights mounted higher. She saw them now as bright stars in the sky. One of them fell down, forming a long line of fire.

"Now someone is dying," thought the little girl, for her old grandmother, the only person who had loved her, and who was now dead, had told her that when a star fell down a soul went up to God.

She rubbed another match against the wall. It became bright again, and in the glow the old grandmother stood clear and shining, kind and lovely.

"Grandmother!" cried the child. "Oh, take me with you! I know you will disappear when the match is burned out. You will vanish like the warm stove, the wonderful roast goose and the beautiful big Christmas tree!"

And she quickly struck the whole bundle of matches, for she wished to keep her grandmother with her. And the matches burned with such a glow that it became brighter than daylight. Grandmother had never been so grand and beautiful. She took the little girl in her arms, and both of them flew in brightness and joy above the earth, very, very high, and up there was neither cold, nor hunger, nor fear-they were with God.

But in the corner, leaning against the wall, sat the little girl with red cheeks and smiling mouth, frozen to death on the last evening of the old year. The New Year's sun rose upon a little pathetic figure. The child sat there, stiff and cold, holding the matches, of which one bundle was almost burned.

"She wanted to warm herself," the people said. No one imagined what beautiful things she had seen, and how happily she had gone with her old grandmother into the bright New Year.

Disclaimer: Written by Hans Christian Andersen. I just want to demonstrate One persons's account so there's no "author" field.''',
    ),
    Story(
      createdTime: DateTime.now(),
      title: 'The Cask of Amontillado',
      subtitle: 'A story about revenge, deceit, and murder.',
      post:
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae convallis tortor, eu maximus nulla. Vivamus vel nisl quis quam luctus tempus nec id mi. Quisque a ipsum sit amet sapien feugiat hendrerit. Suspendisse potenti. Phasellus consequat, mauris in vestibulum consequat, nisl sem laoreet lorem, id auctor ligula lorem sit amet nibh. Suspendisse hendrerit, enim in scelerisque tincidunt, dolor tellus pellentesque justo, sed hendrerit tortor mi vel mauris. Morbi feugiat nunc dui, at hendrerit mi placerat non. In condimentum, lorem sit amet sollicitudin semper, urna est sodales tortor, eget porta ante dolor in dui. Vestibulum eget malesuada magna. Integer accumsan dolor mollis magna sollicitudin elementum. In at ornare ipsum.

Nunc consectetur, lorem eget dapibus pretium, felis urna commodo turpis, eu facilisis dolor quam sed augue. Nulla euismod sem quis dolor vestibulum, quis aliquet ipsum scelerisque. Nulla ac cursus quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu augue tempus risus ullamcorper tempus nec a arcu. Nunc ornare magna vel augue aliquam, sagittis efficitur tellus consequat. Donec eu interdum ipsum, faucibus tristique justo.

Donec mattis posuere metus, eu finibus augue dapibus ut. Suspendisse potenti. Phasellus ut sem purus. Sed malesuada nisi quis scelerisque suscipit. Vestibulum pretium nulla sed leo congue tempor. Aenean sit amet nunc malesuada, molestie libero at, sodales diam. Donec eleifend erat sapien, at sagittis eros porta nec. In consequat erat eu quam sollicitudin, quis iaculis urna porta. Cras sem sem, elementum at porttitor a, ultricies in nibh. Nullam luctus, sapien ut ornare placerat, nisi nulla venenatis quam, sit amet dictum dui ipsum vitae nunc.

Vestibulum tristique facilisis congue. Aliquam eleifend, mi eu euismod lobortis, lacus metus egestas ipsum, in facilisis mauris justo nec dui. Morbi pharetra sem lacus, vitae tincidunt nunc rutrum non. Donec ultricies turpis vel feugiat molestie. Sed vel leo id ipsum convallis sodales sed in libero. Donec vel purus vitae nisl mattis volutpat at in orci. Vivamus volutpat dignissim fermentum. Aliquam erat volutpat. Morbi sagittis nunc fringilla aliquet cursus. Nulla gravida lacus metus, ultrices egestas diam vulputate id. Sed erat nibh, hendrerit at fringilla id, venenatis eget lacus. Vivamus lorem felis, hendrerit at porta faucibus, volutpat nec eros. Proin justo nibh, dictum eget dictum nec, molestie nec neque. Cras volutpat auctor commodo. Duis vitae justo ante. Cras id luctus ante.

Disclaimer: Story by  Edgar Allan Poe. I just want to demonstrate One person's account so there's no "author" field.
''',
    ),
    Story(
      createdTime: DateTime.now(),
      title: 'The Road Not Taken',
      subtitle: 'A poem about choices and opportunities in life.',
      post: '''Two roads diverged in a yellow wood,
And sorry I could not travel both
And be one traveler, long I stood
And looked down one as far as I could
To where it bent in the undergrowth;

Then took the other, as just as fair,
And having perhaps the better claim,
Because it was grassy and wanted wear;
Though as for that the passing there
Had worn them really about the same,

And both that morning equally lay
In leaves no step had trodden black.
Oh, I kept the first for another day!
Yet knowing how way leads on to way,
I doubted if I should ever come back.

I shall be telling this with a sigh
Somewhere ages and ages hence:
Two roads diverged in a wood, and I—
I took the one less traveled by,
And that has made all the difference.

Disclaimer: Written by Robert Frost. I just want to demonstrate One person's account so there's no "author" field.
      ''',
    ),
    Story(
        createdTime: DateTime.now(),
        title: 'Zombie Kid',
        subtitle:
            'What did the boy really want? Satiating his hunger? Or feeling his mother’s warmth?',
        post:
            '''A baby boy was born in a small village. He had pale skin and large eyes. While raising the boy, his mother naturally came to the realization that he had no feelings whatsoever. All he had was the desire to eat, like a zombie. So his mother locked him up in the basement so that the villagers wouldn’t see him. And every night, she stole livestock from her neighbors to feed him. That’s how she raised him in secret. One night, she’d steal a chicken. The next day, she’d steal a pig. A number of years passed like that. Then one day, an epidemic broke out. It left the remaining animals dead, and it also killed many people. Those who survived the epidemic left the village. But the mother couldn’t leave her son all alone. And to appease her son crying of hunger, she cut off one leg of hers and gave it to him. After that, it was her arm. She gave him all her limbs. When she was left with nothing but her torso, she embraced her son for the last time to let him devour what was left of her. With his both arms, the boy tightly held his mother’s torso and spoke for the first time in his life. ‘Mom. You’re so warm.’
            
             What did the boy really want? Satiating his hunger? Or feeling his mother’s warmth?

Disclaimer: Written by Ko Mun Yeong in K-drama "It's okay not to be okay". I just want to demonstrate One person's account so there's no "author" field.
'''),
  ];
  Story story = Story(title: 'initial');
  List<Story> get stories =>
      _stories.where((story) => story.isDone == false).toList();
  void displayStory(Story story1) {
    story = story1;
    notifyListeners();
  }

  void addStory(Story story) {
    _stories.add(story);

    notifyListeners();
  }

  void removeTodo(Story story) {
    _stories.remove(story);

    notifyListeners();
  }

  void updateStory(Story story, String title, String post, String subtitle) {
    story.title = title;
    story.subtitle = subtitle;
    story.post = post;

    notifyListeners();
  }
}
