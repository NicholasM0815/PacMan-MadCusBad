import Igis
import Scenes

class Ghost : RenderableEntity {

    
    let ghostColor:FillStyle
    var ghostRect:Rect
    var ghostRectangle:Rectangle

    var flashing:Bool
    var flashFor:Int
    var flashColor:FillStyle
    
    init(color: Color) {
        ghostColor = FillStyle(color:color)
        ghostRect = Rect(topLeft:Point.zero, size:Size(width:30, height:30))
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
        //empty
    }

    func move(to point:Point){
        self.ghostRect.topLeft = point
    }

    func ghostUp() {
        self.ghostRect.topLeft.y -= 7
    }
    func ghosytDown() {
        self.ghostRect.topLeft.y += 7
    }
    func ghostLeft() {
        self.ghostRect.topLeft.x -= 7
    }
    func ghostRight() {
        self.ghostRect.topLeft.x += 7
    }

    func ghostDie(canvasSize:Size) {
        self.ghostRect.topLeft = canvasSize.center
    }
    

    func getCloser() {
        print("placeholder text")
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
