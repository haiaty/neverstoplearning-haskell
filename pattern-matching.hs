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
  
  -- First we defined the result of a known input — the empty list. This is also known as the edge condition
  -- Then in the second pattern we take the list apart by splitting it into a head and a tail. We say that the length is equal to 1 plus the length of the tail. We use _ to match the head because we don't actually care what it is. Also note that we've taken care of all possible patterns of a list.
  -- The first pattern matches an empty list and the second one matches anything that isn't an empty list.
  
  -- (_:xs) means: _ discard the first element, xs is the rest of the list
  -- so it will be 1 + (1 + (1 + ... (1 + 0)))
  length' :: (Num b) => [a] -> b
  length' [] = 0
  length' (_:xs) = 1 + length' xs 
  
  
  -- implmentation of sum of elements of a list using recursion and pattern matching
  
  -- We know that the sum of an empty list is 0. We write that down as a pattern. 
  -- And we also know that the sum of a list is the head plus the sum of the rest of the list
  sum' :: (Num a) => [a] -> a  
  sum' [] = 0  
  sum' (x:xs) = x + sum' xs
  
  
  ------------------------
  -- 'NAMED' PATTERNS
  ------------------------
  -- as patterns. Those are a handy way of breaking something up according to a pattern and binding it to names whilst still keeping a reference to the whole thing. 
  -- You do that by putting a name and an @ in front of a pattern.
  
  -- Normally we use as patterns to avoid repeating ourselves when matching against a bigger pattern when we have to use the whole thing again in the function body
  
  -- example:
  -- in this case the pattern is called 'all' and is used in the defintion
  capital :: String -> String  
  capital "" = "Empty string, whoops!"  
  capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
  
  
  
 
