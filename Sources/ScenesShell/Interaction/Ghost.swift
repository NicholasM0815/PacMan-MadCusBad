import Igis
import Scenes

class Ghost : RenderableEntity {

    
    let ghostColor:FillStyle
    var ghostRect:Rect
    var ghostRectangle:Rectangle

    var flashing:Bool
    var flashFor:Int
    var flashColor:FillStyle

    var gameOver:Bool
    var win:Bool
    
    init(color: Color) {
        ghostColor = FillStyle(color:color)
        ghostRect = Rect(topLeft:Point.zero, size:Size(width:30, height:30))
        ghostRectangle = Rectangle(rect:ghostRect, fillMode:.fillAndStroke)
        
        flashing = false
        flashFor = 0
        flashColor = FillStyle(color:Color(red:192, green:192, blue:192))

        gameOver = false
        win = false
        
        super.init(name:"Ghost")
    }

    func flash(for amount:Int){
        self.flashFor = amount * 20
        self.flashing = true
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        //empty
    }

    func move(to point:Point){
        self.ghostRect.topLeft = point
    }

    func ghostUp(_ amount:Int) {
        self.ghostRect.topLeft.y -= amount
    }
    func ghostDown(_ amount:Int) {
        self.ghostRect.topLeft.y += amount
    }
    func ghostLeft(_ amount:Int) {
        self.ghostRect.topLeft.x -= amount
    }
    func ghostRight(_ amount:Int) {
        self.ghostRect.topLeft.x += amount
    }



    
    func ghostDie(canvasSize:Size) {
        self.ghostRect.topLeft = canvasSize.center
    }

    
    
    func topBoundingRect() -> Rect{
        return Rect(topLeft:self.ghostRect.topLeft - Point(x:0, y:self.ghostRect.size.height), size:self.ghostRect.size)
    }
    
    func bottomBoundingRect() -> Rect{
        return Rect(topLeft:self.ghostRect.bottomLeft, size:self.ghostRect.size)
    }

    func leftBoundingRect() -> Rect{
        return Rect(topLeft:self.ghostRect.topLeft - Point(x:self.ghostRect.size.width, y:0), size:self.ghostRect.size)
    }

    func rightBoundingRect() -> Rect{
        return Rect(topLeft:self.ghostRect.topRight, size:self.ghostRect.size)
    }
    
    override func render(canvas:Canvas){
        
            ghostRectangle = Rectangle(rect:ghostRect, fillMode:.fillAndStroke)
            if flashing{
                if flashFor % 5 == 0 {
                    canvas.render(flashColor, StrokeStyle(color:Color(.gray)), LineWidth(width:2), ghostRectangle)
                }else{
                    canvas.render(ghostColor, StrokeStyle(color:Color(.gray)), LineWidth(width:2), ghostRectangle)
                }
                flashFor -= 1
                if flashFor == 0{
                    flashing = false
                }
            }else{
                canvas.render(ghostColor, StrokeStyle(color:Color(.gray)), LineWidth(width:2), ghostRectangle)
            }
            //canvas.render(FillStyle(color:Color(.white)), Rectangle(rect:self.bottomBoundingRect(), fillMode:.fill))
        }   
}
