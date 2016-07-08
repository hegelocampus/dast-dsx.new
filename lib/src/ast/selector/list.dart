// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import '../selector.dart';

class SelectorList extends Selector {
  final List<ComplexSelector> components;

  // Indices of [components] that are followed by line breaks.
  final List<int> lineBreaks;

  SelectorList(Iterable<ComplexSelector> components, {Iterable<int> lineBreaks})
      : components = new List.unmodifiable(components),
        lineBreaks = new List.unmodifiable(lineBreaks);

  String toString() => components.join(", ");
}