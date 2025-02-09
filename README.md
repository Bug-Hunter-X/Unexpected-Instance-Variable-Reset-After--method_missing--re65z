# Unexpected Instance Variable Reset After `method_missing` in Ruby

This repository demonstrates a subtle bug in Ruby related to the use of `method_missing`.  When a method is not found and `method_missing` is called, accessing instance variables after this can lead to unexpected behavior, such as variables being reset to `nil`.

The `bug.rb` file shows the problem, and `bugSolution.rb` offers a potential fix.

## How to Reproduce

1. Clone this repository.
2. Run `ruby bug.rb`.
3. Observe the unexpected output, where the instance variable `@value` is `nil` after calling the non-existent method.