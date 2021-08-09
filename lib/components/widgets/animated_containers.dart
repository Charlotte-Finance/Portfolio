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
  Project project;
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
    project = widget.project;
    List<Widget> widgets = [
      FirstPage(
        project: project,
      )
    ];
    if (project.subProjects != null) {
      for (int i = 0; i < project.subProjects!.length; i++) {
        widgets.add(
          SecondPage(
            subProject: project.subProjects![i],
            pageNumber: i + 2,
            totalPage: project.subProjects!.length+1,
          ),
        );
      }
    }
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: MouseRegion(
        onEnter: (details) {
          setState(
            () {
              width = width2;
              height = height2;
            },
          );
        },
        onExit: (details) => setState(
          () {
            width = width1;
            height = height1;
            done = false;
          },
        ),
        child: AnimatedContainer(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: Border.all(color: Colors.white),
          ),
          duration: const Duration(milliseconds: 500),
          onEnd: () {
            setState(
              () {
                if (width == width2) {
                  done = true;
                }
              },
            );
          },
          child: done
              ? SlidingContainers(
                  widgets: widgets,
                )
              : Container(
                  child: Text(
                    project.title,
                    style: bigLightBoldStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      ),
    );
  }
}

class SlidingContainers extends StatelessWidget {
  final List<Widget> widgets;
  final CarouselController _controller = CarouselController();

  SlidingContainers({required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: widgets,
          options: CarouselOptions(
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            // autoPlay: false,
          ),
          carouselController: _controller,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () => _controller.previousPage(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3675,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () => _controller.nextPage(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3675,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
