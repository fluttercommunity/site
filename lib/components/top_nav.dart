import 'dart:html' hide Navigator;

import 'package:communitysite/components/navigator.dart';
import 'package:jaspr/components.dart';
import 'package:jaspr/html.dart';

class TopNav extends StatelessComponent {
  const TopNav({super.key});

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      nav([
        Row(
          children: [
            NavItem(href: '/', label: 'Home'),
            NavItem(href: '/shows', label: 'Shows'),
            NavItem(href: '/links', label: 'Links'),
            NavItem(href: '/faq', label: 'FAQs'),
            NavItem(href: '/contact', label: 'Contact Us'),
          ],
        ),
      ]),
    ];
  }
}

class NavItem extends StatelessComponent {
  const NavItem({
    super.key,
    required this.href,
    required this.label,
  });

  final String href;
  final String label;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Center(
      child: a(
        href: href,
        events: {
          'click': (event) {
            Navigator.of(context).push(href);
            (event as Event).preventDefault();
          },
        },
        [text(label)],
      ),
    );
  }
}
