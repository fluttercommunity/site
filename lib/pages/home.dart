import 'package:communitysite/components/page_frame.dart';
import 'package:jaspr/html.dart';

class HomePage extends StatelessComponent {
  const HomePage();

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      PageFrame(
        title: 'Home',
        child: text('This is the homepage.'),
      ),
    ];
  }
}
