import 'package:e_library/user_screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController controller2;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
    _splashDelay();
    animatio2();
  }

  void animatio2() {
    controller2 = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
      upperBound: 100.0,
      lowerBound: 0.0,
    );
    controller2.forward();
    controller2.addListener(() {
      setState(() {});
      print(controller2.value);
    });
  }

  _splashDelay() async {
    await Future.delayed(Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        'Loading my books',
                        style: TextStyle(
                          color: Colors.cyan.shade700,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        '${controller2.value.toInt()}%',
                        style: TextStyle(
                          color: Colors.cyan.shade700,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/background3.jpg'),
            fit: BoxFit.cover,
          ))),
    );
  }
}
