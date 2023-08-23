import 'package:communitysite/components/page_frame.dart';
import 'package:jaspr/html.dart';

class ShowsPage extends StatelessComponent {
  const ShowsPage();

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      PageFrame(
        title: 'Shows',
        child: text('This is the shows.'),
      ),
    ];
  }
}
