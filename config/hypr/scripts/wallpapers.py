#!/usr/bin/env python3

import os
import random
import time

#random seed
random.seed(time.ctime())

# home
home = os.path.expanduser('~')

# Укажите путь к папке
folder_path = home +'/Pictures/wallpapers/'

# Получаем список всех файлов в папке
file_names = [f for f in os.listdir(folder_path) if os.path.isfile(os.path.join(folder_path, f))]

digit = random.randint(0, len(file_names))

cur_wallpaper_path = folder_path + file_names[digit]
wallpaper_script = home + '/.config/hypr/scripts/wallpaper'

with open(wallpaper_script, 'r') as file:
    lines = file.readlines()

if lines:
    lines[-1] = f'swaybg -i {cur_wallpaper_path}'

with open(wallpaper_script, 'w') as file:
    file.writelines(lines)

os.system('swaybg -i ' + cur_wallpaper_path)
