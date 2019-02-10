// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Specs
// So that you don't have to guess the sizes, use these:

// Widget height: 100.0
// Icon size: 60.0
// Icon-with-colored-background width: 70.0
// Text size: 24.0

// The icon, color, and text should be passed into the Category widget upon instantiation. They should be required.
// Height of the Category widget is 100.0. Its padding is 8.0.
// The widget's border radius is half of the Category height (in this case, 50.0). You can define both the height and the border radius as constants.
// Icon size is 60.0. The padding around the icon is 16.0.
// Text size is 24.0.
// The InkWell will not animate if the onTap function is null. Use a print statement for now, as a placeholder. i.e. onTap: () { print('I was tapped!'); }.
// The InkWell's splash and highlight colors should be the color we pass in.

// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadious = BorderRadius.circular(_rowHeight / 2);
const _edgeInsertAll = EdgeInsets.all(16.0);
/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
final String name;
final ColorSwatch color;
final IconData iconLocation;

  const Category(
    {Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,

    }) : assert(name != null),
          assert(color != null),
          assert(iconLocation != null),
          super(key: key);


  /// Builds a custom widget that shows [Category] information.
  ///  This information includes the icon, name, and color for the [Category].
  @override
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.transparent,
      child:Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadious,
          highlightColor: color,
          splashColor: color,
          onTap: () { print ('I was tapped!');},
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: _edgeInsertAll,
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ), 
                ),
              ],
                ),
              
            ),
          ),
        ),
      ),
    
      

    );
  }
}