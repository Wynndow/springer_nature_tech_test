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

Canvas.prototype.drawLine = function(x1, y1, x2, y2) {
  for(var row = 0; row < this.content.length; row++) {
    
    for(var col = 0; col < this.content[0].length; col++) {
      if(x1 <= col && col <= x2) {
	this.drawPoint(col, row);
      } 
    }
  }
}

module.exports = Canvas;
