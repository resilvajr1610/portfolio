import 'package:flutter/material.dart';
import '../uteis/responsivo.dart';
import 'MOBILE/home_mobile.dart';
import 'WEB/home_web.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsivo(
        mobile: HomeMobile(),
        tablet: HomeWeb(),
        web: HomeWeb()
    );
  }
}
