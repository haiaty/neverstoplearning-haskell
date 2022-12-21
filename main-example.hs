-- you can import other modules using 'import'


-- example 1.hs
main = putStrLn "Hello from Haskell"


-- file example 2.hs
main = main = do
    print("hello")
    
    
 -- file example3.hs
 -- with declaration
 
 main :: IO()
 main = putStrLn "Hello from Haskell"
 
 
 
 ---------------
 -- HOW TO RUN
 -----------------

  ghci
 :load <file_name>.hs
 main
