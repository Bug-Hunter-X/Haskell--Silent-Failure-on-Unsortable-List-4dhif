# Haskell Silent Failure on Unsortable List

This repository demonstrates a common error in Haskell: the silent failure when attempting to sort a list with incomparable elements. The `sort` function from `Data.List` only works with types that are instances of the `Ord` typeclass. If you provide a list containing elements without a defined ordering, the program will crash without providing much information.

The solution involves either using a different sorting algorithm that handles such cases or employing more robust input validation to prevent passing unsortable lists.
