import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/model/course_desc.dart';
import 'package:Skill_Quest/model/course_links.dart';
import 'package:Skill_Quest/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CourseDetails extends StatefulWidget {
  final String itemName;
  final int itemIndex;
  final bool isViewFromDashboard;

  const CourseDetails(this.itemName, this.itemIndex, this.isViewFromDashboard,
      {super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  late YoutubePlayerController _videoController;

  @override
  void deactivate() {
    _videoController.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    final url = courseLinks[widget.itemIndex];

    _videoController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String? desc = courseDesc[widget.itemIndex];

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _videoController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: kPrimaryColor,
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: const Text(
            'Course Details',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: Container(
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                player,
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/courseIcon.png",
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Flexible(
                      child: Text(
                        widget.itemName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Description:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (MediaQuery.of(context).size.width - 50),
                          child: Text(
                            desc,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            _videoController.value.isPlaying
                                ? _videoController.pause()
                                : _videoController.play();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25),
                              ),
                              border: Border.all(
                                width: 2,
                                color: kPrimaryColor,
                              ),
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width - 150,
                            margin: const EdgeInsets.only(
                              left: 50,
                              right: 50,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconlyBold.arrow_right_2,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Center(
                                  child: Text(
                                    'Start Course',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    widget.isViewFromDashboard
                        ? const SizedBox(
                            width: 15,
                          )
                        : Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    enrolled = true;
                                    enrolledCourseIndex.add(widget.itemIndex);
                                    updateEnrollmentStatus();
                                    Navigator.popAndPushNamed(
                                        context, '/navbar');
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black87,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                    border: Border.all(
                                      width: 2,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 150,
                                  margin: const EdgeInsets.only(
                                    left: 50,
                                    right: 50,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        IconlyBold.download,
                                        color: kPrimaryColor,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          'Enroll',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
