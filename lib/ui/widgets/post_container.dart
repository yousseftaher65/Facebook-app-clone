import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final String postImage;
  final String postTxt;
  final String userImage;
  final String userName;
  final String time;
  final bool isArabic;

  const PostContainer(
      {required this.userName,
      required this.userImage,
      required this.time,
      required this.postTxt,
      required this.postImage,
      this.isArabic = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    userImage,
                    fit: BoxFit.fitWidth,
                    width: 56,
                    height: 56,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        userName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, bottom: 4),
                          child: Text(
                            '${time}h .',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898F9C)),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(Icons.public_sharp,
                            size: 12, color: Colors.grey[700]),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Icon(Icons.more_horiz, size: 33, color: Colors.grey[800])
              ],
            ),
          ),
          Row(
            mainAxisAlignment:
                isArabic ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Container(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  postTxt,
                  softWrap: true,
                  maxLines: 3,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height * 0.7),
            child: Image.asset(
              postImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 38,
                            child: Container(
                              decoration: ShapeDecoration(
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3))),
                              child: Image.asset(
                                'assets/logos/wow Logo.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 19,
                            child: Container(
                              decoration: ShapeDecoration(
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3))),
                              child: Image.asset(
                                'assets/logos/love Logo.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              decoration: ShapeDecoration(
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 3))),
                              child: Image.asset(
                                'assets/logos/like1.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      '100',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
                const Spacer(),
                const Row(
                  children: [
                    Text(
                      '30 Comments',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                const Row(
                  children: [
                    Text(
                      '24 Share',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logos/like.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Like',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/logos/comment.png',
                      height: 20,
                      width: 20,
                      color: Colors.grey[850],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Comment',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/logos/send.png',
                      height: 20,
                      width: 20,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Send',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/logos/share.png',
                      height: 20,
                      width: 20,
                      color: Colors.grey[850],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Share',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
