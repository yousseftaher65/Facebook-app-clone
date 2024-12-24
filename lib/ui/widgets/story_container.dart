import 'package:flutter/material.dart';

class StoryContainer extends StatelessWidget {
  final bool story;
  final String storyimage;
  final String profImage;
  final String userName;
  const StoryContainer(
      {required this.storyimage,
      required this.userName,
      required this.profImage,
      this.story = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0, right: 2, top: 11),
      child: story
          ? Stack(
              children: [
                Container(
                  width: 112,
                  height: 178,
                  foregroundDecoration: ShapeDecoration(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      storyimage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  bottom: 18,
                  child: SizedBox(
                    width: 105,
                    child: Text(
                      userName,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              const BorderSide(color: Color(0xff1877F2), width: 2),
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          profImage,
                          width: 43,
                          height: 43,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: 112,
                      height: 178,
                      foregroundDecoration: ShapeDecoration(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          storyimage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 54,
                      width: 112,
                      child: const Text(
                        'Create a \n   Story',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                      bottom: 42,
                      child: Container(
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color: Colors.white))),
                        child: const Icon(
                          Icons.add_circle,
                          color: Color(0xff1877F2),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
