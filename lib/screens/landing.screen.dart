//           // CachedNetworkImage(
//           //   height: MediaQuery.of(context).size.height * 0.4,
//           //   imageUrl: "https://www.askideas.com/media/13/Welcome-Picture.jpg",
//           //   placeholder: (context, url) => Center(child: CircularProgressIndicator()),
//           // ),
//           Image.asset(
//             'assets/images/image.jpg',
//             height: MediaQuery.of(context).size.height * 0.4,
//             fit: BoxFit.contain,
//           ),
import 'package:final_project/screens/login.screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  // Widget _buildFullscreenImage() {
  //   return Image.network(
  //     'https://raw.githubusercontent.com/Pyozer/introduction_screen/master/example/assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.network(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 5000,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "E-Study",
          body:
              "Internet based study plays a great role in modern educational system.",
          image: Image.asset(
            'assets/images/estudy.png',
            height: 295,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "About Us ",
          body:
              " helps student find the answers they need, when they need them.",
          image: Image.asset(
            'assets/images/es.jpg',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Benefits of Being  Active on E-Study",
          body:
              "An obvious benefit from participating in the e-study community is the ability to find answers to your course-related questions",
          image: Image.asset(
            'assets/images/mb.png',
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "A question and answer mobile app",
          decoration: pageDecoration.copyWith(
            bodyTextStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: Image.asset(
            'assets/images/web.jpg',
          ),
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => introKey.currentState
          ?.animateScroll(3), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      // rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        'Skip',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      next: const Icon(Icons.arrow_forward),
      done: const Text(
        'Get started',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
