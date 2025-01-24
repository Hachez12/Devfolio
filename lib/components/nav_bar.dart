import 'package:devfolio/components/app_button.dart';
import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class NavBar extends StatelessComponent {
  const NavBar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'navbar', [
      div([
        span([text('< ')]),
        span(classes: 'brand', [text('Hache')]),
        span([text(' />')]),
      ]),
      div(classes: 'labels', [
        a(
          classes: 'navbar-label',
          href: '#',
          [
            text('INICIO'),
          ],
        ),
        a(
          href: '#about',
          classes: 'navbar-label',
          [
            text('SOBRE'),
          ],
        ),
        
        a(
          href: '#projects',
          classes: 'navbar-label',
          [
            text('PROJETOS'),
          ],
        ),
        a(
          href: '#contact',
          classes: 'navbar-label',
          [
            text('CONTATO'),
          ],
        ),
      ]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.navbar')
        .box(padding: EdgeInsets.all(25.px))
        .flexbox(
          direction: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
        )
        .background(
          color: Colors.black,
        ),
    css('.navbar-label')
        .box(
          padding: EdgeInsets.only(right: 35.px),
        )
        .text(
          fontSize: 12.px,
          decoration: TextDecoration.none,
        )
        .flexbox(
          direction: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
        ),
    css('.navbar-label:hover')
        .text(
          color: themePrimaryColor,
        )
        .box(
          transition: Transition('color', duration: 500),
        ),
    css('.labels').flexbox(
      direction: FlexDirection.row,
      justifyContent: JustifyContent.end,
    ),
    css('.brand').text(
      fontFamily: FontFamily('Agustina'),
      fontSize: 24.px,
    ),
  ];
}
