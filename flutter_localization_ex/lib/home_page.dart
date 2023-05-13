import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization_ex/localization_checker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("easy_localization".tr()),
        actions: [
          Tooltip(
              message: "change_language".tr(),
              child: IconButton(
                  onPressed: () {
                    LocalizationChecker.changeLanguge(context);
                  },
                  icon: const Icon(Icons.language)))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart, //keep eye on this
                child: Card(
                  margin: const EdgeInsetsDirectional.only(
                      top: 15, start: 15), //keep eye on this
                  color: Colors.lightBlue[200],
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 25, end: 15, bottom: 5, top: 5),
                    child: Text(
                      "personal_details".tr(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/girl.png",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"elsa".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"female".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"age".tr()}: 23",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"actress".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/boy.png",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"john".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"male".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"age".tr()}: 29",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"engineer".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/girl3.png",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"ema".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"female".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"age".tr()}: 23",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"chef".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
