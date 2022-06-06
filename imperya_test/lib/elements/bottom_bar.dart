import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex =
      0; //to handle which item is currently selected in the bottom app bar
  String text = "Home";

  //questo metodo aggiorna lo schermo e abilita l'icona che viene selezionata- il controllo avviene tramite una stringa e un int
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text =
          buttonText; // questo testo non è indispensabile - serve solo per terne conto della pagina abilitata in fase di sviluppo
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // widget che definisce una bottomAppBar
      elevation: 20.0,

      child: Container(
        margin: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              //update the bottom app bar view each time an item is clicked
              onPressed: () {
                updateTabSelection(0, "Home");
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.home,
                //darken the icon if it is selected or else give it a different color
                color: selectedIndex == 0
                    ? ThemeApp.gold
                    : Colors.grey
                        .shade400, // se il valore selezionato è 0, home è abilitata
              ),
            ),
            IconButton(
              onPressed: () {
                updateTabSelection(1,
                    "Favorite"); // se il valore selezionato è 1, favorite è abilitata
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.favorite,
                color:
                    selectedIndex == 1 ? ThemeApp.gold : Colors.grey.shade400,
              ),
            ),
            //to leave space in between the bottom app bar items and below the FAB
            SizedBox(
              width: 50.0,
            ),
            IconButton(
              onPressed: () {
                updateTabSelection(2,
                    "Notifications"); // se il valore selezionato è 2, notifications è abilitata
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.notifications,
                color:
                    selectedIndex == 2 ? ThemeApp.gold : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                updateTabSelection(3,
                    "Settings"); // se il valore selezionato è 3, settings è abilitata
              },
              iconSize: 27.0,
              icon: Icon(
                Icons.settings,
                color:
                    selectedIndex == 3 ? ThemeApp.gold : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      //to add a space between the FAB and BottomAppBar
      shape: CircularNotchedRectangle(),
      //color of the BottomAppBar
      color: Colors.white,
    );
  }
}
