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

module.exports = Canvas;
