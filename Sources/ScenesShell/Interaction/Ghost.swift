import Igis
import Scenes

class Ghost : RenderableEntity {

    let ghostColor1:FillStyle
    let ghostColor2:FillStyle
    let ghostColor3:FillStyle
    let ghostColor4:FillStyle
    let ghostRect1:Rect
    let ghostRect2:Rect
    let ghostRect3:Rect
    let ghostRect4:Rect
    
    let ghostColor:FillStyle
    var ghostRect:Rect
    var ghostRectangle:Rectangle

    var flashing:Bool
    var flashFor:Int
    var flashColor:FillStyle
    
    init(color: Color) {
        ghostColor = FillStyle(color:color)
        ghostRect = Rect(topLeft:Point.zero, size:Size(width:40, height:40))
        ghostRectangle = Rectangle(rect:ghostRect, fillMode:.fillAndStroke)
        
        flashing = false
        flashFor = 0
        flashColor = FillStyle(color:Color(red:192, green:192, blue:192))
        
        super.init(name:"Ghost")
    }

    func flash(for amount:Int){
        self.flashFor = amount * 20
        self.flashing = true
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        ghostRect.topLeft = canvasSize.center - Point(x:ghostRect.size.width/2, y:ghostRect.size.height/2)
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
    }
}
