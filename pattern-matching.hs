module Example where

  -- When defining functions, you can define separate function bodies for different patterns.
  -- You can pattern match on any data type — numbers, characters, lists, tuples, etc
  lucky :: (Integral a) => a -> String
  lucky 7 = "Lucky"
  lucky x = "Sorry"
