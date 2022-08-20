

import 'package:flutter/material.dart';

void main() {
  runApp(const Countries());
}


class Countries extends StatelessWidget {
  const Countries({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Countries',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
      ),
      home: const RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

String ulkeSayfasi = '';

class _RandomWordsState extends State<RandomWords> {

  //Countries//
  final africa = <String>[
    "Djibouti","Seychelles","DR Congo","Comoros","Togo","Sierra Leone",
    "Libya","Tanzania","South Africa","Cabo Verde","Congo","Kenya",
    "Liberia","Central African Republic","Mauritania","Uganda",
    "Algeria","Sudan","Morocco","Eritrea","Angola","Mozambique",
    "Ghana","Madagascar","Cameroon","Côte d'Ivoire","Namibia","Niger",
    "Gambia","Botswana","Gabon","Sao Tome & Principe","Lesotho",
    "Burkina Faso","Nigeria","Mali","Guinea-Bissau","Malawi","Zambia",
    "Senegal","Chad","Somalia","Zimbabwe","Equatorial Guinea","Guinea",
    "Rwanda","Mauritius","Benin","Burundi","Tunisia","Eswatini","Ethiopia",
    "South Sudan","Egypt","Egypt"
    ];

  final asia = <String> [
    "United Arab Emirates","Vietnam","Tajikistan",
    "Israel","Turkey","Iran","Bhutan","Laos",
    "Thailand","Lebanon","Kyrgyzstan","Turkmenistan",
    "Singapore","Myanmar","Maldives","South Korea","Oman",
    "State of Palestine","Brunei ","Kuwait","Iraq","Georgia",
    "Afghanistan","Saudi Arabia","Uzbekistan","Mongolia",
    "Malaysia","Yemen","Armenia","Nepal","Qatar","Indonesia",
    "North Korea","Pakistan","Sri Lanka","Kazakhstan","Syria",
    "Bahrain","Cambodia","Bangladesh","China","Timor-Leste","Japan",
    "Cyprus","Philippines","Jordan","Azerbaijan","India","India"
  ];

  final europe = <String> [
    "Hungary","Belarus","Austria","Serbia","Switzerland",
    "Germany","Holy See","Andorra","Bulgaria","United Kingdom",
    "France","Montenegro","Luxembourg","Italy","Denmark","Finland",
    "Slovakia","Norway","Ireland","Spain","Malta","Ukraine","Croatia",
    "Moldova","Monaco","Liechtenstein","Poland","Iceland","San Marino",
    "Bosnia and Herzegovina","Albania","Lithuania","North Macedonia",
    "Slovenia","Romania","Latvia","Netherlands","Russia","Estonia",
    "Belgium","Czech Republic (Czechia)","Greece","Portugal","Sweden","Sweden"
  ];

  final latinAmericaAndTheCaribbean = <String> [
    "Honduras","Antigua and Barbuda","Guyana",
    "Dominica","Paraguay","Nicaragua","El Salvador",
    "Suriname","Saint Kitts & Nevis","Costa Rica",
    "Colombia","Argentina","Panama","Belize","Bahamas",
    "Uruguay","Peru","Jamaica","Barbados","Venezuela",
    "Brazil","Chile","Saint Lucia","Guatemala","Ecuador",
    "Trinidad and Tobago","Mexico","Bolivia","Haiti",
    "Cuba","Grenada","St. Vincent & Grenadines","Dominican Republic","Dominican Republic"
  ];

  final oceania = <String> [
    "Fiji","Papua New Guinea","Solomon Islands",
    "Marshall Islands","Micronesia","New Zealand",
    "Vanuatu","Australia","Samoa","Palau","Kiribati","Tuvalu","Nauru","Tonga","Tonga"
  ];

  final northernAmerica = <String> [
    "Canada","United States","United States"
  ];
  //Countries//

  final _saved = <String>[];
  final _textStyle = const TextStyle(fontSize: 18,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(  
        title: const Text('Countries', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
            tooltip: 'Saved Countries',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ExpansionTile(
              title: const Text('AFRICA',style: TextStyle(fontWeight: FontWeight.bold)),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: africa.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) return const Divider();

                      final alreadySaved = _saved.contains(africa[index]);
                       String CPage = africa[index];

                      return ListTile(
                        tileColor: alreadySaved ? Colors.yellow : null,
                        title: Text(africa[index],style: _textStyle),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:() {
                              setState(() {
                            if (alreadySaved) {
                              _saved.remove(africa[index]);
                            } else {
                              _saved.add(africa[index]);
                            }
                          });
                            },
                              icon: alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              color: alreadySaved ? Colors.red : null,
                            ),
                          ],
                        ),
                        onTap:() {
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const CountryPage()));
                            ulkeSayfasi = CPage;
                          });
                        },
                        );
                      },
                    ),
              ],
            ),
          
            ExpansionTile(
              title: const Text('ASIA',style: TextStyle(fontWeight: FontWeight.bold)),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: asia.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) return const Divider();

                      final alreadySaved = _saved.contains(asia[index]);
                       String CPage = asia[index];

                      return ListTile(
                        tileColor: alreadySaved ? Colors.yellow : null,
                        title: Text(asia[index],style: _textStyle),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:() {
                              setState(() {
                            if (alreadySaved) {
                              _saved.remove(asia[index]);
                            } else {
                              _saved.add(asia[index]);
                            }
                          });
                            },
                              icon: alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              color: alreadySaved ? Colors.red : null,
                            ),
                          ],
                        ),
                        onTap:() {
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const CountryPage()));
                            ulkeSayfasi = CPage;
                          });
                        },
                        );
                      },
                    ),
              ],
            ),
          
            ExpansionTile(
              title: const Text('EUROPE',style: TextStyle(fontWeight: FontWeight.bold)),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: europe.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) return const Divider();

                      final alreadySaved = _saved.contains(europe[index]);
                       String CPage = europe[index];

                      return ListTile(
                        tileColor: alreadySaved ? Colors.yellow : null,
                        title: Text(europe[index],style: _textStyle),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:() {
                              setState(() {
                            if (alreadySaved) {
                              _saved.remove(europe[index]);
                            } else {
                              _saved.add(europe[index]);
                            }
                          });
                            },
                              icon: alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              color: alreadySaved ? Colors.red : null,
                            ),
                          ],
                        ),
                        onTap:() {
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const CountryPage()));
                            ulkeSayfasi = CPage;
                          });
                        },
                        );
                      },
                    ),
              ],
            ),
          
            ExpansionTile(
              title: const Text('LATIN AMERICA AND THE CARIBBEAN',style: TextStyle(fontWeight: FontWeight.bold)),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: latinAmericaAndTheCaribbean.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) return const Divider();

                      final alreadySaved = _saved.contains(latinAmericaAndTheCaribbean[index]);
                       String CPage = latinAmericaAndTheCaribbean[index];

                      return ListTile(
                        tileColor: alreadySaved ? Colors.yellow : null,
                        title: Text(latinAmericaAndTheCaribbean[index],style: _textStyle),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:() {
                              setState(() {
                            if (alreadySaved) {
                              _saved.remove(latinAmericaAndTheCaribbean[index]);
                            } else {
                              _saved.add(latinAmericaAndTheCaribbean[index]);
                            }
                          });
                            },
                              icon: alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              color: alreadySaved ? Colors.red : null,
                            ),
                          ],
                        ),
                        onTap:() {
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const CountryPage()));
                            ulkeSayfasi = CPage;
                          });
                        },
                        );
                      },
                    ),
              ],
            ),
          
            ExpansionTile(
              title: const Text('OCEANIA',style: TextStyle(fontWeight: FontWeight.bold)),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: oceania.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) return const Divider();

                      final alreadySaved = _saved.contains(oceania[index]);
                       String CPage = oceania[index];

                      return ListTile(
                        tileColor: alreadySaved ? Colors.yellow : null,
                        title: Text(oceania[index],style: _textStyle),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:() {
                              setState(() {
                            if (alreadySaved) {
                              _saved.remove(oceania[index]);
                            } else {
                              _saved.add(oceania[index]);
                            }
                          });
                            },
                              icon: alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              color: alreadySaved ? Colors.red : null,
                            ),
                          ],
                        ),
                        onTap:() {
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const CountryPage()));
                            ulkeSayfasi = CPage;
                          });
                        },
                        );
                      },
                    ),
              ],
            ),
          
            ExpansionTile(
              title: const Text('NORTHERN AMERICA',style: TextStyle(fontWeight: FontWeight.bold)),
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: northernAmerica.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) return const Divider();

                      final alreadySaved = _saved.contains(northernAmerica[index]);
                       String CPage = northernAmerica[index];

                      return ListTile(
                        tileColor: alreadySaved ? Colors.yellow : null,
                        title: Text(northernAmerica[index],style: _textStyle),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed:() {
                              setState(() {
                            if (alreadySaved) {
                              _saved.remove(northernAmerica[index]);
                            } else {
                              _saved.add(northernAmerica[index]);
                            }
                          });
                            },
                              icon: alreadySaved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                              color: alreadySaved ? Colors.red : null,
                            ),
                          ],
                        ),
                        onTap:() {
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const CountryPage()));
                            ulkeSayfasi = CPage;
                          });
                        },
                        );
                      },
                    ),
              ],
            ),
          
          ],
        ),
      ),
    );

  }

void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map((pair) {
            return ListTile(title: Text(pair, style: _textStyle));
          },);
          final divided = tiles.isNotEmpty ? ListTile.divideTiles(context: context,tiles: tiles).toList() : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Countries', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

}

class CountryPage extends StatelessWidget {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ulkeSayfasi)),
    );
  }
}