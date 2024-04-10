import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:dear_diary/constants/strings.dart';
import 'package:lottie/lottie.dart';
import '../constants/assets.dart';
import '../constants/colors.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              FadeInRight(
                duration: const Duration(milliseconds: 1500),
                child: Lottie.asset(
                  AppAssets.signinLottie,
                  fit: BoxFit.cover,
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                delay: const Duration(milliseconds: 500),
                child: Container(
                  padding:
                  const EdgeInsets.only(left: 30, top: 20, bottom: 10, right: 30),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(milliseconds: 1000),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "to start write..",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(milliseconds: 1000),
                        child: Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/toAuthRoute");
                            },
                            child: Text(
                              AppStrings.loginButtonText,
                              style: const TextStyle(color: Colors.black, fontSize: 18,),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(milliseconds: 1000),
                        child: Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/toAuthRoute");
                            },
                            child: Text(
                              AppStrings.registerButtonText,
                              style: const TextStyle(color: Colors.black, fontSize: 18,),
                            ),
                          ),
                        ),
                      ),
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
