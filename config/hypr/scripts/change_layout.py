#!/usr/bin/env python3

from os import path


home = path.expanduser('~')
layout = "dwindle"
num: int = -1

file_path = home + '/.config/hypr/config/view.conf'

with open(file_path, 'r') as file:
    lines = file.readlines()

for line_number, line in enumerate(lines):
    if line.strip() == "layout = dwindle #master #dwindle #hy3":
        layout = "master"
        num = line_number
    elif line.strip() == "layout = master #master #dwindle #hy3":
        layout = "hy3"
        num = line_number
    elif line.strip() == "layout = hy3 #master #dwindle #hy3":
        layout = "dwindle"
        num = line_number

if num != -1:  # Убедиться, что мы нашли строку
    lines[num] = f"    layout = {layout} #master #dwindle #hy3\n"

with open(file_path, 'w') as file:
    file.writelines(lines)
