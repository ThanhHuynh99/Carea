import 'package:carea/components/layouts/layoutSecond.component.dart';
import 'package:carea/constants/colors.constant.dart';
import 'package:carea/views/auth/forgot_password/verify.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../components/buttons/button.component.dart';

class VerifyTypeScreen extends StatefulWidget {
  const VerifyTypeScreen({super.key});

  @override
  State<VerifyTypeScreen> createState() => _VerifyTypeScreenState();
}

class _VerifyTypeScreenState extends State<VerifyTypeScreen> {
  bool isSelectSMS = false;
  bool isSelectEmail = false;

  void smsSelected() {
    setState(() {
      isSelectSMS = !isSelectSMS;
      isSelectEmail = false;
    });
  }

  void emailSelected() {
    setState(() {
      isSelectEmail = !isSelectEmail;
      isSelectSMS = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutSecond(
      title: "Forgot Password",
      child: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 32),
              Center(
                child: SvgPicture.asset(
                  "assets/images/image_forgot.svg",
                  height: 250,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "Select which contact details should be use to reset your password",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(COLOR.dark),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 26),
              ContactDetail(
                label: "via SMS",
                contents: "+1 111 *******99",
                icon: IonIcons.chatbubble_ellipses,
                isSelected: isSelectSMS,
                function: smsSelected,
              ),
              const SizedBox(height: 26),
              ContactDetail(
                label: "via Email",
                contents: "and***ley@yourdomain.com",
                icon: Iconsax.sms,
                isSelected: isSelectEmail,
                function: emailSelected,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyCodeScreen()));
                },
                style: buttonPrimary,
                child: const SizedBox(
                  height: 58,
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ContactDetail extends StatelessWidget {
  final String label;
  final String contents;
  final IconData icon;
  final bool? isSelected;
  final Function? function;

  const ContactDetail({
    super.key,
    required this.label,
    required this.contents,
    required this.icon,
    this.isSelected = false,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function!();
      },
      borderRadius: BorderRadius.circular(28),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: double.infinity,
        height: 128,
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
                width: 1,
                color: isSelected! ? Color(COLOR.dark) : Color(COLOR.light))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Color(COLOR.light),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 32,
                  color: Color(COLOR.dark),
                ),
              ),
            ),
            const SizedBox(width: 22),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(COLOR.grey)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    contents,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(COLOR.dark)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
