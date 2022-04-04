import 'package:date_time_picker/date_time_picker.dart';
import 'package:facebook_clone/config/navigation.dart';
import 'package:facebook_clone/screens/auth/constants.dart';
import 'package:facebook_clone/screens/auth/signup/gender.dart';
import 'package:facebook_clone/screens/auth/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class BirthdayScreen extends StatefulWidget {
  BirthdayScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  var _controller1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller1 = TextEditingController(text: DateTime.now().toString());
    getValue();
  }

  Future<void> getValue() async {
    await Future.delayed(const Duration(seconds: 0), () {
      setState(() {
        //_initialValue = '2000-10-22 14:30';
        _controller1.text = '2000-09-20 14:30';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppbar(context, title: 'Birthday'),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                "What's your birthday?",
                style: boldStyle,
              ),
              const SizedBox(height: 10),
              Text(
                "Choose you date of birth",
                style: lightStyle,
              ),
              const SizedBox(height: 5),
              Text(
                "You can always change this later",
                style: lightStyle,
              ),
              const SizedBox(height: 42),
              DateTimePicker(
                type: DateTimePickerType.date,
                dateMask: 'd MMM, yyyy',
                controller: _controller1,
                //initialValue: _initialValue,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: const Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                //use24HourFormat: false,
                //locale: Locale('pt', 'BR'),
                selectableDayPredicate: (date) {
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }
                  return true;
                },
                // onChanged: (val) => setState(() => _valueChanged1 = val),
                // validator: (val) {
                //   setState(() => _valueToValidate1 = val ?? '',);
                //   return null;
                // },
                // onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
              ),
              const SizedBox(height: 30),
              CustomButton(
                  text: 'Next',
                  onPressed: () {
                    push(context, GenderScreen());
                    // DatePicker.showDatePicker(context,
                    //     theme: const DatePickerTheme(
                    //       containerHeight: 210.0,
                    //     ),
                    //     showTitleActions: true,
                    //     minTime:
                    //         DateTime.now().subtract(const Duration(days: 360)),
                    //     maxTime: DateTime.now(), onConfirm: (date) async {
                    //   // ignore: avoid_print
                    //   print('confirm $date');
                    // },
                    //     currentTime:
                    //         DateTime.now().subtract(const Duration(days: 20)),
                    //     locale: LocaleType.en);
                  },
                  padding: size.width)
            ],
          ),
        ),
      ),
    );
  }
}
