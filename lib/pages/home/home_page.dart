part of '../pages.dart';

class HomePage extends StatefulWidget {
int _currentIndex = 0;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ListView(
        children: [
          HomeAppBar(),
          SearchBar(),
          PetListCategory(),
          PetList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: widget._currentIndex == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: widget._currentIndex == 1 ? Icon(Icons.email) : Icon(Icons.email_outlined),
            label: 'Email'
          ),
          BottomNavigationBarItem(
            icon: widget._currentIndex == 2 ? Icon(Icons.shopping_bag) : Icon(Icons.shopping_bag_outlined),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: widget._currentIndex == 3 ? Icon(Icons.person_rounded) : Icon(Icons.person_outline_rounded),
            label: 'User'
          ),
        ],
        onTap: (index) => setState(() => widget._currentIndex = index ),
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey.withOpacity(0.4),
        elevation: 0,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: widget._currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}