function Canvas(width, height) {
  this.width = width,
  this.height = height
}

Canvas.prototype.generateCanvas = function() {
  var result = [];
  for(var row = 0; row < this.height; row++) {
    var rowResult = [];
    for(var col = 0; col < this.width; col++) {
      rowResult.push(' ');
    }
    result.push(rowResult);
  }
  this.content = result;
}

Canvas.prototype.drawPoint = function(x, y) {
  this.content[y][x] = 'x';
}

module.exports = Canvas;
