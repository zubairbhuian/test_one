import 'package:flutter/material.dart';
import 'package:test_one/const/app_color.dart';
import 'package:test_one/pages/userform.dart';

class TabOne extends StatefulWidget {
  const TabOne({Key? key}) : super(key: key);

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 250,
          child: Center(
              child: Text(
            "This is some demo text",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          )),
        ),
        Container(
          color: const Color.fromARGB(255, 179, 126, 240),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 18, right: 18),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const UserForm()));
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.access_alarm,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.get_app,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.access_alarm,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.zoom_in_sharp,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.zoom_out_map_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.yard_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: AppColors.primary_color,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.wysiwyg_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Abb photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
