
import ast
from colorama import Fore

x=1
with open('save_maze.txt') as f:
    maze = f.read()

for i in ast.literal_eval(maze):
    print()
    print(Fore.WHITE, 
          f' (LEVEL {x}) '.center(len(i[0]) *3 -2, '-'), 
          end='\n\n')
    
    x += 1
    for j in i:
        for k in j:
            # print(k, type(k))

            if k == 'p':
                col = Fore.BLUE
            if k == 'w':
                col = Fore.RED
            if k == 'c':
                col = Fore.GREEN

            print(col, k, end=' ')
        print()
