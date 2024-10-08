import 'package:flutter/material.dart';
import 'package:tech_blog/components/project_colors.dart';
import 'package:tech_blog/controller/home_screen_controller.dart';

class BlogListItem extends StatelessWidget {
  final HomeScreenController controller;
  final BuildContext context;
  final int index;
  const BlogListItem(
      {required this.controller,
      required this.index,
      required this.context,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: double.maxFinite,
        width: 193,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(controller.topVisitedList[index].imagePath)),
          borderRadius: const BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
                gradient: GradientColors.blogsListviewGradientColor,
              ),
            ),
            Positioned(
              bottom: 7,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: SolidColors.whiteColor),
                    controller.topVisitedList[index].author,
                  ),
                  Text(
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: SolidColors.whiteColor),
                      controller.topVisitedList[index].view)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
