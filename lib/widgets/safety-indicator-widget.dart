// ignore_for_file: file_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/inspect-api-provider.dart';

class SafetyIndicatorWidget extends StatelessWidget {
  const SafetyIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (
        BuildContext context,
        InspectAPIProvider inspectAPIProvider,
        Widget? child,
      ) {
        if (inspectAPIProvider.currentState != InspectAPIState.fetchSucceed) {
          return const SizedBox.shrink();
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Safety Indicator',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
              SfRadialGauge(
                enableLoadingAnimation: true,
                animationDuration: 2000,
                axes: [
                  RadialAxis(
                    pointers: [
                      NeedlePointer(
                        value: inspectAPIProvider
                            .criticalityScoreModel.criticalityScore,
                        needleLength: 0.8,
                        needleEndWidth: 11,
                      ),
                    ],
                    ticksPosition: ElementsPosition.outside,
                    labelsPosition: ElementsPosition.outside,
                    startAngle: 270,
                    endAngle: 270,
                    useRangeColorForAxis: true,
                    interval: 10,
                    axisLabelStyle: const GaugeTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    majorTickStyle: const MajorTickStyle(
                      length: 0.15,
                      lengthUnit: GaugeSizeUnit.factor,
                      thickness: 1,
                    ),
                    minorTicksPerInterval: 4,
                    labelOffset: 15,
                    minorTickStyle: const MinorTickStyle(
                      length: 0.04,
                      lengthUnit: GaugeSizeUnit.factor,
                      thickness: 1,
                    ),
                    canScaleToFit: true,
                    showAxisLine: false,
                    ranges: [
                      GaugeRange(
                        startValue: 0,
                        endValue: 35,
                        color: Colors.red.shade400,
                        sizeUnit: GaugeSizeUnit.factor,
                        rangeOffset: 0.06,
                        startWidth: 0.05,
                        endWidth: 0.25,
                      ),
                      GaugeRange(
                        startValue: 35,
                        endValue: 70,
                        rangeOffset: 0.06,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: Colors.amber.shade400,
                        startWidth: 0.05,
                        endWidth: 0.25,
                      ),
                      GaugeRange(
                        startValue: 70,
                        endValue: 100,
                        rangeOffset: 0.06,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: Colors.green.shade400,
                        startWidth: 0.05,
                        endWidth: 0.25,
                      ),
                    ],
                  ),
                ],
              ),
              if (inspectAPIProvider.criticalityScoreModel.criticalityScore >=
                  60)
                RichText(
                  text: TextSpan(
                    text:
                        'The Threat Station has determined the code is authentic and can be used. It is recommended to use a test the code in a sandbox environment if the aftermath cost is too high. ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'https://forms.gle/dDwwrPEyDYRUPwrWA',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse(
                                'https://forms.gle/dDwwrPEyDYRUPwrWA',
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              if (inspectAPIProvider.criticalityScoreModel.criticalityScore <
                      60 &&
                  inspectAPIProvider.criticalityScoreModel.criticalityScore >=
                      30)
                RichText(
                  text: TextSpan(
                    text:
                        'The Threat Station is unable to assess how genuine the code is due to a number of conflicting factors. The code insights presented could help you make a decision. Please complete this form if you think the prediction is inaccurate in any way. ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'https://forms.gle/dDwwrPEyDYRUPwrWA',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse(
                                'https://forms.gle/dDwwrPEyDYRUPwrWA',
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              if (inspectAPIProvider.criticalityScoreModel.criticalityScore <
                  30)
                RichText(
                  text: TextSpan(
                    text:
                        'The Threat Station has determined the code is spurious and unusable. It is recommended to use a sandbox environment and test the code if it is truly essential to use it. ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'https://forms.gle/dDwwrPEyDYRUPwrWA',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                              Uri.parse(
                                'https://forms.gle/dDwwrPEyDYRUPwrWA',
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
            ],
          );
        }
      },
    );
  }
}
