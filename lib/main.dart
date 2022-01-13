import 'package:flutter/material.dart';
import 'package:irad_kerala_web/gallery.dart';

void main() {
  runApp(MediaQuery(data: new MediaQueryData(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedItems = 0;
  int header = 1;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: header == 1
                        ? Title(
                            color: Colors.black,
                            child: InkWell(
                              child: const Text("Home",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                              onTap: () {},
                            ),
                          )
                        : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: header == 1
                        ? Title(
                            color: Colors.black,
                            child: InkWell(
                              child: const Text("Team",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                              onTap: () {},
                            ),
                          )
                        : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: header == 1
                        ? Title(
                            color: Colors.black,
                            child: InkWell(
                              child: const Text("Gallery",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                              onTap: () {},
                            ),
                          )
                        : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: header == 1
                        ? Title(
                            color: Colors.black,
                            child: InkWell(
                              child: const Text("Statistics",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                              onTap: () {},
                            ),
                          )
                        : null,
                  ),
                  header == 1
                      ? Title(
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              child: const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    header = 0;
                                  },
                                );
                              },
                            ),
                          ),
                        )
                      : Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Enter The Keyword',
                              icon: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: const Icon(Icons.backspace),
                                  onTap: () {
                                    setState(() {
                                      header = 1;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                ],
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(300.0),
                  child: Text(''),
                ),
                flexibleSpace: Stack(
                  children: [
                    Container(
                      // height: (MediaQuery.of(context).size.height),
                      // width: (MediaQuery.of(context).size.width),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.dstATop),
                          image: const AssetImage(
                            'irad1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 220,
                      child: Center(
                        child: Text(
                          "iRAD\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontFamily: 'Lora'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      // height: 20,
                      child: Center(
                        child: Text(
                          "Integrated Road Accident Database\n          Advancing Road Safety ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Divider(
                  height: 20,
                  thickness: 3,
                  indent: 40,
                  endIndent: 40,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "About iRAD",
                      style: TextStyle(fontSize: 30, color: Colors.cyan[900]),
                    ),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 3,
                  indent: 40,
                  endIndent: 40,
                  color: Colors.grey,
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "The Integrated Road Accident Database (iRAD) Project is an initiative of the Ministry of Road Transport and Highways (MoRTH), Government of India and is funded by World Bank, with objective to improve road safety in the country. The main objective of the project is development of Integrated Road Accident Database (iRAD), to enrich the accident databases from every parts of the country. The project would generate various types of insights by analyzing the collected road accident data across the country through implementation of data analytics technique. The proposed system would represent the analysis output through Monitoring & Reporting Dashboard & Analytics Dashboard for easy understanding and accordingly forecasting & Decision Making by Apex Authorities for formulation of new policies & strategies. The outcome of the project would be enhanced road safety i.e. ‘Safe Road for All’ in India. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Open Sans',
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Wrap(children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage('MorthLogo.jpg'),
                          fit: BoxFit.contain,
                          width: 500,
                          height: 300,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Initiative of Ministry of Road Transport and Highways, Government of India ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage('nicsilogo.png'),
                          fit: BoxFit.contain,
                          width: 500,
                          height: 300,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                              "             Managed By iRAD Project Management unit,\n National Informatics Center Services Incorporated, New Delhi ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Open Sans',
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage('nic.png'),
                          fit: BoxFit.contain,
                          width: 500,
                          height: 300,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                              "Developed By National Informatics Center, Chennai ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Open Sans',
                              )),
                        )
                      ],
                    ),
                  ),
                ]),
                const Center(
                  child: Text(
                    "STAKEHOLDERS ",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 30,
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          Image(
                            image: AssetImage('Kerala_Police_Logo.png'),
                            fit: BoxFit.contain,
                            width: 400,
                            height: 300,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Police Department ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: const [
                          Image(
                            image: AssetImage('mvilogo.png'),
                            fit: BoxFit.contain,
                            width: 400,
                            height: 300,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Transport Department ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: const [
                          Image(
                            image: AssetImage('Highwaylogo.png'),
                            fit: BoxFit.contain,
                            width: 400,
                            height: 300,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Highway Department ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: const [
                          Image(
                            image: AssetImage('Health.png'),
                            fit: BoxFit.contain,
                            width: 400,
                            height: 300,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Health Department ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Open Sans',
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              // icon: Icon(Icons.group),
              icon: Text("Team",
                  style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      color: Colors.white)),
              label: "",
              tooltip: "Team",
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.image),
              icon: Text("Gallery",
                  style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      color: Colors.white)),
              label: "",
              tooltip: "Gallery",
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.graphic_eq),
              icon: Text("Statistics",
                  style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      color: Colors.white)),
              label: "",
              tooltip: "Statistics",
            ),
          ],
          onTap: (value) {
            setState(() {
              _selectedItems = value;
            });
          },
          backgroundColor: Colors.grey[900],
          currentIndex: _selectedItems,
        ),
      ),
    );
  }
}
