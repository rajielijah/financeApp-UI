import 'package:boomplayer/save.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boomplay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(tabChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void tabChanged() {
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: TabBar(controller: _tabController, tabs: [
          Tab(
            icon: Icon(
              Icons.account_box,
              size: 20,
              color: Colors.black,
            ),
            child: Text('Spend',
                style: TextStyle(fontSize: 12, color: Colors.black)),
          ),
          Tab(
            icon: Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.black,
            ),
            child: Text('Save',
                style: TextStyle(fontSize: 12, color: Colors.black)),
          ),
          Tab(
            icon: Icon(
              Icons.schedule,
              size: 20,
              color: Colors.black,
            ),
            child: Text(
              'Schedule',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.menu,
              size: 20,
              color: Colors.black,
            ),
            child: Text('Menu',
                style: TextStyle(fontSize: 12, color: Colors.black)),
          ),
          Tab(
            child: FloatingActionButton(
              backgroundColor: Colors.greenAccent[200],
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          )
        ]),
      ),
      body: SafeArea(
          child: TabBarView(
        children: [
          SpendPage(),
          SavePage(),
          SpendPage(),
          SpendPage(),
          SpendPage()
        ],
        controller: _tabController,
      )),
    );
  }
}

class SpendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25.0, right: 0, top: 40),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('image/icon5.png'),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onPressed: () {},
                            child: Text(
                              'Payday in a week',
                              style: TextStyle(
                                  color: Colors.greenAccent[700],
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Total balance to spend',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '\$5785.55',
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.blueGrey[50],
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 28),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Planning Ahead',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Text(
                                '-\$540.52  >',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 120,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: CircleAvatar(
                                          child: Icon(
                                              Icons.text_rotation_angledown),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        '-150.52',
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text('in  a  2  days'),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.green,
                                          child: Icon(
                                            Icons.turned_in_not,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        '-250.52',
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text('in  a  2  days'),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 140,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          child: Icon(Icons.redo),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        '-139.48 ',
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text('in  a  2  days'),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Divider(),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Last Month Expense',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text('-\$1800.50 >')
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('   25\n MAR'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('   26\n MAR'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('   27\n MAR'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('   28\n MAR'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('   29\n MAR'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('   30\n MAR'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 370,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30.0, top: 20),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      child: Icon(Icons.weekend),
                                      backgroundColor: Colors.deepPurple,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Craftwork',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Text(
                                      '-150.52',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Divider(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30.0, top: 20),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      child: Icon(Icons.first_page),
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Focus Lab',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 105,
                                    ),
                                    Text(
                                      '-150.52',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
