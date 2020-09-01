import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    final _textFieldController = TextEditingController();
    String _stingQuery;
    return Container(
      height: _screenSize.height,
      width: _screenSize.width,
      color: kMainDarkColor,
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: TextField(
              controller: _textFieldController,
              textInputAction: TextInputAction.search,
              cursorColor: kMainLightColor.withOpacity(0.8),
              style: TextStyle(
                fontSize: 18.0,
                color: kMainLightColor,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: kSecondLightColor,
                hintText: 'Search...',
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.search,
                    color: kMainLightColor.withOpacity(0.8),
                  ),
                  onTap: () {
                    if (_stingQuery.isNotEmpty) {
                      print(_stingQuery);
                      _textFieldController.clear();
                    }
                  },
                ),
              ),
              onChanged: (inputString) {
                _stingQuery = inputString;
              },
            ),
          ),
        ],
      ),
    );
  }
}
