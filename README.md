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
2.5.0 and later release it seem to work fine with cases:

1) ... (still, testing more case)