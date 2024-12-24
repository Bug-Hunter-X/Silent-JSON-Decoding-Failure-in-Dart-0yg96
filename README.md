# Silent JSON Decoding Failure in Dart

This repository demonstrates an uncommon error in Dart where `jsonDecode` fails silently when presented with unexpected JSON data.  The issue can be difficult to debug because it doesn't always throw an immediate exception, leading to unpredictable behavior in your application.

The `bug.dart` file contains the erroneous code.  The `bugSolution.dart` file provides a robust solution to handle unexpected data and prevent silent failures.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe the output; the exception might not be obvious.
3. Run `bugSolution.dart`. Note how the improved error handling provides a more informative message.