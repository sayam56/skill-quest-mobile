import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/model/courses_name.dart';
import 'package:Skill_Quest/view/widgets/common/careerQuizWidget.dart';
import 'package:Skill_Quest/view/widgets/common/courseTile.dart';
import 'package:flutter/material.dart';

class CourseList extends StatefulWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  TextEditingController? editingController = TextEditingController();

  final mainItems = courseNames;

  var searchItems = <String>[];

  @override
  void initState() {
    searchItems = mainItems;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      searchItems = mainItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Course Lists',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
              ),
              child: CareerQuizWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
              ),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.start,
                cursorColor: Colors.black,
                cursorOpacityAnimates: true,
                controller: editingController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Type Here Search Courses",
                  focusColor: kPrimaryColor,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                ),
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 25,
                ),
                itemCount: editingController!.text.isNotEmpty
                    ? searchItems.length
                    : mainItems.length,
                itemBuilder: (context, index) {
                  return CourseTile(
                      editingController!.text.isNotEmpty
                          ? searchItems[index]
                          : mainItems[index],
                      index,
                      false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
