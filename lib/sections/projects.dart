import 'package:devfolio/components/app_button.dart';
import 'package:devfolio/components/project_card.dart';
import 'package:devfolio/models/project.dart';
import 'package:jaspr/jaspr.dart';

class ProjectsSections extends StatelessComponent {
  final List<Project> projects;
  const ProjectsSections({
    super.key,
    required this.projects,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'projects-section', [
      span(classes: 'title', [
        text('Meus Trabalhos'),
      ]),
      span(classes: 'subtitle', [
        text("Transformando sua casa em um lar: reformas que fazem a diferença!"),
      ]),
      div(classes: 'section-body-projects', id: 'projects', [
        for (final project in projects)
          ProjectCard(
            banner: project.banner,
            icon: project.icon,
            title: project.title,
            description: project.description,
            url: project.link,
          ),
      ]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.projects-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 5.vh, horizontal: 10.vw),
        ),
    css('.section-body-projects')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
          wrap: FlexWrap.wrap,
        )
        .box(
          margin: EdgeInsets.only(top: 50.px),
          width: 100.percent,
        ),
  ];
}
