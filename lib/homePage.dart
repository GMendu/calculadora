import 'package:flutter/material.dart';
double num1=0,num2=0,res=0; //res = Result........
TextEditingController t1= TextEditingController(text: '');
TextEditingController t2= TextEditingController(text: '');



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  doAddition() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 + num2;
    });
  }

  doMul() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 * num2;
    });
  }
  doSub() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 - num2;
    });
  }

  doDiv() {
    setState(() {
      num2 = double.parse(t2.text);
      num1 = double.parse(t1.text);
      res = num1 / num2;
    });
  }

  doClear() {
    setState(() {
      t1 = TextEditingController(text: '');
      t2 = TextEditingController(text: '');
      res = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('nesCAL'),
      ),
      body: Container(padding: const EdgeInsets.only(
          bottom: 40.0,
          top: 15.0,
          left: 40.0,
          right: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                enabled: false,
                //enableInteractiveSelection:false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Result: $res', hintStyle:
                const TextStyle(fontSize: 20.0, color: Colors.tealAccent),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            //The Text field for the First number
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              controller: t1,
              decoration: InputDecoration(
                labelText: 'first',
                fillColor: Colors.white,
                hintText: 'Enter your First number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            //The Text field for the second TextInputType.number
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              controller: t2,
              decoration: InputDecoration(
                labelText: 'second',
                fillColor: Colors.white,
                hintText: 'Enter your Second number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text('+'),
                  shape: const StadiumBorder(),
                  color: Colors.teal,
                  onPressed: () {
                    doAddition();
                  },
                ),
                MaterialButton(
                  child: const Text('*'),
                  shape: const StadiumBorder(),
                  color: Colors.teal,
                  onPressed: () {

                    doMul();
                  },
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text('-'),
                  color: Colors.teal,
                  shape: const StadiumBorder(),
                  onPressed: () {
                    doSub();
                  },
                ),
                MaterialButton(
                  child: const Text('/'),
                  shape: const StadiumBorder(),
                  color: Colors.teal,
                  onPressed: () {

                    doDiv();
                  },
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text('C', textAlign: TextAlign.center,),
                  color: Colors.teal,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.only(
                      left: 110.0, top: 15.0, bottom: 15.0),
                  onPressed: () {
                    doClear();
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}