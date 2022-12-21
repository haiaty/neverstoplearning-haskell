------------
-- utils
------------
-- see the type of a function  :type <func_name>

------------
-- concepts
------------
-- are like mathematical functions in like they take values form a certain type and return valeus of Maybe type

-- currying functions: haskel takes the first argument and returns a new function that takes the second argument as argument and returns the value
-- eta reduction: if you define a function to another one tha has the same params you simplify it by removing them
-----------------
--
-------------------

-- how to read the type declaration: the add fucntion takes a number (first 'a'), a second number (-> a), and return a number  (-> a)
add :: (Num a) => a -> a -> a
add a b = a + b

-- example of how haskell applies function currying

-- :type add 1  you get:  add 1 :: Num a => a -> a   wich means that 'add 1' returns a function wich takes a num and return a num


-- we can assign a name to this new function
-- for example, let's call it 'add1':

add1 = add 1

-- after that you can call the new function with a value, like:

add1 2
