import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Responsive Text',
            style: TextStyle(
              fontSize: getResponsiveFontsize(context, fontsize: 18),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'How to handle responsive font size to our platforms',
            style: TextStyle(
              fontSize: getResponsiveFontsize(context, fontsize: 26) ,
            ),
          ),
        ],
      ),
    );
  }

  double getResponsiveFontsize(BuildContext context,
      {required double fontsize}) {
    double scaleFactor = getScaleFactor(context);

    double responsiveFontSzie = scaleFactor * fontsize;
    double lowerLimit = 0.85 * responsiveFontSzie;
    double upperLimit = 1.25 * responsiveFontSzie;

    return responsiveFontSzie.clamp(lowerLimit, upperLimit);
  }
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width <= 600) {
    return width / 400;
  } else if (width <= 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
