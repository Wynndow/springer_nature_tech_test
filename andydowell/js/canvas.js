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
  if(x >= this.width || x < 0 || y >= this.height || y < 0) {
    throw "Canvas is " + this.height + "x" + this.width + "; Unable to draw point x:" + x + " y:" + y + " outside of canvas"
  }
  this.content[y][x] = 'x';
}

Canvas.prototype.drawLine = function(x1, y1, x2, y2) {
  if(y1 === y2) {
    for(var col = x1; col <= x2; col++) {
      this.drawPoint(col, y1); 
    }
  } else {
    for(var row = y1; row <= y2; row++) {
      this.drawPoint(x1, row);
    }
  }
}

Canvas.prototype.renderCanvas = function() {
  var result = '';
  var upperBorder = new Array(this.width+3).join('-') + '\n';
  result += upperBorder;
  for(var row = 0; row < this.height; row++) {
    var rowString = '|';
    for(var col = 0; col < this.width; col++) {
      rowString += this.content[row][col];
    }
    rowString += '|\n';
    result += rowString;
  }
  result += upperBorder;
  return result
}

module.exports = Canvas;
