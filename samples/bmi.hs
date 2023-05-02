bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= 18.5 = "you're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pfffft, I you're ubly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2