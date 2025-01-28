import os
from datetime import datetime

path = os.path.abspath('Doc')

if not os.path.exists(path):
    os.makedirs(path)

file_path = os.path.join(path, 'log.txt')
timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

if os.path.exists(file_path):
    with open(file_path, 'a') as file:
        file.write(f'Commit at {timestamp}\n')
else:
    with open(file_path, 'w') as file:
        file.write(f'Commit at {timestamp}\n')
