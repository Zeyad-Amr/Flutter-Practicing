import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var mCon = TextEditingController();
  var mmCon = TextEditingController();
  bool isM = true;
  double mLen = 0.0, mmLen = 0.0;
  @override
  initState() {
    super.initState();
    mCon.addListener(mListener);
    mmCon.addListener(mmListener);
  }

  mListener() {
    setState(() {
      if (isM) {
        mLen = double.parse(mCon.text);
        mmLen = convert(mLen, true);
        mmCon.text = mmLen.toString();
      }
      isM = true;
    });
  }

  mmListener() {
    setState(() {
      if (!isM) {
        mmLen = double.parse(mmCon.text);
        mLen = convert(mmLen, false);
        mCon.text = mLen.toString();
      }
      isM = false;
    });
  }

  double convert(double len, bool isM) {
    return isM ? (len * 1000) : (len / 1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Length Convertor',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Meter',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  TextField(
                    controller: mCon,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      suffixText: 'm',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Milimeter',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  TextField(
                    controller: mmCon,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      suffixText: 'mm',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
