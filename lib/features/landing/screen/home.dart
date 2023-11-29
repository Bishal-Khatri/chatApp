import 'package:chatapp/features/authentication/screens/profile.dart';
import 'package:chatapp/features/chat/screen/channels.dart';
import 'package:chatapp/features/chat/screen/recent_chat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions = <Widget>[
    const RecentChatScreen(),
    const ChannelScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,

        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message),
            label: "Chat",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_work),
              label: "Channels"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
