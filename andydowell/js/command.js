function Command() {
  
}

Command.prototype.newCanvas = function(width, height) {
}

Command.prototype.parseInput = function(input) {
  if(input[0] === 'C') {
    var cmd = input.split(' ');
    var cmd1 = Number(cmd[1]);
    var cmd2 = Number(cmd[2]);
    this.newCanvas(cmd1, cmd2);
  }
}

module.exports = Command;
