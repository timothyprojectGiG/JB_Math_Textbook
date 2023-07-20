from math import tau

def circumference_circle(r) :
    return r * tau

def area_circle(r) :
    return .5 * (r ** 2) * tau

def volume_sphere(r) :
    return (2/3) * (r ** 3) * tau

def volume_cylinder(r, h) :
    return area_circle(r) * h
