[![codecov](https://codecov.io/gh/rydmike/coverage_ignore_issue/branch/master/graph/badge.svg?token=6LTgn2GSZT)](https://codecov.io/gh/rydmike/coverage_ignore_issue)

# coverage_ignore_issue

Coverage test issue

## Made to test a small issue 

This project is made to test the 'ignore' flag on private class constructor 
in codecov.io analysis.

0) Base case - run without ignore 
1) Run with ignore using: // coverage:ignore-line - on the line
2) Run with ignore using: // coverage:ignore-line - before the line
3) Run with ignore using: // coverage:ignore-line - on and before the line
4) Run with enclosing ignore using:
   // coverage:ignore-start and // coverage:ignore-end  

## Conclusion

The "ignore" did not work in Dart/Flutter before Flutter 2.5.0, but in
Flutter 2.5.0 and later release it seem to work as follows. 
The untestable and in test code unreachable line:

```dart
AppConst._();
```

Is reported as follows:

0) Reported as not tested => **OK!**
1) Ignore after line => Ignored => **OK!**
2) Before the line, like a lint ignore => Not ignored => **FAIL!**
   Should it work?
3) Before and on the line => Ignored  => **OK!**
4) Enclosed with ignore => Ignored  => **OK!**