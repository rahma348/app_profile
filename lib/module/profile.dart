// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_local_variable

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Hist extends StatefulWidget {
  const Hist({Key? key}) : super(key: key);

  @override
  State<Hist> createState() => _HistState();
}

class _HistState extends State<Hist> {
  late List<_ChartData> data;

  // late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Sun', 1000),
      _ChartData('Mon', 2000),
      _ChartData('Tue', 1800),
      _ChartData('Wed', 1900),
      _ChartData('Thurs', 1500),
      _ChartData('Fri', 1700),
      _ChartData('Sat', 2000),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Chartdata> chartData = <Chartdata>[
      Chartdata('Sun', 220, 100),
      Chartdata('Mon', 120, 120),
      Chartdata('Tue', 140, 90),
      Chartdata('Wed', 100, 60),
      Chartdata('Thurs', 150, 70),
      Chartdata('Fri', 140, 100),
      Chartdata('Sat', 170, 110),
    ];
    final List<Color> color = <Color>[];
    color.add(Colors.pink[50]!);
    color.add(Colors.pink[100]!);
    color.add(Colors.pink[200]!);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
        LinearGradient(colors: color, stops: stops);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 246, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F6FC),
        title: const Text(
          "Patient / profile",
          style: TextStyle(
              color: Color(0xff0C8A7D),
              fontSize: 36,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            child: buildGenerateReportButton(),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // name & id
                      Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Material(
                            elevation: 3,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            shadowColor: const Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.only(top: 15),
                              height: 205,
                              width: 300,
                              child: Center(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/Group.png",
                                      width: 110,
                                      height: 110,
                                    ),
                                    const SharedColorTextCADBold(
                                        text: "Olivia Connor", fontSize: 30),
                                    const SharedColorTextCADnormal(
                                        text: "ID 1234556", fontSize: 20)
                                  ],
                                ),
                              ),
                            )),
                      ),
                      // Patient Details
                      Container(
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 10),
                          child: Material(
                              elevation: 3,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                height: 220,
                                width: 300,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SharedColorTextCADBold(
                                          text: " Patient Details",
                                          fontSize: 24),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5, bottom: 10),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SharedColorTextCADnormal(
                                                    text: "Gender",
                                                    fontSize: 18),
                                                SharedColorTextCADnormal(
                                                    text: "D.O.B",
                                                    fontSize: 18),
                                                SharedColorTextCADnormal(
                                                    text: "Age", fontSize: 18),
                                                SharedColorTextCADnormal(
                                                    text: "Blood Group",
                                                    fontSize: 18),
                                                SharedColorTextCADnormal(
                                                    text: "Height",
                                                    fontSize: 18),
                                                SharedColorTextCADnormal(
                                                    text: "Weight",
                                                    fontSize: 18),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                left: 80, top: 5, bottom: 10),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                SharedColorTextblack(
                                                    text: "Female",
                                                    fontSize: 18),
                                                SharedColorTextblack(
                                                    text: "1/5/1987",
                                                    fontSize: 18),
                                                SharedColorTextblack(
                                                    text: "37", fontSize: 18),
                                                SharedColorTextblack(
                                                    text: "A+", fontSize: 18),
                                                SharedColorTextblack(
                                                    text: "167", fontSize: 18),
                                                SharedColorTextblack(
                                                    text: "78", fontSize: 18),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ]),
                              ))),
                      // Contact information
                      Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: Material(
                            elevation: 3,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            shadowColor: const Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, bottom: 4),
                                height: 180,
                                width: 300,
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SharedColorTextCADBold(
                                          text: "Contact information ",
                                          fontSize: 20),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Phone.png",
                                            width: 25,
                                            height: 25,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const SharedColorTextCADnormal(
                                              text: "Phone Contact ",
                                              fontSize: 16)
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 30),
                                        child: const SharedColorTextblack(
                                            text: "+2011184521", fontSize: 14),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 30),
                                        child: const SharedColorTextblack(
                                            text: "+2011184521", fontSize: 14),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "images/Email.png",
                                            width: 25,
                                            height: 25,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const SharedColorTextCADnormal(
                                              text: "E-mail ", fontSize: 16)
                                        ],
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 30),
                                          child: const SharedColorTextblack(
                                              text: "fghybhghx85@gmail.com",
                                              fontSize: 14)),
                                    ],
                                  ),
                                ))),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // heart rate &blood pressure & diabetes
                          Row(
                            children: [
                              Container(
                                  height: 200,
                                  width: 360,
                                  padding: const EdgeInsets.only(top: 15),
                                  margin: const EdgeInsets.only(
                                      right: 20, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            "images/Heart with Pulse.png"),
                                        const SharedColorTextCADBold(
                                            text: "Heart Rate", fontSize: 32),
                                        const SharedColorTextblack(
                                            text: "66", fontSize: 26),
                                        const SharedColorTextblack(
                                            text:
                                                "Last Recorded on 9 Mar at 7:64 pm ",
                                            fontSize: 18)
                                      ],
                                    ),
                                  )),
                              Container(
                                  height: 200,
                                  width: 360,
                                  padding: const EdgeInsets.only(top: 15),
                                  margin: const EdgeInsets.only(
                                      right: 20, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/Tonometer.png",
                                          height: 55,
                                          width: 60,
                                        ),
                                        const SharedColorTextCADBold(
                                            text: "Blood Pressure",
                                            fontSize: 32),
                                        const SharedColorTextblack(
                                            text: "118 / 54", fontSize: 26),
                                        const SharedColorTextblack(
                                            text:
                                                "Last Recorded on 9 Mar at 7:64 pm ",
                                            fontSize: 18)
                                      ],
                                    ),
                                  )),
                              Container(
                                  height: 200,
                                  width: 360,
                                  padding: const EdgeInsets.only(top: 15),
                                  margin: const EdgeInsets.only(
                                      right: 20, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image.asset("images/Glucometer.png"),
                                        const SharedColorTextCADBold(
                                            text: "Diabetes", fontSize: 32),
                                        const SharedColorTextblack(
                                            text: "175", fontSize: 26),
                                        const SharedColorTextblack(
                                            text:
                                                "Last Recorded on 9 Mar at 7:64 pm ",
                                            fontSize: 18)
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                          // note & activites
                          Row(
                            children: [
                              // note
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 5, bottom: 10),
                                child: Material(
                                    elevation: 3,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    shadowColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20),
                                      height: 265,
                                      width: 550,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const SharedColorTextCADBold(
                                                  text: "Notes", fontSize: 34),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 295),
                                                child:
                                                    const SharedColorTextblack(
                                                  text: "25 Feb 2024",
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "images/Back To.png",
                                                    width: 80,
                                                    height: 80,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      height: 150,
                                                      width: 395,
                                                      child:
                                                          const MyCustomForm()),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 325,
                                                              top: 10),
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                              "images/plus.png"),
                                                          const SizedBox(
                                                            width: 5,
                                                          ),
                                                          const SharedColorTextblack(
                                                            text: "Add",
                                                            fontSize: 22,
                                                          )
                                                        ],
                                                      ))
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              // activites
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 15, right: 10, bottom: 10),
                                child: Material(
                                    elevation: 3,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    shadowColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 20),
                                      height: 265,
                                      width: 550,
                                      child: const Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SharedColorTextCADBold(
                                                  text: "Activites",
                                                  fontSize: 34),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  SharedColorTextCADnormal(
                                                      text: "home chart ",
                                                      fontSize: 15)
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  SharedColorTextCADnormal(
                                                      text: "/chart data",
                                                      fontSize: 15)
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          ),
                          // lab test & medicine &follow up & Prescription
                          Row(
                            children: [
                              // lab test
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  // margin: const EdgeInsets.all(8),
                                  color: Colors.white,
                                  height: 350,
                                  width: 430,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SharedColorTextCADBold(
                                          text: "Lab Tests", fontSize: 34),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        height: 130,
                                        width: 420,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    const Color(0xff0C8A7D))),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SharedColorTextCADnormal(
                                                text: "Analysis", fontSize: 26),
                                            Row(
                                              children: [
                                                Container(
                                                  color:
                                                      const Color(0xff0C8A7D),
                                                  height: 65,
                                                  width: 300,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, left: 10),
                                                  child:
                                                      const SharedColorTextWhite(
                                                    text: "2 feb 2023",
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 40, left: 15),
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                          "images/plus.png"),
                                                      const SharedColorTextblack(
                                                          text: "Add",
                                                          fontSize: 18)
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        height: 130,
                                        width: 420,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    const Color(0xff0C8A7D))),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SharedColorTextCADnormal(
                                                text: "X-rays", fontSize: 26),
                                            Row(
                                              children: [
                                                Container(
                                                  color:
                                                      const Color(0xff0C8A7D),
                                                  height: 65,
                                                  width: 300,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20, left: 10),
                                                  child:
                                                      const SharedColorTextWhite(
                                                    text: "2 feb 2023",
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 40, left: 15),
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                          "images/plus.png"),
                                                      const SharedColorTextblack(
                                                          text: "Add",
                                                          fontSize: 18)
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              // medicine
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(
                                      top: 8, right: 20, left: 20, bottom: 8),
                                  color: Colors.white,
                                  height: 350,
                                  width: 430,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SharedColorTextCADBold(
                                          text: "Medicine", fontSize: 34),
                                      // CarouselDemo(),
                                    ],
                                  )),
                              // follow up & Prescription
                              Container(
                                color: Colors.white,
                                height: 350,
                                width: 210,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(20),
                                      child: Material(
                                          elevation: 3,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          shadowColor: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child:
                                              // follow up
                                              Container(
                                            height: 140,
                                            width: 200,
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    "images/schedule 1.png"),
                                                const SharedColorTextblack(
                                                    text: "Follow up",
                                                    fontSize: 24),
                                              ],
                                            ),
                                          )),
                                    ),
                                    // Prescription
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20, right: 20, bottom: 20),
                                      child: Material(
                                          elevation: 3,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          shadowColor: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Container(
                                            height: 140,
                                            width: 200,
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    "images/medical-prescription 1.png"),
                                                const SharedColorTextblack(
                                                    text: "Prescription",
                                                    fontSize: 24),
                                              ],
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          // history
                          const SharedColorTextCADnormal(
                              text: "History", fontSize: 36),
                          // diabetes & pressure
                          Row(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Colors.white,
                                  height: 260,
                                  width: 540,
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SharedColorTextCADnormal(
                                              text: "Diabetes", fontSize: 24),
                                          Image.asset(
                                            "images/Glucometer.png",
                                            height: 30,
                                            width: 30,
                                          )
                                        ],
                                      ),
                                      Container(
                                          width: 200,
                                          height: 200,
                                          child: SfCartesianChart(
                                              legend: Legend(
                                                  toggleSeriesVisibility: false,
                                                  overflowMode:
                                                      LegendItemOverflowMode
                                                          .wrap),
                                              primaryXAxis: CategoryAxis(),
                                              series: <CartesianSeries>[
                                                SplineSeries<CharttData,
                                                    String>(
                                                  legendIconType:
                                                      LegendIconType.seriesType,
                                                  dataSource: [
                                                    CharttData(
                                                        'Sun',
                                                        120,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                    CharttData(
                                                        'Mon',
                                                        200,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                    CharttData(
                                                        'Tue',
                                                        150,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                    CharttData(
                                                        'Wed',
                                                        160,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                    CharttData(
                                                        'Thurs',
                                                        250,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                    CharttData(
                                                        'Fri',
                                                        200,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                    CharttData(
                                                        'Sat',
                                                        550,
                                                        Color.fromARGB(
                                                            255, 31, 111, 177)),
                                                  ],
                                                  // Bind the color for all the data points from the data source
                                                  pointColorMapper:
                                                      (CharttData data, _) =>
                                                          data.color,
                                                  xValueMapper:
                                                      (CharttData data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (CharttData data, _) =>
                                                          data.y,
                                                  markerSettings:
                                                      const MarkerSettings(
                                                          isVisible: true,
                                                          height: 5,
                                                          width: 5),
                                                ),
                                              ])),
                                    ],
                                  )),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(left: 15),
                                  color: Colors.white,
                                  height: 260,
                                  width: 540,
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SharedColorTextCADnormal(
                                              text: "Presure", fontSize: 24),
                                          Image.asset(
                                            "images/Tonometer.png",
                                            height: 30,
                                            width: 30,
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 299,
                                        height: 200,
                                        child: SfCartesianChart(
                                            legend: Legend(
                                                toggleSeriesVisibility: false,
                                                isVisible: true,
                                                iconHeight: 15,
                                                iconWidth: 15,
                                                //  image: const AssetImage("assetName"),
                                                overflowMode:
                                                    LegendItemOverflowMode
                                                        .wrap),
                                            primaryXAxis: CategoryAxis(),
                                            series: <CartesianSeries>[
                                              ColumnSeries<Chartdata, String>(
                                                  dataSource: chartData,
                                                  name: "high",
                                                  xValueMapper:
                                                      (Chartdata data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (Chartdata data, _) =>
                                                          data.y,
                                                  color: Color.fromARGB(
                                                      231, 179, 218, 254),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15))),
                                              ColumnSeries<Chartdata, String>(
                                                  name: "low",
                                                  dataSource: chartData,
                                                  xValueMapper:
                                                      (Chartdata data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (Chartdata data, _) =>
                                                          data.y2,
                                                  color: Colors.pink[100],
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15))),
                                            ]),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          // water & walking & exersice
                          Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    color: Colors.white,
                                    height: 240,
                                    width: 355,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SharedColorTextCADnormal(
                                                text: "Exercise", fontSize: 24),
                                            Image.asset(
                                              "images/Gymnastics Skin Type 1.png",
                                              height: 35,
                                              width: 35,
                                            )
                                          ],
                                        ),
                                        Container(
                                          child: SfCartesianChart(
                                              legend: Legend(
                                                  toggleSeriesVisibility: false,
                                                  overflowMode:
                                                      LegendItemOverflowMode
                                                          .wrap),
                                              primaryXAxis: CategoryAxis(),
                                              primaryYAxis: NumericAxis(),
                                              // tooltipBehavior: _tooltip,
                                              series: <CartesianSeries<
                                                  _ChartData, String>>[
                                                AreaSeries<_ChartData, String>(
                                                  dataSource: data,
                                                  xValueMapper:
                                                      (_ChartData data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (_ChartData data, _) =>
                                                          data.y,
                                                  gradient: gradientColors,
                                                ),
                                              ]),
                                        )
                                      ],
                                    )),
                                Container(
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.only(left: 15),
                                    color: Colors.white,
                                    height: 240,
                                    width: 355,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SharedColorTextCADnormal(
                                                text: "Walking", fontSize: 24),
                                            Image.asset(
                                              "images/Walking.png",
                                              height: 30,
                                              width: 30,
                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 400,
                                          height: 200,
                                          child: SfCartesianChart(
                                              legend: Legend(
                                                  toggleSeriesVisibility: false,
                                                  overflowMode:
                                                      LegendItemOverflowMode
                                                          .wrap),
                                              primaryXAxis: CategoryAxis(),
                                              series: <CartesianSeries>[
                                                // Render column series
                                                ColumnSeries<_ChartData,
                                                        String>(
                                                    dataSource: data,
                                                    xValueMapper:
                                                        (_ChartData data, _) =>
                                                            data.x,
                                                    yValueMapper:
                                                        (_ChartData data, _) =>
                                                            data.y,
                                                    color: Color.fromARGB(
                                                        222, 229, 194, 79),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                15))),
                                              ]),
                                        )
                                      ],
                                    )),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(left: 15),
                                  color: Colors.white,
                                  height: 240,
                                  width: 355,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SharedColorTextCADnormal(
                                              text: "Water", fontSize: 24),
                                          Image.asset(
                                            "images/water-drop 1.png",
                                            height: 33,
                                            width: 20,
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 400,
                                        height: 200,
                                        child: SfCartesianChart(
                                            legend: Legend(
                                                toggleSeriesVisibility: true,
                                                overflowMode:
                                                    LegendItemOverflowMode
                                                        .wrap),
                                            primaryXAxis: CategoryAxis(),
                                            series: <CartesianSeries>[
                                              // Render column series
                                              ColumnSeries<_ChartData, String>(
                                                  dataSource: data,
                                                  dataLabelSettings:
                                                      DataLabelSettings(
                                                          isVisible: false),
                                                  xValueMapper:
                                                      (_ChartData data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (_ChartData data, _) =>
                                                          data.y,
                                                  color: Color.fromARGB(
                                                      231, 179, 218, 254),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15))),
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}

class SharedColorTextCADBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const SharedColorTextCADBold(
      {super.key,
      this.color,
      this.fontWeight = FontWeight.bold,
      required this.text,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? const Color(0XFF0C8A7D),
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}

class SharedColorTextCADnormal extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const SharedColorTextCADnormal(
      {super.key,
      this.color,
      this.fontWeight = FontWeight.normal,
      required this.text,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? const Color(0XFF0C8A7D),
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}

class SharedColorTextblack extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const SharedColorTextblack(
      {super.key,
      this.color,
      this.fontWeight = FontWeight.normal,
      required this.text,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? const Color.fromARGB(255, 0, 0, 0),
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}

class SharedColorTextWhite extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const SharedColorTextWhite(
      {super.key,
      this.color,
      this.fontWeight = FontWeight.w100,
      required this.text,
      this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? const Color.fromARGB(255, 255, 255, 255),
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}

Widget buildGenerateReportButton() {
  return Material(
    type: MaterialType.button,
    elevation: 3,
    color: const Color.fromARGB(255, 255, 255, 255),
    shadowColor: const Color.fromARGB(255, 0, 0, 0),
    borderRadius: BorderRadius.circular(50),
    child: Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          const SharedColorTextblack(text: "generate report", fontSize: 32),
          const SizedBox(width: 5),
          Image.asset("images/arrow.png", width: 32, height: 32),
        ],
      ),
    ),
  );
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      // onChanged: (val) {
      //   textval = val;
      // },
      maxLength: 350,
      maxLines: 5,
      minLines: 1,
      cursorColor: Color(0XFF0C8A7D),
      decoration: InputDecoration(
        hintText: 'Enter your note',
      ),
    );
  }
}

String? textval;

Widget medicine() {
  return Container(
    padding: const EdgeInsets.all(30),
    child: const Column(
      children: [
        SharedColorTextCADBold(text: "Rowatinex", fontSize: 24),
        SharedColorTextblack(
            text: "one capsule three time a day ", fontSize: 20),
        SharedColorTextblack(text: "100 MG", fontSize: 20),
        Divider(color: Colors.black),
        Row(
          children: [
            SharedColorTextCADnormal(
                text: "prescription number: ", fontSize: 20),
            SharedColorTextblack(text: "1245", fontSize: 20)
          ],
        ),
        Row(
          children: [
            SharedColorTextCADnormal(text: "prescribed: ", fontSize: 20),
            SharedColorTextblack(text: "15 JAN 2024", fontSize: 20)
          ],
        ),
      ],
    ),
  );
}

class CharttData {
  CharttData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

class Chartdata {
  Chartdata(this.x, this.y, this.y2);
  final String x;
  final double y;
  final double y2;
}



// class CarouselDemo extends StatelessWidget {
//   CarouselController buttonCarouselController = CarouselController();

//  @override
//   Widget build(BuildContext context) => Column(
//     children: <Widget>[
//       CarouselSlider(
//         items:child,
//         carouselController: buttonCarouselController,
//         options: CarouselOptions(
//           autoPlay: false,
//           enlargeCenterPage: true,
//           viewportFraction: 0.9,
//           aspectRatio: 2.0,
//           initialPage: 2,
//         ),
//       ),
//       MaterialButton(
//         onPressed: () => buttonCarouselController.nextPage(
//             duration: Duration(milliseconds: 300), curve: Curves.linear),
//         child: Text('→'),
//       )
//     ]
//   );
// }