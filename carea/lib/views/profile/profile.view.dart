import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../components/layouts/appbarMain.component.dart';
import '../../constants/colors.constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String defaultAvatar =
      "https://images.unsplash.com/photo-1684510032997-6df5513d162f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80https://images.unsplash.com/photo-1684510032997-6df5513d162f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AppbarMain(
              title: "Profile",
              search: true,
              menu: true,
              searchFunction: () {},
              menuFunction: () {},
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(129),
                        child: Container(
                          width: 120,
                          height: 120,
                          color: Color(COLOR.light),
                          child: CachedNetworkImage(
                            imageUrl: defaultAvatar,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      Positioned(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            minimumSize: const Size(24, 24),
                            elevation: 0,
                          ),
                          child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Icon(
                                HeroIcons.pencil,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        right: 0,
                        bottom: -8,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Andrew Ainsley",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(COLOR.dark)),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "+1 111 467 378 399",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(COLOR.dark)),
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFFEEEEEE),
                  ),
                  const SizedBox(height: 10),
                  ButtonProfileSetting(
                    label: "Edit profile",
                  ),
                  ButtonProfileSetting(
                    label: "Address",
                  ),
                  ButtonProfileSetting(
                    label: "Notification",
                  ),
                  ButtonProfileSetting(
                    label: "Payment",
                  ),
                  ButtonProfileSetting(
                    label: "Security",
                  ),
                  ButtonProfileSetting(
                    label: "Privacy Policy",
                  ),
                  ButtonProfileSetting(
                    label: "Help Center",
                  ),
                  ButtonProfileSetting(
                    label: "Invited Friends",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ButtonProfileSetting extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final Function? function;
  const ButtonProfileSetting({
    super.key,
    this.label,
    this.icon,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          function!();
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          minimumSize: const Size(double.infinity, 40),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Iconsax.profile_tick,
              size: 24,
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              "${label}",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Spacer(),
            Icon(
              HeroIcons.chevron_right,
              size: 24,
              color: Colors.black,
            )
          ],
        ));
  }
}
