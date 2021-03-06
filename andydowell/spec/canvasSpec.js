describe('canvas', function() {
  var Canvas = require('../js/canvas.js');
  var canvas; 

  var createNewCanvas = function(width, height) {
    var tempCanvas = new Canvas(width, height);
    tempCanvas.generateCanvas();
    return tempCanvas;
  }
  describe('on initialization', function() {
    it('should know it\'s dimensions', function() {
      var canvas = new Canvas(20, 4);
      expect(canvas.height).toEqual(4);
      expect(canvas.width).toEqual(20);
    })
  })

  describe('generateCanvas', function() {
    it('should generate a blank canvas', function() {
      expect(createNewCanvas(5,5).content[1][1]).toEqual(' ');
    })
  })

  describe('drawPoint', function() {
    it('should be able to draw a point', function() {
      canvas = createNewCanvas(5,5);
      canvas.drawPoint(2,3);
      expect(canvas.content[3][2]).toEqual('x');
    })
    it('shouldnt be able to draw a point outside of the canvas', function() {
      expect(function(){createNewCanvas(5,5).drawPoint(15,100)}).toThrow('Canvas is 5x5; Unable to draw point x:15 y:100 outside of canvas');
    })
  })

  describe('drawLine', function() {
    it('should be able to draw a horizontal line between two points', function() {
      canvas = createNewCanvas(5,5);
      canvas.drawLine(0,0,4,0);
      expect(canvas.content[0][0]).toEqual('x');
      expect(canvas.content[0][1]).toEqual('x');
      expect(canvas.content[0][2]).toEqual('x');
      expect(canvas.content[0][3]).toEqual('x');
      expect(canvas.content[1].indexOf('x')).toEqual(-1);
    })
    it('should be able to draw a vertical line between two points', function() {
      canvas = createNewCanvas(5,5);
      canvas.drawLine(0,0,0,2);
      expect(canvas.content[0][0]).toEqual('x');
      expect(canvas.content[1][0]).toEqual('x');
      expect(canvas.content[2][0]).toEqual('x');
      expect(canvas.content[3][0]).toEqual(' ');
    })
  })

  describe('renderCanvas', function() {
    it('should correctly render a blank square 5x5 canvas', function() {
      canvas = createNewCanvas(5,5);
      expect(canvas.renderCanvas()).toEqual(
					  '-------\n'+
					  '|     |\n'+
					  '|     |\n'+
					  '|     |\n'+
					  '|     |\n'+
					  '|     |\n'+
					  '-------\n'); 
    })
  })
})
