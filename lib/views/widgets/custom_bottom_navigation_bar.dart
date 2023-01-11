import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/views/utils/AppColor.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  Function onItemTapped;
  CustomBottomNavigationBar({@required this.selectedIndex, @required this.onItemTapped});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 60, right: 60, bottom: 20),
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            currentIndex: widget.selectedIndex,
            onTap: widget.onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              (widget.selectedIndex == 0)
                  ? BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.home, color: AppColor.primary), label: '')
                  : BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.home, color: Colors.grey[600]), label: ''),
              (widget.selectedIndex == 1)
                  ? BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.cash, color: AppColor.primary), label: '')
                  : BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.cash, color: Colors.grey[600]), label: ''),
              (widget.selectedIndex == 2)
                  ? BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.history, color: AppColor.primary), label: '')
                  : BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.history, color: Colors.grey[600]), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
