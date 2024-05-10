import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(initState: (_) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // Menampilkan dialog setelah frame pertama dirender
          _showDialog();
        });
      }, builder: (_) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 38,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Heading(),
                ),
                const SizedBox(
                  height: 24,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          color: Colors.white,
                        ),
                        height: 110,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: SizedBox(
                            width: 106,
                            height: 110,
                            child: Image.asset(
                              'assets/images/mascot.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                "Jadilah Ilmuwan!",
                                style: TextStyle(
                                  fontFamily: "Gilroy-Bold",
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                "Ayo kita bereksperimen!",
                                style: TextStyle(
                                  color: Color(
                                    0xff90A8BF,
                                  ),
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 34,
                                ),
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(
                                      Routes.PERMISSION_CAMERA_SCANNER,
                                    );
                                  },
                                  child: SizedBox(
                                    width: double.infinity,
                                  child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            width: 18,
                                            height: 18,
                                            'assets/images/camera.png',
                                          ),
                                          const SizedBox(
                                            width: 9,
                                          ),
                                          const Text(
                                            "Magic Card",
                                            style: TextStyle(
                                              fontFamily: "Gilroy",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void _showDialog() {
    Get.dialog(
      Dialog(
        clipBehavior: Clip.none,
        insetPadding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // Isi dialog di sini
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 237.12,
              height: 400,
              child: Image.asset(
                'assets/images/alert_dialog.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  17,
                ),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(
                left: 120,
                top: 100,
                right: 40,
              ),
              height: 160,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selamat datang di Elemento',
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.28,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Mari jelajahi dunia Kimia yang menyenangkan bersama, buat keajaiban baru disini.",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Color(
                        0xff5D5F60,
                      ),
                      height: 140 / 100,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8.17,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        "Klik untuk lanjut",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: '"Kimia itu ibarat',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: "Gilroy-Bold"
        ),
        children: [
          TextSpan(
            text: " puzzle ",
            style: TextStyle(
              color: Color(
                0xffFF51A2,
              ),
            ),
          ),
          TextSpan(
            text:
                'yang mengasyikkan. Tiap eksperimen akan selalu menyenangkan."',
          ),
        ],
      ),
    );
  }
}
