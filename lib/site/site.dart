import 'package:communitysite/components/navigator.dart';
import 'package:communitysite/pages/contact_us.dart';
import 'package:communitysite/pages/faq.dart';
import 'package:communitysite/pages/home.dart';
import 'package:communitysite/pages/links.dart';
import 'package:communitysite/pages/shows.dart';
import 'package:jaspr/components.dart';
import 'package:jaspr/html.dart';

class Site extends StatelessComponent {
  const Site({super.key});

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      Navigator(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/shows': (context) => ShowsPage(),
          '/links': (context) => LinksPage(),
          '/faq': (context) => FaqPage(),
          '/contact': (context) => ContactUsPage(),
        },
        onUnknownRoute: (context) {
          return Center(child: text('404 Not Found'));
        },
      ),
    ];
  }
}
