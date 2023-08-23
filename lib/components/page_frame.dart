import 'package:communitysite/components/top_nav.dart';
import 'package:jaspr/components.dart';
import 'package:jaspr/html.dart';

class PageFrame extends StatelessComponent {
  const PageFrame({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Component child;

  @override
  Iterable<Component> build(BuildContext context) {
    return [
      Column(
        children: [
          header([text('Flutter Community')]),
          TopNav(),
          article([
            h1([
              text(title),
            ]),
            child,
          ]),
          footer([
            text('Copyright &copy; 2023', rawHtml: true),
          ]),
        ],
      ),
    ];
  }
}
