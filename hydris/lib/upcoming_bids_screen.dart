import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/main_drawer.dart';

class UpcomingBidsScreen extends StatefulWidget {
  @override
  _UpcomingBidsScreenState createState() => _UpcomingBidsScreenState();
}

class _UpcomingBidsScreenState extends State<UpcomingBidsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HydrisAppBar(),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "Upcoming Bids",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(width: 4.0, color: Colors.blue[900])),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text("Number")),
                      DataColumn(label: Text("Description")),
                      DataColumn(label: Text("Date")),
                    ],
                    rows: [
                      DataRow(
                          /*color: MaterialStateProperty.resolveWith((states) {
                            return Colors.blue[900].withOpacity(.1);
                          }),*/
                          cells: [
                            DataCell(Text('82617WS00010')),
                            DataCell(Text(
                                'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                            DataCell(Text('October 2020')),
                          ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('82617WS00010')),
                        DataCell(Text(
                            'BWS-JOC-17G: Job Order Contract-General Construction, Upstate New York')),
                        DataCell(Text('October 2020')),
                      ]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
