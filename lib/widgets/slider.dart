import 'package:flutter/material.dart';
import '../models/utils.dart';
import '../widgets/custom_draw.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double progressval = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return SweepGradient(
                startAngle: degToRad(0),
                endAngle: degToRad(184),
                colors: [
                  Colors.blue[600]!,
                  Colors.grey.withAlpha(50),
                ],
                stops: [
                  progressval,
                  progressval,
                ],
                transform: GradientRotation(
                  degToRad(178),
                ),
              ).createShader(rect);
            },
            child: Center(
              child: CustomArc(),
            ),
          ),
          Center(
            child: Container(
              width: kDiameter - 30,
              height: kDiameter - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 20,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    spreadRadius: 10,
                    color: Colors.blue.withAlpha(
                        normalize(progressval * 20000, 100, 255).toInt()),
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: SleekCircularSlider(
                min: kMinDegree,
                max: KmaxDegree,
                initialValue: 22,
                appearance: CircularSliderAppearance(
                  startAngle: 180,
                  angleRange: 180,
                  size: kDiameter - 30,
                  customWidths: CustomSliderWidths(
                    trackWidth: 10,
                    shadowWidth: 0,
                    progressBarWidth: 01,
                    handlerSize: 15,
                  ),
                  customColors: CustomSliderColors(
                    hideShadow: true,
                    progressBarColor: Colors.transparent,
                    trackColor: Colors.transparent,
                    dotColor: Colors.blue[600],
                  ),
                ),
                onChange: (value) {
                  setState(() {
                    progressval = normalize(value, kMinDegree, KmaxDegree);
                  });
                },
                innerWidget: (percentage) {
                  return Center(
                    child: Text(
                      '${percentage.toInt()}°c',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
