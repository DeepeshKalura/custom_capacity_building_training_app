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
          const Text('Forums'),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ! Add a text theme and dynamic data into these
                const Text('Title'),
                const Text('Sub-descriptions'),
                const Text('Number of discussions, last posted time'),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Go to discussion"),
                ),
              ],
            ),
          ),
          // ! tabcontroller to make tabs design here
          SizedBox(
            width: double.infinity,
            child: TabBar(
              labelColor: const Color.fromRGBO(4, 2, 46, 1),
              indicatorColor: const Color.fromRGBO(4, 2, 46, 1),
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
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
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
