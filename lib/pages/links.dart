import 'package:communitysite/components/page_frame.dart';
import 'package:jaspr/html.dart';

class LinksPage extends StatelessComponent {
  const LinksPage();

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      PageFrame(
        title: 'Links',
        child: text('This is the links.'),
      ),
    ];
  }
}
