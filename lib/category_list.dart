import 'package:flutter/material.dart';
import 'package:money_manager/constant.dart';
import 'dart:math' as math;

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = -1;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this)
          ..stop();
  }

  static List<String> sampleList = [
    "Food",
    "travel",
    "Expence",
    "Family",
    "Savings",
    "Rent"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      decoration: BoxDecoration(
        color: kLightGrayColor,
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: AnimatedBuilder(
        builder: (context, child) => Transform.rotate(
          child: child,
          angle: _animationController.value * 1.0 * math.pi,
        ),
        animation: _animationController,
        child: ListView.separated(
            itemCount: sampleList.length,
            // padding: EdgeInsets.all(2),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (content, index) {
              return SizedBox(
                width: 5,
              );
            },
            itemBuilder: (content, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    print(index);
                    if (_selectedIndex == index) {
                      _selectedIndex = -1;
                    } else {
                      _selectedIndex = index;
                    }
                  });
                },
                child: Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: index == _selectedIndex
                          ? Colors.deepOrangeAccent
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=90&q=60"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        sampleList[index],
                        style: kExpenceCategoryStyle,
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
