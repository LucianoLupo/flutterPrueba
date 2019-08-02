import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  TextStyle textStyle = new TextStyle ( fontSize:25 );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
    }
  
  void _goToZero() {
    setState(() {
      _counter = 0;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador:',
            ),
            Text(
              '$_counter',
              // style: Theme.of(context).textTheme.display1,
              style: textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones () {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 35.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _goToZero),
        Expanded (child:SizedBox(width: 5.0)),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _decrementCounter),
        SizedBox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _incrementCounter),
      ],
    );
  }

}

