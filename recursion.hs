------------------
--- RESOURCES
--- http://learnyouahaskell.com/recursion#hello-recursion
--------------

----------------
--
-- Recursion is actually a way of defining functions in which the function is applied inside its own definition.

-- Having an element or two in a recursion definition defined non-recursively (like F(0) and F(1) here) 
  -- is also called the edge condition and is important if you want your recursive function to terminate
  
 -- Recursion is you do computations in Haskell by declaring what something is instead of declaring how you get it. 
 -- That's why there are no while loops or for loops in Haskell and instead we many times have to use recursion to declare what something is
  
-------------


----
--- ex: Max with recursion
----
{-

Now let's see how we'd define it recursively. We could first set up an edge condition and say that the maximum of a singleton list is equal to the only element in it.
Then we can say that the maximum of a longer list is the head if the head is bigger than the maximum of the tail. 
If the maximum of the tail is bigger, well, then it's the maximum of the tail. 

 So the first edge condition says that if the list is empty, crash!  
 The second pattern also lays out an edge condition. It says that if it's the singleton list, just give back the only element.

Now the third pattern is where the action happens. We use pattern matching to split a list into a head and a tail.
This is a very common idiom when doing recursion with lists, so get used to it.
We use a where binding to define maxTail as the maximum of the rest of the list. 

Then we check if the head is greater than the maximum of the rest of the list. 
If it is, we return the head. Otherwise, we return the maximum of the rest of the list.

Let's take an example list of numbers and check out how this would work on them: [2,5,1]. 
If we call maximum' on that, the first two patterns won't match. 
The third one will and the list is split into 2 and [5,1]. 
The where clause wants to know the maximum of [5,1],
so we follow that route. It matches the third pattern again and [5,1] is split into 5 and [1].
Again, the where clause wants to know the maximum of [1]. 
Because that's the edge condition, it returns 1. 
Finally! So going up one step, 
comparing 5 to the maximum of [1] (which is 1), we obviously get back 5. 
So now we know that the maximum of [5,1] is 5. 
We go up one step again where we had 2 and [5,1]. Comparing 2 with the maximum of [5,1], which is 5, we choose 5.

-}
maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs 
    
