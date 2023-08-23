import 'package:communitysite/components/page_frame.dart';
import 'package:jaspr/html.dart';

class ContactUsPage extends StatelessComponent {
  const ContactUsPage();

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      PageFrame(
        title: 'Contact Us',
        child: text('This is the Contact Us.'),
      ),
    ];
  }
}
