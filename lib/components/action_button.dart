import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  ActionButton({required Key? key, required this.icon, required this.text, required this.imageIcon, required this.onClick})
      : super(key: key);

  final IconData? icon;
  final AssetImage? imageIcon;
  final String text;
  final Function onClick;

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {

  Widget _displayIcon() {
    if (this.widget.icon != null) {
      return Icon(
        this.widget.icon,
        size: 23.0,
        color: Colors.blue[800],
      );
    } else if (this.widget.imageIcon != null) {
      return ImageIcon(
        this.widget.imageIcon,
        size: 23.0,
        color: Colors.blue[800],
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            top: 2.0,
            bottom: 2.0,
          ),
        ),
        onPressed: () {
          widget.onClick();
        },
        child: Column(
          children: <Widget>[
            _displayIcon(),
            Text(
              this.widget.text,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
