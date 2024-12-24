import 'package:facebook_pojo/ui/model/post_model.dart';
import 'package:facebook_pojo/ui/model/story_model.dart';
import 'package:facebook_pojo/ui/widgets/post_field.dart';
import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  static const String tag = 'newsfeed';
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset('assets/logos/Facebook.png',
              width: 156, height: 36),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/Plus (1).png'),
                tooltip: 'Add'),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/Search.png'),
                tooltip: 'Search in Facebook'),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/Messenger.png'),
                tooltip: 'Open Messenger'),
          ],
          bottom: TabBar(
              overlayColor: const WidgetStatePropertyAll(Colors.transparent),
              indicatorColor: const Color(0xff1877F2),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: Image.asset('assets/icons/Vector.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons/Group 17.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons/Store.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons/Profile.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons/Notification.png'),
                ),
                Tab(
                  icon: ClipOval(
                    child: Image.asset(
                      'assets/images/profile/kilyan_mbappe.jpg',
                      fit: BoxFit.cover,
                      width: 37,
                      height: 37,
                    ),
                  ),
                ),
              ]),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => 
           Column(
              children: [
                const PostField(),
                const Divider(
                  thickness: 8,
                  color: Color(
                    0xffd8dade,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: stories.length,
                          itemBuilder: (context, index) {
                            final item = stories[index];
                            return item;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 8,
                  color: Color(
                    0xffd8dade,
                  ),
                ),
                Container(
                  constraints: BoxConstraints( maxWidth: MediaQuery.sizeOf(context).width),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final item = posts[index];
                      return item;
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        thickness: 8,
                        color: Color(
                          0xffd8dade,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}