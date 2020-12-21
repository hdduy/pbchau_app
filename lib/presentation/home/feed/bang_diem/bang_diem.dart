import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:phanboichau_app/presentation/routes/router.gr.dart';
import 'package:phanboichau_app/preferences_singleton.dart';

class BangDiem extends StatefulWidget {
  @override
  _BangDiemState createState() => _BangDiemState();
}

class _BangDiemState extends State<BangDiem> {
  String tx1 = '';
  String tx2 = '';
  String tx3 = '';
  String gk = '';
  String ck = '';
  int count = 0;
  int countAvg = 0;
  double total = 0;
  double totalAvg = 0;
  List<double> avg = [];
  final _prefs = PreferencesSingleton.preferences;
  final _formKey = GlobalKey<FormState>();

  final List<String> kiHieu = [
    'TX',
    'GK',
    'CK',
  ];

  final List<String> cacMonHoc = [
    'Toán',
    'Vật Lí',
    'Hoá Học',
    'Sinh Học',
    'Tin Học',
    'Ngữ Văn',
    'Lịch Sử',
    'Địa lí',
    'Tiếng Anh',
    'GDCD',
    'Công Nghệ',
    'GDQP AN',
  ];

  Map<String, Map<String, List<String>>> diemCacMonHoc = {};
  @override
  void initState() {
    for (final monHoc in cacMonHoc) {
      Map<String, List<String>> cacCotDiem = {};
      String tx1 = '';
      String tx2 = '';
      String tx3 = '';
      String gk = '';
      String ck = '';
      count = 0;
      total = 0;
      for (final diemTheoCot in kiHieu) {
        final diemHienTai = _prefs.getStringList('$monHoc-$diemTheoCot') ?? [];
        if (diemTheoCot == 'TX') {
          if (diemHienTai.isNotEmpty) {
            tx1 = diemHienTai[0] ?? '';
            if (tx1.isNotEmpty) {
              count++;
              total += double.parse(tx1);
            }
          }
          if (diemHienTai.length > 1) {
            tx2 = diemHienTai[1] ?? '';
            if (tx2.isNotEmpty) {
              count++;
              total += double.parse(tx2);
            }
          }
          if (diemHienTai.length > 2) {
            tx3 = diemHienTai[2] ?? '';
            if (tx3.isNotEmpty) {
              count++;
              total += double.parse(tx3);
            }
          }
        }
        if (diemTheoCot == 'GK' && diemHienTai.isNotEmpty) {
          gk = diemHienTai[0] ?? '';
          if (gk.isNotEmpty) {
            count += 2;
            total += (double.parse(gk)) * 2;
          }
        }
        if (diemTheoCot == 'CK' && diemHienTai.isNotEmpty) {
          ck = diemHienTai[0] ?? '';
          if (ck.isNotEmpty) {
            count += 3;
            total += (double.parse(ck)) * 3;
          }
        }
        cacCotDiem.addAll({diemTheoCot: diemHienTai ?? []});
      }
      avg.add(total / count);
      if (!(total / count).isNaN) {
        totalAvg += total / count;
        countAvg++;
      }

      diemCacMonHoc.addAll({monHoc: cacCotDiem});
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bảng điểm cá nhân'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.restore),
            onPressed: () {
              _prefs.clear();
              setState(() {});
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 40,
              child: HorizontalDataTable(
                leftHandSideColumnWidth: 100,
                rightHandSideColumnWidth: 800,
                isFixedHeader: true,
                headerWidgets: _getTitleWidget(),
                leftSideItemBuilder: _generateFirstColumnRow,
                rightSideItemBuilder: _generateRightHandSideColumnRow,
                itemCount: 12,
                rowSeparatorWidget: const Divider(
                  color: Colors.black54,
                  height: 1.0,
                  thickness: 0.0,
                ),
                leftHandSideColBackgroundColor: const Color(0xFF2A2A2A),
              ),
            ),
            Center(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Thể dục ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      CheckboxListTile(
                        title: const Text('Thường xuyên 1'),
                        value: _prefs.getBool('TD-TX1') ?? false,
                        onChanged: (bool value) {
                          setState(() {
                            _prefs.setBool('TD-TX1', value);
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('Thường xuyên 2'),
                        value: _prefs.getBool('TD-TX2') ?? false,
                        onChanged: (bool value) {
                          setState(() {
                            _prefs.setBool('TD-TX2', value);
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('Thường xuyên 3'),
                        value: _prefs.getBool('TD-TX3') ?? false,
                        onChanged: (bool value) {
                          setState(() {
                            _prefs.setBool('TD-TX3', value);
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('Giữa kì'),
                        value: _prefs.getBool('TD-GK') ?? false,
                        onChanged: (bool value) {
                          setState(() {
                            _prefs.setBool('TD-GK', value);
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('Cuối kì'),
                        value: _prefs.getBool('TD-CK') ?? false,
                        onChanged: (bool value) {
                          setState(() {
                            _prefs.setBool('TD-CK', value);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                margin: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Text(
                        'Trung bình các môn: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        (totalAvg / countAvg).isNaN
                            ? 'Chưa có'
                            : (totalAvg / countAvg).toStringAsFixed(2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Môn', 200),
      _getTitleItemWidget('Kiểm tra thường xuyên', 100),
      _getTitleItemWidget('Kiểm tra giữa kì', 200),
      _getTitleItemWidget('Kiểm tra cuối kì', 200),
      _getTitleItemWidget('Trung bình môn', 200),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      color: Colors.white,
      width: width,
      height: 56,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            child: AlertDialog(
              title: Text(
                'Nhập điểm Môn ${cacMonHoc[index]}',
                textAlign: TextAlign.center,
              ),
              content: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Theme(
                    data:
                        Theme.of(context).copyWith(primaryColor: Colors.black),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          initialValue:
                              diemCacMonHoc[cacMonHoc[index]]['TX'].isNotEmpty
                                  ? diemCacMonHoc[cacMonHoc[index]]['TX'][0]
                                  : '',
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Điểm thường xuyên 1',
                          ),
                          onSaved: (newValue) {
                            setState(() {
                              if (newValue != null) {
                                tx1 = newValue;
                              } else {
                                tx1 = diemCacMonHoc[cacMonHoc[index]]['TX']
                                        .isNotEmpty
                                    ? diemCacMonHoc[cacMonHoc[index]]['TX'][0]
                                    : '';
                              }
                            });
                          },
                        ),
                        TextFormField(
                          initialValue:
                              diemCacMonHoc[cacMonHoc[index]]['TX'].length > 1
                                  ? diemCacMonHoc[cacMonHoc[index]]['TX'][1]
                                  : '',
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Điểm thường xuyên 2',
                          ),
                          onSaved: (newValue) {
                            if (newValue != null) {
                              tx2 = newValue;
                            } else {
                              tx2 =
                                  diemCacMonHoc[cacMonHoc[index]]['TX'].length >
                                          1
                                      ? diemCacMonHoc[cacMonHoc[index]]['TX'][1]
                                      : '';
                            }
                          },
                        ),
                        TextFormField(
                          initialValue:
                              diemCacMonHoc[cacMonHoc[index]]['TX'].length > 2
                                  ? diemCacMonHoc[cacMonHoc[index]]['TX'][2]
                                  : '',
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Điểm thường xuyên 3',
                          ),
                          onSaved: (newValue) {
                            setState(() {
                              if (newValue != null) {
                                tx3 = newValue;
                              } else {
                                tx3 = diemCacMonHoc[cacMonHoc[index]]['TX']
                                            .length >
                                        2
                                    ? diemCacMonHoc[cacMonHoc[index]]['TX'][2]
                                    : '';
                              }
                            });
                          },
                        ),
                        TextFormField(
                          initialValue:
                              diemCacMonHoc[cacMonHoc[index]]['GK'].length == 1
                                  ? diemCacMonHoc[cacMonHoc[index]]['GK'][0]
                                  : '',
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          decoration:
                              const InputDecoration(labelText: 'Điểm giữa kì'),
                          onSaved: (newValue) {
                            setState(() {
                              if (newValue != null) {
                                gk = newValue;
                              } else {
                                gk = diemCacMonHoc[cacMonHoc[index]]['GK']
                                            .length ==
                                        1
                                    ? diemCacMonHoc[cacMonHoc[index]]['GK'][0]
                                    : '';
                              }
                            });
                          },
                        ),
                        TextFormField(
                          initialValue:
                              diemCacMonHoc[cacMonHoc[index]]['CK'].length == 1
                                  ? diemCacMonHoc[cacMonHoc[index]]['CK'][0]
                                  : '',
                          maxLength: 4,
                          keyboardType: TextInputType.number,
                          decoration:
                              const InputDecoration(labelText: 'Điểm cuối kì'),
                          onSaved: (newValue) {
                            setState(() {
                              if (newValue != null) {
                                ck = newValue;
                              } else {
                                ck = diemCacMonHoc[cacMonHoc[index]]['CK']
                                            .length ==
                                        1
                                    ? diemCacMonHoc[cacMonHoc[index]]['CK'][0]
                                    : '';
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                RaisedButton(
                  onPressed: () {
                    ExtendedNavigator.of(context).pop();
                  },
                  child: const Text('Huỷ'),
                ),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      // print('TX1: $tx1');
                      // print('TX2: $tx2');
                      // print('TX3: $tx3');
                      // print('GK: $gk');
                      // print('CK: $ck');

                      Future.delayed(const Duration(milliseconds: 300))
                          .then((value) {
                        // final int count = ((tx1 ?? '').isNotEmpty ? 1 : 0) +
                        //     ((tx2 ?? '').isNotEmpty ? 1 : 0) +
                        //     ((tx3 ?? '').isNotEmpty ? 1 : 0) +
                        //     ((gk ?? '').isNotEmpty ? 2 : 0) +
                        //     ((ck ?? '').isNotEmpty ? 3 : 0);
                        // final total = ((tx1 ?? '').isNotEmpty
                        //         ? double.parse(tx1)
                        //         : 0) +
                        //     ((tx2 ?? '').isNotEmpty ? double.parse(tx2) : 0) +
                        //     ((tx3 ?? '').isNotEmpty ? double.parse(tx3) : 0) +
                        //     ((gk ?? '').isNotEmpty ? double.parse(gk) * 2 : 0) +
                        //     ((ck ?? '').isNotEmpty ? double.parse(ck) * 3 : 0);
                        // final List<double> list = [...avg];
                        // if (!(count / total).isNaN) {
                        //   list.removeAt(index);
                        //   list.insert(index, count / total);
                        // }
                        // setState(() {
                        //   avg = list;
                        // });
                        _prefs.setStringList('${cacMonHoc[index]}-TX', [
                          if ((tx1 ?? '').isNotEmpty) tx1,
                          if ((tx2 ?? '').isNotEmpty) tx2,
                          if ((tx3 ?? '').isNotEmpty) tx3
                        ]);
                        _prefs.setStringList('${cacMonHoc[index]}-GK', [
                          if ((gk ?? '').isNotEmpty) gk,
                        ]);
                        _prefs.setStringList('${cacMonHoc[index]}-CK', [
                          if ((ck ?? '').isNotEmpty) ck,
                        ]);
                        for (final monHoc in cacMonHoc) {
                          Map<String, List<String>> cacCotDiem = {};
                          for (final diemTheoCot in kiHieu) {
                            final diemHienTai =
                                _prefs.getStringList('$monHoc-$diemTheoCot');
                            cacCotDiem.addAll({diemTheoCot: diemHienTai ?? []});
                          }
                          setState(() {
                            diemCacMonHoc.addAll({monHoc: cacCotDiem});
                          });
                        }
                        ExtendedNavigator.of(context).pop();
                        ExtendedNavigator.of(context)
                            .popAndPush(Routes.bangDiem);
                      });
                    }
                  },
                  child: const Text('Thêm'),
                ),
              ],
            ),
          );
        },
        child: Text(
          cacMonHoc[index],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, itemIndex) {
              // if (diemCacMonHoc[cacMonHoc[index]]['TX'] != null) {
              return Center(
                child: Text(diemCacMonHoc[cacMonHoc[index]]['TX'][itemIndex] ??
                    'error'),
              );
              // } else {
              // return const SizedBox();
              // }
            },
            itemCount: diemCacMonHoc[cacMonHoc[index]]['TX'].length ?? 0,
          ),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, itemIndex) {
              // if (diemCacMonHoc[cacMonHoc[index]]['TX'] != null) {
              return Center(
                child: Text(diemCacMonHoc[cacMonHoc[index]]['GK'][itemIndex] ??
                    'error'),
              );
              // } else {
              // return const SizedBox();
              // }
            },
            itemCount: diemCacMonHoc[cacMonHoc[index]]['GK'].length ?? 0,
          ),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, itemIndex) {
              // if (diemCacMonHoc[cacMonHoc[index]]['TX'] != null) {
              return Center(
                child: Text(diemCacMonHoc[cacMonHoc[index]]['CK'][itemIndex] ??
                    'error'),
              );
              // } else {
              // return const SizedBox();
              // }
            },
            itemCount: diemCacMonHoc[cacMonHoc[index]]['CK'].length ?? 0,
          ),
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            avg[index].isNaN ? '' : avg[index].toStringAsFixed(2),
          ),
        ),
      ],
    );
  }
}
