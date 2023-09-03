import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_api/components/text_widget.dart';

extension dialogCorrect on BuildContext {
  dialogScreenCorrect() {
    showDialog(
      context: this,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(
                data: 'city add successfully',
                size: 20,
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension dialogWrong on BuildContext {
  dialogScreenWrong() {
    showDialog(
      context: this,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                data: 'city is Already Added !',
                size: 20,
                textColor: Colors.red.shade900,
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
