____problem____

You're given the task of writing a simple console version of a drawing program. At this time, the functionality of the program is quite limited but this might change in the future. In a nutshell, the program should work as follows:

1. create a new "canvas".
2. start drawing on the "canvas" by issuing various "commands". 
3. quit.
At the moment, the program should support the following "commands":


"Command"
                  Description
Cw h
                  Should create a new "canvas" of width w and height h.
L x1 y1 x2 y2
                  Should create a new "line" from (x1,y1) to (x2,y2). Currently only horizontal or vertical "lines" are supported. Horizontal and vertical "lines" will be drawn using the 'x' character.
R x1 y1 x2 y2
                  Should create a new rectangle, whose upper left corner is (x1,y1) and lower right corner is (x2,y2). Horizontal and vertical "lines" will be drawn using the 'x' character.
Bxy c
                  Should fill the entire "area" connected to (x,y) with colour 'c'. The behaviour of this is the same as that of the "bucket fill" tool in paint programs.
Q
                  Should quit the program.

____key words____
"canvas" - (2d array) of width w and height h
"lines" - 'x' character
"fill" - "area" with colour (arg)

___aproach___
class drawing 
  methods - create "canvas"
  methods - draw

class draw
  methods - line
  methods - rectangle
  methods - fill




