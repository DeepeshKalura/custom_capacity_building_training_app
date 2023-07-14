import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 0),
            child: Stack(
              children: [
                Positioned(
                  top: -12,
                  right: -30,
                  child: SvgPicture.asset(
                    "assets/svg/profile.svg",
                    height: 93,
                    width: 110,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Hello,",
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: Colors.grey[700],
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    SizedBox(
                      height: 50.0,
                      child: RichText(
                        text: TextSpan(
                          text: "Priya Sharma",
                          style: Theme.of(context).textTheme.displayLarge,
                          children: [
                            TextSpan(
                              text: String.fromCharCode(0x270B),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    color: Colors.indigo,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 50,
                  top: -4,
                  child: SvgPicture.asset("assets/svg/star.svg"),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 20.0,
                  right: 12.0,
                  bottom: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        top: 8.0,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.72,
                        // height: 50,
                        child: TextField(
                          controller: _searchController,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            hintText: 'Search',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: () {
                                _searchController.clear();
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2065CC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/svg/filter.svg",
                          fit: BoxFit.fill,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                ),
                child: Text(
                  "Course",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  top: 12,
                ),
                child: Row(
                  children: [
                    ElevatedRowIconWidget(
                      text: "All Topics",
                      icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/svg/fire.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      onPressed: () {},
                      width: 160,
                      height: 55,
                      color: const Color.fromARGB(255, 73, 146, 255),
                    ),
                    const SizedBox(width: 12),
                    ElevatedRowIconWidget(
                      text: "Popular",
                      icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color(0xfff9ae2b),
                        child: SvgPicture.asset(
                          "assets/svg/thunder.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      onPressed: () {},
                      width: 160,
                      height: 55,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  top: 12,
                ),
                child: Row(
                  children: [
                    ElevatedRowIconWidget(
                      text: "Newest",
                      icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromRGBO(114, 127, 180, 1),
                        child: SvgPicture.asset(
                          "assets/svg/full_star.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      onPressed: () {},
                      width: 160,
                      height: 55,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 12),
                    ElevatedRowIconWidget(
                      text: "Advance",
                      icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color(0xff54ad67),
                        child: SvgPicture.asset(
                          "assets/svg/bookmark.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      onPressed: () {},
                      width: 160,
                      height: 55,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  top: 22,
                ),
                child: CourseInfoCantainerWidget(
                  title: "Flutter Course",
                  subtitle: "Created by Deepedh Kalura",
                  color: const Color.fromARGB(255, 73, 146, 255),
                  image: "assets/svg/laptop_girl.svg",
                  lesson: 12,
                  time: 2,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElevatedRowIconWidget extends StatelessWidget {
  const ElevatedRowIconWidget({
    super.key,
    this.onPressed,
    required this.text,
    required this.icon,
    required this.color,
    this.width = 180,
    this.height = 60,
  });
  final void Function()? onPressed;
  final String text;
  final Widget icon;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0.0),
        backgroundColor: MaterialStateProperty.all<Color>(
          color,
        ),
        fixedSize: MaterialStateProperty.all<Size>(
          Size(width, height),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Text(
            text,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}

class CourseInfoCantainerWidget extends StatelessWidget {
  const CourseInfoCantainerWidget({
    super.key,
    this.onPressed,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.lesson,
    required this.time,
    required this.color,
  });
  final void Function()? onPressed;
  final String title;
  final String subtitle;
  final String image;
  final int lesson;
  final int time;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.58,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 7,
            left: 27,
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white.withOpacity(0.1),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.58,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    left: 12.0,
                    right: 12.0,
                  ),
                  child: SvgPicture.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 12.0,
                ),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    left: 12.0,
                  ),
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      left: 12.0,
                    ),
                    child: Text(
                      "$lesson lesson",
                      style: Theme.of(context).textTheme.displaySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      left: 12.0,
                    ),
                    child: Text(
                      "$time hours",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
