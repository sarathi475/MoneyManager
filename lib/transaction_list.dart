import 'package:flutter/material.dart';
import 'package:money_manager/constant.dart';
import 'package:money_manager/model.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key, required this.sampleData}) : super(key: key);
  final List<Expence> sampleData;

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.sampleData.length,
        itemBuilder: (context, index) {
          return TransactionSingleCard(record: widget.sampleData[index]);
        });
  }
}

class TransactionSingleCard extends StatelessWidget {
  final Expence record;
  const TransactionSingleCard({
    Key? key,
    required this.record,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(top: 6, bottom: 6),
        child: Container(
          height: 60,
          padding: EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 50,
                  height: 50,
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=90&q=60"),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: record.spendStatus
                                ? Colors.redAccent
                                : Colors.green),
                        child: Icon(
                          record.spendStatus
                              ? Icons.arrow_circle_up
                              : Icons.arrow_circle_down,
                          color: Colors.white,
                          size: Size(20, 20).width,
                        ),
                      ),
                    )
                  ])),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        record.category,
                        style: kExpenceCategoryStyle,
                      ),
                      Text(
                        record.price,
                        style: kExpenceAmountStyle,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        record.date,
                        style: kExpenceDateStyle,
                      ),
                      Text(
                        "${record.spendStatus ? "Spend" : "Income"}",
                        style: kExpenceStyle(status: record.spendStatus),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
