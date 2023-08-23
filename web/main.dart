import 'package:communitysite/site/site.dart';
import 'package:jaspr/browser.dart';

void main() {
  // Attaches the app component to the <body> tag
  // and hydrates the component / makes it interactive.
  runApp(Site(), attachTo: 'body');
}
