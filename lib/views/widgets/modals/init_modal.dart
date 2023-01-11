import 'package:flutter/material.dart';
import 'package:hungry/views/screens/page_switcher.dart';
import 'package:hungry/views/utils/AppColor.dart';
import 'package:hungry/views/widgets/custom_dropdown.dart';
import 'package:hungry/views/widgets/custom_text_field.dart';
import 'package:hungry/views/widgets/modals/login_modal.dart';

class InitModal extends StatefulWidget {
  @override
  State<InitModal> createState() => _InitModalState();
}

class _InitModalState extends State<InitModal> {

  static const menuItems = <String>[
    'One',
    'Two',
    'Three',
    'Four',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 85 / 100,
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            physics: BouncingScrollPhysics(),
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 35 / 100,
                  margin: EdgeInsets.only(bottom: 20),
                  height: 6,
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
                ),
              ),
              // header
              Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: 'inter'),
                ),
              ),
              // Form
              // CustomTextField(title: 'Email', hint: 'youremail@email.com'),
              CustomDropdown(title: 'Table No.', menuItems: menuItems,),
              CustomTextField(title: 'Dine In Person', hint: 'How many person', margin: EdgeInsets.only(top: 16)),
              // CustomTextField(title: 'Full Name', hint: 'Your Full Name', margin: EdgeInsets.only(top: 16)),
              // CustomTextField(title: 'Password', hint: '**********', obsecureText: true, margin: EdgeInsets.only(top: 16)),
              // CustomTextField(title: 'Retype Password', hint: '**********', obsecureText: true, margin: EdgeInsets.only(top: 16)),
              // Register Button
              Container(
                margin: EdgeInsets.only(top: 32, bottom: 6),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PageSwitcher()));
                  },
                  child: Text('Next', style: TextStyle(color: AppColor.secondary, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'inter')),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: AppColor.primarySoft,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
