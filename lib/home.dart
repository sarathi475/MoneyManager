import 'dart:math';

import 'package:flutter/material.dart';
import 'package:money_manager/budget_widget.dart';
import 'package:money_manager/category_list.dart';
import 'package:money_manager/constant.dart';
import 'package:money_manager/model.dart';
import 'package:money_manager/transaction_list.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static List<Expence> sampleData = [
    Expence(
        id: 1,
        category: "Food",
        note: "Morning Food",
        date: "12/Jan/2022",
        price: "200",
        spendStatus: true),
    Expence(
        id: 1,
        category: "Food",
        note: "lunch Food",
        date: "22/Jan/2022",
        price: "100",
        spendStatus: false),
    Expence(
        id: 1,
        category: "Food",
        note: "Morning Food",
        date: "12/Jan/2022",
        price: "200",
        spendStatus: true),
    Expence(
        id: 1,
        category: "Food",
        note: "lunch Food",
        date: "22/Jan/2022",
        price: "100",
        spendStatus: false),
    Expence(
        id: 1,
        category: "Food",
        note: "Morning Food",
        date: "12/Jan/2022",
        price: "200",
        spendStatus: true),
    Expence(
        id: 1,
        category: "Food",
        note: "lunch Food",
        date: "22/Jan/2022",
        price: "100",
        spendStatus: false),
    Expence(
        id: 1,
        category: "Food",
        note: "Morning Food",
        date: "12/Jan/2022",
        price: "200",
        spendStatus: true),
    Expence(
        id: 1,
        category: "Food",
        note: "lunch Food",
        date: "22/Jan/2022",
        price: "100",
        spendStatus: false)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Expence monitor"),
        // ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 20, decoration: BoxDecoration(color: kPrimaryColor)),
              Container(
                height: 100,
                // transform: Matrix4.rotationZ(3 / 25),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: kPrimaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hay, Parthasarathy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Saturday",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800"),
                    )
                  ],
                ),
              ),
              BudgetInfoDisplay(),
              SizedBox(
                height: 20,
              ),
              Text("Category:"),
              HomeCategoryList(),
              Text("Recent Transactions:"),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: TransactionList(sampleData: sampleData),
              )
            ],
          ),
        ),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      child: Icon(Icons.add),
      closedForegroundColor: Colors.black,
      openForegroundColor: Colors.white,
      closedBackgroundColor: Colors.white,
      openBackgroundColor: Colors.black,
      labelsBackgroundColor: Colors.white,
      speedDialChildren: <SpeedDialChild>[
        SpeedDialChild(
          child: Icon(Icons.currency_rupee),
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
          label: 'Spend',
          onPressed: () {},
          closeSpeedDialOnPressed: false,
        ),
        SpeedDialChild(
          child: Icon(Icons.currency_rupee),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          label: 'Income',
          onPressed: () {},
        ),
        //  Your other SpeedDialChildren go here.
      ],
    );
  }
}
