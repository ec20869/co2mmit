import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../onboarding/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashscreenWidget extends StatefulWidget {
  SplashscreenWidget({Key key}) : super(key: key);

  @override
  _SplashscreenWidgetState createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF121C41),
      body: SafeArea(
        child: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 0),
                reverseDuration: Duration(milliseconds: 0),
                child: OnboardingWidget(),
              ),
            );
          },
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-0.01, -0.1),
                child: Image.asset(
                  'assets/images/Logo@3x.png',
                  width: 2700,
                  height: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Align(
                alignment: Alignment(0.02, 0.81),
                child: Text(
                  'DIGITAL CARBON FOOTPRINT TRACKER',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Open Sans Condensed',
                    color: Color(0xFF0AB8A9),
                  ),
                ),
              ),
              isIos
                  ? Align(
                      alignment: Alignment(0, 9.2),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final user = await signInWithApple(context);
                          if (user == null) {
                            return;
                          }
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'Overview'),
                            ),
                            (r) => false,
                          );
                        },
                        text: 'Sign in with Apple',
                        icon: FaIcon(
                          FontAwesomeIcons.apple,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          width: 230,
                          height: 44,
                          color: Colors.white,
                          textStyle: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          elevation: 4,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
