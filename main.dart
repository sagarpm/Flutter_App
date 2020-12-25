import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 56.0,
      color: Colors.black87,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
            colors: [Colors.green, Colors.blue]
        ),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: IconButton(icon: Icon(Icons.menu), tooltip: 'Menu',)
            ),
            Expanded(
                child: Text(
                    'Trial App',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                    )
                )
            ),
            Expanded(
                child: IconButton(icon: Icon(Icons.more_vert), tooltip: 'More Options',)
            ),
          ],
        ),
      )
    );
  }
}

class MyBody  extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 60.0),
              child: Container(
                height:100.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent]),
                ),
                child: ElevatedButton(
                  child: Text(
                    'Weather',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: null,
                ),
              ),
            ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical:60.0),
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent]),
                          ),
                          child: ElevatedButton(
                            child: Text(
                              'Yesterday',
                              style: TextStyle( color: Colors.black, fontSize: 18.0),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: null,
                          )
                      ),
                      Container(
                        height: 100.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent]),
                          ),
                          child: ElevatedButton(
                            child: Text(
                              'Tomorrow',
                              style: TextStyle(color: Colors.black, fontSize: 18.0),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: null,
                          )
                      )
                    ]
                )
            ),
          ),
          Container(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent]),
                          ),
                          child: ElevatedButton(
                            //splashColor: Colors.teal,
                            //colorBrightness: Brightness.dark,
                            child: Text(
                              'Set',
                              style: TextStyle(color: Colors.black, fontSize: 18.0),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: null,
                          )
                      ),
                      Container(
                        height: 100.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent]),
                          ),
                          child: ElevatedButton(
                            //splashColor: Colors.teal,
                            //colorBrightness: Brightness.dark,
                            child: Text(
                              'Reset',
                              style: TextStyle(color: Colors.black, fontSize: 18.0),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: null,
                          )
                      ),
                    ]
                )
            )
          ),
        ],
      ),
    );
  }
}

class MyBottomBar extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: IconButton(icon: Icon(Icons.home), onPressed: null,)
          ),
          Expanded(
            child: IconButton(icon: Icon(Icons.design_services), onPressed: null,)
          ),
          Expanded(
            child: IconButton(icon: Icon(Icons.info), onPressed: null,)
          ),
          Expanded(
            child: IconButton(icon: Icon(Icons.settings), onPressed: null,)
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppBar(),
          Container(
            height: 709.0,
            child: MyBody(),
          ),
          Container(
            height: 56.0,
            child: MyBottomBar()
          ),
        ],
      ),
    );
  }
}

void main()
{
  runApp(
      MaterialApp(
        title: 'Trial App',
        home: SafeArea(
            child: MyScaffold(),
          ),
        )
  );
}
