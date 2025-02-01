#!/usr/bin/env python

import sys

# Получаем аргументы из командной строки
font = sys.argv[1:]
font_name = ""

if font[0] == "FiraCode":
    for n in font[:4]:
        if n == font[3]:
            font_name += n.split(",")[0] + " "
            break
        font_name += n + " "
else:
    for n in font:
        font_name += n + " "
