import 'package:flutter/material.dart';
import 'package:hungry/views/utils/AppColor.dart';

class CustomDropdown extends StatefulWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final List<String> menuItems;

  CustomDropdown({
    @required this.title,
    @required this.menuItems,
    this.padding,
    this.margin,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  static const menuItems = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn1SelectedVal = '1';

   // get menuItems => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: widget.margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              '${widget.title}',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(color: AppColor.primaryExtraSoft, borderRadius: BorderRadius.circular(10)),
            child: DropdownButtonFormField(
              style: TextStyle(fontSize: 14,color: AppColor.primarySoft),
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400]),
                contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none,
              ),
              items: this._dropDownMenuItems,
              value: _btn1SelectedVal,
              onChanged: (value) {
                setState(() => _btn1SelectedVal = value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
