import os
import sys

print(os.getcwd())
print(sys.executable)
print(os.listdir(os.path.abspath(os.path.join('Doc', 'erros'))))
print(os.path.abspath('Doc'))

with open(os.path.abspath(os.path.join('Doc', 'erros', 'test.txt')), 'w', encoding='utf-8') as f:
    f.write('AAAAAAAAAAAAAAAAAAAAAAAAAA')