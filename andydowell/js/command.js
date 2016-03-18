function Command(canvasKlass) {
  this.canvasGenerator = canvasKlass
//  this.readLine = require('readline')
//
//  this.rl = this.readLine.createInterface({
//    input: process.stdin,
//    output: process.stdout
//  })
//  this.enterCmd = this.rl.question('Enter command:', function(response) {
//    this.parseInput(response);
//  })
}


Command.prototype.newCanvas = function(width, height) {
  this.canvas = new this.canvasGenerator(width, height);  
}

Command.prototype.parseInput = function(input) {
  if(input[0] === 'C') {
    var cmd = input.split(' ');
    var cmd1 = Number(cmd[1]);
    var cmd2 = Number(cmd[2]);
    this.newCanvas(cmd1, cmd2);
  }
  if(input[0] === 'L') {
    var cmd = input.split(' ');
    var x1 = Number(cmd[1]);
    var y1 = Number(cmd[2]);
    var x2 = Number(cmd[3]);
    var y2 = Number(cmd[4]);
    this.line(x1, y1, x2, y2);
  }
}

Command.prototype.line = function(x1, y1, x2, y2) {
  this.canvas.drawLine(x1, y1, x2, y2);
}

module.exports = Command;
