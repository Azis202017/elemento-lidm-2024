import 'package:flutter/material.dart';
import 'package:flutter_embed_unity_android_example/theme/color.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../splash_1/views/splash_1_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (_) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical:42,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: SplashScreen(
                      image: "assets/images/mascot_splas.png",
                      width: 250.04,
                      height: 158.01,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Selamat datang kembali!",
                      style: TextStyle(
                        fontFamily: "Gilroy-Bold",
                        fontSize: 22,
                        color: Color(
                          0xff1c1c1c,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Masukkan email dan password untuk kembali masuk ke dalam akunmu.",
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(
                        0xff90a8bf,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const TextEditing(
                    title: "Email",
                    hint: "Masukkan email",
                    textInput: TextInputType.emailAddress,
                  ),
                  TextEditing(
                    title: "Password",
                    hint: "Masukkan password",
                    showObsecure: controller.showObsecure,
                    obsecureText: controller.obsecureText,
                    icon: Image.asset(
                      "assets/images/iconly-bold-show.png",
                      width: 16.63,
                      height: 13.33,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox.adaptive(
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onChanged: controller.checkRemindMe,
                            value: controller.isRemindMe,
                            activeColor: const Color(0xffFF7A00),
                          ),
                          const Text(
                            "Ingat Saya",
                            style: TextStyle(
                              color: Color(0xFF1D2E42),
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Lupa Password",
                        style: TextStyle(
                          color: Color(0xFF1D2E42),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  SizedBox(
                    height: 51.70,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOME,);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Gilroy-Bold',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class TextEditing extends StatelessWidget {
  final String title;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? textInput;
  final Widget? icon;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;

  final bool obsecureText;
  final void Function()? showObsecure;
  final String? Function(String? value)? validator;
  const TextEditing({
    super.key,
    required this.title,
    this.hint,
    this.controller,
    this.obsecureText = false,
    this.icon,
    this.focusNode,
    this.showObsecure,
    this.onEditingComplete,
    this.textInput,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1D2E42),
            fontSize: 14,
            fontFamily: 'Gilroy-Bold',
            height: 0.12,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          focusNode: focusNode,
          keyboardType: textInput,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w400,
          ),
          cursorColor: pinkColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              top: 16,
              left: 16,
              bottom: 0,
            ),
            hintText: hint,
            suffixIconConstraints: const BoxConstraints(
              minWidth: 16.67,
              minHeight: 13.33,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Material(
                color: Colors.transparent,
                // Adjust the value as needed
                clipBehavior: Clip.antiAlias,

                child: InkWell(
                  // Adjust the value as needed
                  onTap: showObsecure,
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: IconButton(
                      splashRadius: 20,
                      padding: EdgeInsets.zero,
                      onPressed: showObsecure,
                      icon: icon ?? const SizedBox(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          obscureText: obsecureText,
          controller: controller,
          onEditingComplete: onEditingComplete,
          validator: validator,
        ),
      ],
    );
  }
}
