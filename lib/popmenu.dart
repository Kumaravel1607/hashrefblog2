import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Options { search, upload, copy, exit }

class PopMenu extends StatefulWidget {
  PopMenu({Key? key}) : super(key: key);

  @override
  State<PopMenu> createState() => _PopMenuState();
}

class _PopMenuState extends State<PopMenu> {
  var _popupMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.red;

  _buildAppBar() {
    return AppBar(
      backgroundColor: Blue,
      title: const Text(
        'Popup Menus',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            _onMenuItemSelected(value as int);
          },
          itemBuilder: (ctx) => [
            _buildPopupMenuItem('Search', Icons.search, Options.search.index),
            _buildPopupMenuItem('Upload', Icons.upload, Options.upload.index),
            _buildPopupMenuItem('Copy', Icons.copy, Options.copy.index),
            _buildPopupMenuItem(
                'Logout', Icons.exit_to_app, Options.exit.index),
          ],
        )
      ],
    );
  }

  PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData, int position) {
    return PopupMenuItem(
      value: position,
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.black,
          ),
          Text(title),
        ],
      ),
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;
    });

    if (value == Options.search.index) {
      _changeColorAccordingToMenuItem = yellow;
    } else if (value == Options.upload.index) {
      _changeColorAccordingToMenuItem = grey;
    } else if (value == Options.copy.index) {
      _changeColorAccordingToMenuItem = violet;
    } else {
      _changeColorAccordingToMenuItem = primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        color: _changeColorAccordingToMenuItem,
      ),
    );
  }
}
