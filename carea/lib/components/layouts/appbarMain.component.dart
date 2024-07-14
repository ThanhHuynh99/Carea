import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class AppbarMain extends StatelessWidget {
  final String? title;
  final bool? search;
  final bool? menu;
  final Function? searchFunction;
  final Function? menuFunction;
  const AppbarMain({
    super.key,
    this.title,
    this.search,
    this.menu,
    this.searchFunction,
    this.menuFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 32,
              height: 32,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "${title}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            search == true
                ? ElevatedButton(
                    onPressed: () {
                      searchFunction!();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      elevation: 0,
                      backgroundColor: Colors.white,
                      minimumSize: const Size(28, 28),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: const Icon(
                      BoxIcons.bx_search,
                      size: 28,
                      color: Colors.black,
                    ))
                : const SizedBox(),
            menu == true
                ? ElevatedButton(
                    onPressed: () {
                      menuFunction!();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      side: const BorderSide(width: 2, color: Colors.black),
                      elevation: 0,
                      backgroundColor: Colors.white,
                      minimumSize: const Size(28, 28),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: const Icon(
                      HeroIcons.ellipsis_horizontal,
                      size: 24,
                      color: Colors.black,
                    ))
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
