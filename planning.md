# Description

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## App info

Plan
- Create new players
- Create new game
- Start with player one
- Generate question
- Player answers question, if true move on to next player, if false remove life and move on to next player
- Present current score
- Move to player two
- Generate question
- Player answers question, if true move on to next player, if false remove life and move on to next player
- Present current score
- Do this again until score reaches 0
- Present winner

class Player
- Variables: name, lives (starting value 3)
- Methods: set name, remove lives

class Question
- Variables: question, answer
- Methods: generate question

class Game
- Variables: current players (array), score(?)
- Methods: start game, new turn, set score