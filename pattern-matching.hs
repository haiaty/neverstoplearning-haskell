module Example where

  -- When defining functions, you can define separate function bodies for different patterns.
  
  -- You can pattern match on any data type — numbers, characters, lists, tuples, etc.
  
  -- the patterns will be checked from top to bottom and when it conforms to a pattern, the corresponding function body will be used
  -- order is important when specifying patterns and it's always best to specify the most specific ones first and then the more general ones later.
  
  lucky :: (Integral a) => a -> String
  lucky 7 = "Lucky"
  lucky x = "Sorry"
  
  
  -- other example
  factorial :: (Integral a) => a -> a
  factorial 0 = 1
  factorial n = n * factorial (n -1)
  
  
  --- Pattern matching can also be used on tuples
  addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
  addVectors (x1, y1)(x2, y2) = (x1 + x2, y1 + y2)
  
  -- pattern matchinc using  '_'
  -- take the first element of a triple
  first :: (a,b,c) -> a
  first (x, _, _) = x

 -- Lists themselves can also be used in pattern matching
 
 -- A pattern like x:xs will bind the head of the list to x and the rest of it to xs, even if there's only one element so xs ends up being an empty list.
 
 -- If you want to bind, say, the first three elements to variables and the rest of the list to another variable, you can use something like x:y:z:zs. 
 -- It will only match against lists that have three elements or more
 
 -- head with pattern matching
  head' :: [a] -> a
  head' [] =  error "can't call head on empty list"
  head' (x:_) = x -- the first element is bind to x, and the rest is discarded because we've used _
  
  -- another example
  -- Note that (x:[]) and (x:y:[]) could be rewriten as [x] and [x,y] (because its syntatic sugar, we don't need the parentheses) 
  -- but We can't rewrite (x:y:_) with square brackets because it matches any list of length 2 or more. 
  tell :: (Show a) => [a] -> String  
  tell [] = "The list is empty"  
  tell (x:[]) = "The list has one element: " ++ show x  
  tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
  tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y
  
  
  -- implementation of lenght using recursion and pattern matching
  
  -- (_:xs) means: _ discard the first element, xs is the rest of the list
  -- so it will be 1 + (1 + (1 + ... (1 + 0)))
  length' :: (Num b) => [a] -> b
  length' [] = 0
  length' (_:xs) = 1 + length' xs 
  
  
  
 
