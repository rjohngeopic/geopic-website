# -*- coding: utf-8 -*-
"""Baut Rover/Rover-Hero.jpg: breite Leinwand, Rover rechts, Raender weich
   ins Seiten-Schwarz auslaufend. Dadurch ist im Browser bei JEDER Fenster-
   breite nie eine Bildkante zu sehen (CSS nutzt cover + right center)."""
from PIL import Image, ImageFilter
import numpy as np

W, H = 2600, 1000
BG = (10, 10, 10)          # entspricht --bg der Website

canvas = Image.new('RGB', (W, H), BG)
rov = Image.open('Rover/MAIN.png').convert('RGB')

rw = 1620
rh = int(round(rov.height * rw / rov.width))
rov = rov.resize((rw, rh), Image.LANCZOS)

x = W - rw + 90            # 90 px ueber den rechten Rand hinaus
y = (H - rh) // 2

xs = np.linspace(0, 1, rw)
ys = np.linspace(0, 1, rh)
hx = np.clip((xs - 0.01) / 0.34, 0, 1)                       # links weich rein
vy = np.clip(np.minimum(ys / 0.16, (1 - ys) / 0.16), 0, 1)   # oben+unten weich
m = (hx[None, :] * vy[:, None] * 255).astype('uint8')
mask = Image.fromarray(m, 'L').filter(ImageFilter.GaussianBlur(28))

canvas.paste(rov, (x, y), mask)
canvas.save('Rover/Rover-Hero.jpg', quality=86, optimize=True, progressive=True)
print('Rover-Hero.jpg neu gebaut: %dx%d' % canvas.size)
