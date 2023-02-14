
import math

x_coord = 5.544445
y_coord = 5.544445
pi = 3.1415926535897

mag = math.sqrt(x_coord**2 + y_coord**2)
dir_cos = (x_coord/mag)#*(180/pi)
print(dir_cos)
dir_cos = math.acos(dir_cos)
print(dir_cos)
dir_cos = math.degrees(dir_cos)
print(dir_cos)