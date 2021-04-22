import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottombarIndexProvider = StateProvider((_) => 0);

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('BottomBar/build');
    return Consumer(
      builder: (context, watch, child) {
        debugPrint('BottomBar/Consumer/builder');
        final _index = watch(bottombarIndexProvider);

        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.today),
              label: 'Todos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _index.state,
          selectedItemColor: Colors.blueAccent,
          onTap: (idx) {
            _index.state = idx;
          },
        );
      },
    );
  }
}
