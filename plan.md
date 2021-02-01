Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

Task 1: Extract Nouns for Classes


class Player_1
class Player_2
Player classes contain:   Lives (default 3)
                          Score (default 0)

class Math_Questions
Contains:                 Array of objects with math questions, i.e., { val_a: 2, val_b: 5, answer: 7 }
                          Method to output questions in sequence when called

class Application
Contains:                 Game logic, methods, prompt