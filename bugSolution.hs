```haskell
import Data.List (sort)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys

main2 :: IO ()
main2 = do
  let xs = [1, "a", 3, 4, 5]
  let ys = sortWithFallback xs
  print $ fromMaybe (error "List contains incomparable types.") ys

sortWithFallback :: (Ord a) => [a] -> Maybe [a]
sortWithFallback xs = case sort xs of
                      result -> Just result
                      _ -> Nothing
```