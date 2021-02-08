import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mwasimozoto/template/pages/pageAccueil.dart';
import 'package:mwasimozoto/template/pages/pageAjoutDilemme.dart';
import 'package:mwasimozoto/template/pages/pageCompte.dart';
import 'package:mwasimozoto/template/pages/pageExplore.dart';
import 'package:mwasimozoto/template/pages/pageSearch.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final PageAccueil _pageAccueil = PageAccueil();
  final PageExplore _pageExplorer = PageExplore();
  final PageAjoutDilemme _pageAjoutDilemme = PageAjoutDilemme();
  final PageSearch _pageSearch = PageSearch();
  final PageCompte _pageCompte = PageCompte();

  int pageIndex = 0;

  Widget _affichePage = PageAccueil();

  Widget _pageSelectionEe(int page) {
    switch (page) {
      case 0:
        return _pageAccueil;
        break;
      case 1:
        return _pageExplorer;
        break;
      case 2:
        return _pageAjoutDilemme;
        break;
      case 3:
        return _pageSearch;
        break;
      case 4:
        return _pageCompte;
        break;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        backgroundColor: Colors.grey[200],
        items: [
          Icon(Icons.home, size: 30.0),
          Icon(Icons.home, size: 30.0),
          Icon(Icons.home, size: 30.0),
          Icon(Icons.home, size: 30.0),
          Icon(Icons.home, size: 30.0)
        ],
        onTap: (int tappedIndex) {
          setState(() {
            _affichePage = _pageSelectionEe(tappedIndex);
          });
        },
      ),
    );
  }
}
