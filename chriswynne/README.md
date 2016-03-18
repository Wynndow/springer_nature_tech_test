####Springer Nature Coding Day

##The Approach

The approach was to use a controller to connect a canvas class with a UI class. The UI class dealing with giving and receiving data to the command line and the canvas class responsible for creating a drawing the canvas. The controller would parse the commands coming in and decided what to run off the back of it. This all happens in a loop until the UI receives a "Q" command which quits the loop.

##Problems

Had a slow start to the day, trying to mock STDIN and STDOUT. In the end created a custom gets method on the UI class to allow for easier mocking.

The controller only got so far as parsing the create canvas command.
