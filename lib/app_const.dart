// We don't have name spaces in Dart, but static const in a class is a way to
// conveniently name space constants. We could us `kConst` constants in
// different files, and import them with "as", but we cannot enforce a given
// "as" name for its imports in a project to get consistent import "as"
// naming, plus the "as" uses in code awkward looking snake case
// naming convention.
//
// Grouping constants in a class is a pragmatic way to get around this.

class AppConst {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  AppConst._(); // coverage:ignore-line

  static const String name = 'Demo app';
  static String get hello => 'Hello';
}
