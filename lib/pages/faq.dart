import 'package:communitysite/components/page_frame.dart';
import 'package:jaspr/html.dart';

class FaqPage extends StatelessComponent {
  const FaqPage();

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      PageFrame(
        title: 'FAQs',
        child: text('This is the FAQs.'),
      ),
    ];
  }
}
