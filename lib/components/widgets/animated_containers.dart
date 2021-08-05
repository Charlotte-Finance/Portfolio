part of 'widgets.dart';

class ProjectContainer extends StatefulWidget {
  final Project project;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double width1;
  final double width2;
  final double height1;
  final double height2;

  ProjectContainer({
    required this.project,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.width1,
    required this.width2,
    required this.height1,
    required this.height2,
  });

  @override
  ProjectContainerState createState() => new ProjectContainerState(
        project: project,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        width: width1,
        width1: width1,
        width2: width2,
        height: height1,
        height1: height1,
        height2: height2,
      );
}

class ProjectContainerState extends State<ProjectContainer> {
  final Project project;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  double width;
  final double width1;
  final double width2;
  double height;
  final double height1;
  final double height2;
  bool done = false;

  ProjectContainerState({
    required this.project,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.width,
    required this.width1,
    required this.width2,
    required this.height,
    required this.height1,
    required this.height2,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: MouseRegion(
        onEnter: (details) {
          setState(() {
            width = width2;
            height = height2;
          });
        },
        onExit: (details) => setState(() {
          width = width1;
          height = height1;
          done = false;
        }),
        child: AnimatedContainer(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: Border.all(color: Colors.white),
          ),
          duration: const Duration(milliseconds: 500),
          onEnd: () {
            setState(() {
              if (width == width2) {
                done = true;
              }
            });
          },
          child: done
              ? SlidingContainers(
                  containers: project.containers,
                )
          : Container(child:AutoSizeText(
            project.title,
            style: bigLightBoldStyle,
            textAlign: TextAlign.center,
          ),),

        ),
      ),
    );
  }
}

class SlidingContainers extends StatelessWidget {
  final List<Container> containers;
  final CarouselController _controller = CarouselController();

  SlidingContainers({required this.containers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: containers,
          options: CarouselOptions(enlargeCenterPage: true, height: 200),
          carouselController: _controller,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () => _controller.previousPage(),
                child: Text('<-'),
              ),
            ),
            Flexible(
              child: ElevatedButton(
                onPressed: () => _controller.nextPage(),
                child: Text('->'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
