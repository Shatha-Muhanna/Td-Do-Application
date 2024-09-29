import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/ui/pages/notification_screen.dart';
import 'package:todo/ui/widgets/button.dart';

import '../../services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData? ic_switch;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ic_switch = ThemeServices().theme == ThemeMode.light?Icons.sunny:Icons.mode_night_rounded;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ThemeServices().switchTheme();
            Get.to(const NotificationScreen(payload: "shatha|fdgdf|gIfgg"));
          },
          icon: Icon(
            ic_switch,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(child: MyButton(label: "Add Task",onTab:(){} ,))
    );
  }
}
