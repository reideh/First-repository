
import System.IO 

instructions =
    "Enter commands\n" ++
    "Available commands are:\n" ++
    "n  s  e  w     -- enter to go in that direction.\n" ++
    "quit               -- to end the game and quit.\n\n"++
	"Welcome to Zombie Uprising. Enter Start!!\n"

game :: IO ()
game = do putStrLn instructions
          direction <- getLine
          putStrLn "input direction and room you want to enter:"
          play direction


play :: String -> IO ()
play direction =
   do guess <- getLine
      if guess == "quit" then
         putStrLn "Game over!"
      else
         do putStrLn (match direction guess)
            play direction

match :: String -> String -> String
match xs ys = description xs ys


description :: String-> String -> String
description _ "w room1" =
    "You are in a room1, in this room it is dark and empty."
description _ "e room2" = "There is a monster waiting in this room. \n" ++
	"The monster has eating you, You are Dead!!!!."
description _ "n w room3" =
    "You are in room3, ITS A TRAP!!!!! The walls are beggining to close in this room.\n" ++
    "You are locked in.\n" ++
    "GAME OVER."

description _ "n e room4" = "Congratulations!!  You have recovered the ruby.\n" ++
	"you have saved the world from a zombie uprise. WINNER!!!!!"
description _ _ ="invalid, input again"






