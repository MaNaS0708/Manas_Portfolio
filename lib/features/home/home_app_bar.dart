import 'package:flutter/material.dart';
import 'connections_dialog.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      title: const Text(
        'Home',
      ),

      actions: [

        IconButton(
          icon: Icon(Icons.link),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const ConnectionsDialog(),
            );
          },
        ),

        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
          },
        ),
      ],

    );
  }

@override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}