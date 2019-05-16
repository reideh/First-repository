
import System.IO 
--user interface for user to see with instructions on how to play the game
instructions =
    "Enter commands\n" ++
    "Available commands are:\n" ++
    "w,e      -- enter to go in that direction.\n" ++
	"room#         --enter room with room number, example room1.\n" ++
    "quit               -- to end the game and quit.\n\n"++
	"Welcome to Zombie Uprising. Enter Start!!\n"
--user enters game to run the game 
game :: IO ()
game = do putStrLn instructions
          direction <- getLine
          putStrLn "input direction and room you want to enter:"
          play direction

--function 
play :: String -> IO ()
play direction =
   do guess <- getLine
      if guess == "quit" then
         putStrLn "Game over!"
      else
         do putStrLn (match direction guess)
            play direction
--higher order function 
match :: String -> String -> String
match xs ys = description xs ys

--description for each room function
description :: String-> String -> String

--description of contents inside room1
description _ "w room1" =
    "You are in a room1, in this room it is dark and empty. \n" ++
	"Game over, Enter quit and try again"
--description of contents inside room2	
description _ "e room2" = "There is a monster waiting in this room. \n" ++
	"The monster has eating you, You are Dead!!!!.\n"++
	"Game Over. Enter quit and try again"
--description of contents inside room3	
description _ "w room3" =
    "You are in room3, ITS A TRAP!!!!! The walls are beggining to close in this room.\n" ++
    "You are locked in. Game over, enter quit then try again"
--description of contents inside room4	
description _ "e room4" = 
    "Congratulations!!  You have recovered the ruby.\n" ++
	"You have saved the world from a zombie uprise. WINNER!!!!!"
--description of contents inside room5	
description _"w room5" =
	"You are in room 5, ITS A TRAP!!! Spikes fly out the wall and kill you!.\n "++
	"Game Over!!!!"	
--description of contents inside room6	
description _"e room6" =
	"You are in room 6, The air is poison, you have become posiened!.\n" ++
	"Game Over!!!!"
--description of contents inside room7	
description _"w room7" =
	"You are in room 7, This room is empty, try another room!!.\n" ++
	"Game over, enter quit then try again"
--description of contents inside room8	
description _"e room8" =
	"You are in room 8, zombies have trapped you inside the room, You are dead!. \n " ++
	"Game over, enter quit then try again"
--if a invalid command is entered this description will prompt	
description _ _ ="invalid, input again"







