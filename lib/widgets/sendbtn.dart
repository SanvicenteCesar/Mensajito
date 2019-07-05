import 'package:flutter_web/material.dart';
import '../utils/responsiveLayout.dart';

class SendBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,

        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Descargar",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat-Bold",
                          fontSize: ResponsiveLayout.isSmallScreen(context)
                              ? 12
                              : ResponsiveLayout.isMediumScreen(context)
                                  ? 12
                                  : 16,
                          letterSpacing: 1.0)),
                  SizedBox(
                    width: ResponsiveLayout.isSmallScreen(context)
                        ? 4
                        : ResponsiveLayout.isMediumScreen(context) ? 6 : 8,
                  ),
                  Image.network(
                    "assets/sent.png",
                    color: Colors.white,
                    width: ResponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ResponsiveLayout.isMediumScreen(context) ? 12 : 20,
                    height: ResponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ResponsiveLayout.isMediumScreen(context) ? 12 : 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
