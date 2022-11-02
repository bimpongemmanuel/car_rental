import 'package:fire_base_auth/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: '',
            body: '',
            image: Image.asset('images/img.png'),
          ),
           PageViewModel(
            title: '',
            body: '',
            image: Image.asset('images/img1.png'),
          ),
           PageViewModel(
            title: '',
            body: '',
            image: Image.asset('images/img2.png'),
          ),
           PageViewModel(
            title: '',
            body: '',
            image: Image.asset('images/img3.png'),
          ),
        ],
        done: Text('Done'),
        onDone: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage(),)),
        showSkipButton: true,
        skip: Text('Skip'),
        next: Icon(Icons.arrow_forward_ios),
        showNextButton: true,
        dotsDecorator: getDotsDecoration(),
      ),
    );
  }

   PageDecoration getPageDecration() => const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
    imagePadding:  EdgeInsets.all(24),
    // pageColor: const Color(0xDFF0C0B2),
  );

   DotsDecorator getDotsDecoration() => DotsDecorator(
    color: const Color(0xFFBDBDBD),
    size: const Size(10, 10),
    activeSize: const Size(22, 10),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))
  );
}   