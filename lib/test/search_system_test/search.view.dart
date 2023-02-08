// main.dart
// ignore_for_file: prefer_const_constructors, prefer_is_empty

import 'package:flutter/material.dart';

import 'list.data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchBar(),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  static List<ItemModel> player = [
    ItemModel(
      "Lionel Messi",
      "Barcelona",
      "Forward",
      4.9,
      "https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
    ),
    ItemModel(
      "Cristiano Ronaldo",
      "Real Madrid",
      "Forward",
      4.9,
      "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
    ),
    ItemModel(
      "Xavi",
      "Barcelona",
      "Midfielder",
      4.9,
      "https://upload.wikimedia.org/wikipedia/commons/5/53/Xavi_13981129001173637176666027076571.jpg",
    ),
    ItemModel(
      "Andres Iniesta",
      "Barcelona",
      "Midfielder",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/a/a5/Andr%C3%A9s_Iniesta_%28cropped%29.jpg",
    ),
    ItemModel(
      "Zlatan Ibrahimovic",
      "	Paris Saint-Germain",
      "Forward",
      4.7,
      "https://upload.wikimedia.org/wikipedia/commons/0/09/Zlatan_Ibrahimovi%C4%87_June_2018.jpg",
    ),
    ItemModel(
      "Radamel Falcao",
      "Atletico Madrid",
      "Forward",
      4.6,
      "https://upload.wikimedia.org/wikipedia/commons/4/4d/FWC_2018_-_Round_of_16_-_COL_v_ENG_-_Photo_026_%28cropped%29.jpg",
    ),
    ItemModel(
      "Robin van Persie",
      "Manchester United",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/6/65/Loco-Fener_%2810%29.jpg",
    ),
    ItemModel(
      "Andrea Pirlo",
      "Juventus",
      "Midfielder",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Andrea_Pirlo%2C_Save_the_Dream_at_the_Supercoppa_%28cropped%29.jpg/220px-Andrea_Pirlo%2C_Save_the_Dream_at_the_Supercoppa_%28cropped%29.jpg",
    ),
    ItemModel(
      "Yaya Toure",
      "Manchester City",
      "Midfielder",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/b/b7/Yaya_Tour%C3%A9_%28cropped%29.jpg",
    ),
    ItemModel(
      "Iker Casillas",
      "Real Madrid",
      "GoalKeeper",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/DK-Porto15_%289%29.jpg/220px-DK-Porto15_%289%29.jpg",
    ),
    ItemModel(
      "Karim Benzema",
      "Real Madrid",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/e/ec/Karim_Benzema_wearing_Real_Madrid_home_kit_2021-2022.jpg",
    ),
    ItemModel(
      "Kylian Mbappé",
      "	Paris Saint-Germain",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/5/57/2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93129_%28cropped%29.jpg",
    ),
    ItemModel(
      "Erling Haaland",
      "Manchester City",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/f/fe/FC_RB_Salzburg_versus_SV_Mattersburg_%284._Juli_2019%29_29.jpg",
    ),
    ItemModel(
      "Luka Modric",
      "Real Madrid",
      "Midfielder",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Luka_Modric_Interview_2021_%28cropped%29.jpg/220px-Luka_Modric_Interview_2021_%28cropped%29.jpg",
    ),
    ItemModel(
      "Kevin De Bruyne",
      "Manchester City",
      "Midfielder",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/4/40/Kevin_De_Bruyne_201807091.jpg",
    ),
    ItemModel(
      "Robert Lewandowski",
      "	Barcelona",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/2/26/2019147183134_2019-05-27_Fussball_1.FC_Kaiserslautern_vs_FC_Bayern_M%C3%BCnchen_-_Sven_-_1D_X_MK_II_-_0228_-_B70I8527_%28cropped%29.jpg",
    ),
    ItemModel(
      "Thibaut Courtois",
      "Real Madrid",
      "GoalKeeper",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/c/c4/Courtois_2018_%28cropped%29.jpg",
    ),
    ItemModel(
      "Mohamed Salah",
      "Liverpool",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/4/4a/Mohamed_Salah_2018.jpg",
    ),
    ItemModel(
      "Neymar",
      "Paris Saint-Germain",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/6/65/20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Neymar_850_1705.jpg",
    ),
    ItemModel(
      "Harry Kane",
      "Tottenham",
      "Forward",
      4.8,
      "https://upload.wikimedia.org/wikipedia/commons/2/2e/Harry_Kane_in_Russia_2.jpg",
    ),
  ];

  //List ที่เอาไว้แสดง
  List<ItemModel> display_list = List.from(player);

  void updateList(String value) {
    // ฟังก์ชั่นไว้กรองชื่อใน list
    setState(() {
      display_list = player
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search for player!",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(
                color: Colors.amber,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.indigo[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg. Lionel Messi",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "Now result found",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8),
                        title: Text(
                          display_list[index].title!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "${display_list[index].team!}"
                          ", "
                          "${display_list[index].position!}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Text(
                          "${display_list[index].rating!}",
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                        leading: Image.network(
                          display_list[index].player_image_url!,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
