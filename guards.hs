{--

 Guards are a way of testing whether some property of a value (or several of them) are true or false.
 
 Guards are a lot more readable when you have several conditions and they play really nicely with patterns

 Guards are indicated by pipes
 
 Guard is basically a boolean expression. If it evaluates to True, then the corresponding function body is used. 
 If it evaluates to False, checking drops through to the next guard and so on
 
 Many times, the last guard is otherwise. otherwise is defined simply as otherwise = True and catches everything
--}

bmiTell :: (RealFloat a) => a -> String  
bmiTell bmi  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!" 
    

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!"  
