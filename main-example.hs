-- you can import other modules using 'import'

----------------
-- example 1.hs
-----------------
main = putStrLn "Hello from Haskell"

---------------------
-- file example 2.hs
---------------------
main = main = do
    print("hello")
    
 ---------------------
 -- file example3.hs
 ----------------------
 -- with declaration
 
 main :: IO()
 main = putStrLn "Hello from Haskell"
 
 
 
 ---------------------------
 -- file example 4.hs
 -------------------------
 -- with variable, and declaration
 -- NOTE: the variable could be put after the main. it is not necessary to come before the mai definition
 
greeting = "His"

main :: IO ()
main = do
    print(greeting ++ " world")
    
    
    
 ---------------------   
 -- file example 5.hs
 -----------------------
 -- with variable, and declaration, and a function
 
greeting = "His"

main :: IO ()
main = do
    print(greeting ++ " world")
    print(greet "io")
 
greet who = greeting ++ " " + who
 
 ---------------
 -- HOW TO RUN
 -----------------

  ghci
 :load <file_name>.hs
 main
