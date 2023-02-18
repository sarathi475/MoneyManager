import 'package:flutter/material.dart';
import 'package:money_manager/constant.dart';

class BudgetInfoDisplay extends StatelessWidget {
  const BudgetInfoDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kPrimaryColor),
      height: 180,
      child: Center(
        child: Container(
          height: 60,
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(50)),
          child: Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.green[200],
                        // borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(50),
                        //     bottomLeft: Radius.circular(50)),
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Income",
                          style: kBudgetTitleStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$4000",
                          style: kBudgetTitleStyle,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.redAccent[100],
                        // borderRadius: BorderRadius.only(
                        //     topRight: Radius.circular(50),
                        //     bottomRight: Radius.circular(50)),
                        ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Expence",
                          style: kBudgetTitleStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$2000",
                          style: kBudgetTitleStyle,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Budget",
                      style: kBudgetTitleStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$5000",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
