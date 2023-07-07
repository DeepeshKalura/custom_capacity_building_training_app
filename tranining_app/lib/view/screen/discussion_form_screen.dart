import 'package:flutter/material.dart';

class DiscussionFormScreen extends StatefulWidget {
  const DiscussionFormScreen({Key? key}) : super(key: key);

  @override
  State<DiscussionFormScreen> createState() => _DiscussionFormScreenState();
}

class _DiscussionFormScreenState extends State<DiscussionFormScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);

    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! navigation menu, search forums, create new forum
      appBar: AppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
              left: 12,
              right: 25,
            ),
            child: Text(
              'Forums',
              style: TextStyle(
                // TODO: Remove hardcoded font size with predefined font theme
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
              left: 12,
              right: 30,
              bottom: 20,
            ),
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              left: 20,
              right: 12,
            ),
            height: 200,
            // width: 200,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ! Add a text theme and dynamic data into these
                const Text('Week 1'),
                const Text('Discuss the topic here'),
                const Text('746 thread, 14 minutes'),
                // * Add Outline button here read about 5 types of buttons in flutter
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Go to discussion ->",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ! tabcontroller to make tabs design here
          SizedBox(
            width: double.infinity,
            child: TabBar(
              labelColor: const Color.fromARGB(255, 13, 4, 185),
              indicatorColor: const Color.fromARGB(255, 13, 4, 185),
              unselectedLabelColor: Colors.grey,
              controller: _tabController,
              tabs: const [
                Tab(
                  text: 'All Forums',
                ),
                Tab(
                  text: 'Posted for you',
                ),
                Tab(
                  text: 'Your Activity',
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 250,
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    height: 700,
                    constraints: const BoxConstraints(
                      maxHeight: 900,
                    ),
                    child: const Column(
                      children: [
                        ForumContainerWidget(
                          title: 'Week 1',
                          description: 'Discuss the topic here',
                          thread: '746',
                          time: '14 minutes',
                        ),
                        ForumContainerWidget(
                          title: 'Week 2',
                          description: 'Discuss the topic here',
                          thread: '746',
                          time: '14 minutes',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ForumContainerWidget extends StatelessWidget {
  final String title;
  final String description;
  final String thread;
  final String time;
  const ForumContainerWidget({
    super.key,
    required this.title,
    required this.description,
    required this.thread,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 12,
        right: 30,
        bottom: 20,
      ),
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 20,
        right: 12,
      ),
      height: 200,
      // width: 200,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Text(description),
          Text("$thread thread, $time"),
          // * Add Outline button here read about 5 types of buttons in flutter
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
              ),
              child: const Text(
                "Go to discussion ->",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ! here is an issue in single child scroll view that it is not scrolling full screen