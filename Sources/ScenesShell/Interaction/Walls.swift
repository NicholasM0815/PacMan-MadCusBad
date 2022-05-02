
import Igis
import Scenes

class Walls : RenderableEntity {

    let levelTop:Rectangle
    let levelLeft:Rectangle
    let levelRight:Rectangle
    let levelBottom:Rectangle

    let levelWall1:Rectangle
    let levelWall2:Rectangle
    let levelWall3:Rectangle
    let levelWall4:Rectangle
    let levelWall5:Rectangle
    let levelWall6:Rectangle
    let levelWall7:Rectangle
    let levelWall8:Rectangle
    let levelWall9:Rectangle
    let levelWall10:Rectangle
    let levelWall11:Rectangle
    let levelWall12:Rectangle
    let levelWall13:Rectangle
    let levelWall14:Rectangle
    let levelWall15:Rectangle
    let levelWall16:Rectangle
    let levelWall17:Rectangle
    let levelWall18:Rectangle
    let levelWall19:Rectangle
    let levelWall20:Rectangle
    
    let levelFill:FillStyle

    let levelStroke:StrokeStyle

    var levelRectangles:Array<Rectangle> = []
    
    init() {
        //Initialize Object
        levelTop = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelLeft = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelRight = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelBottom = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall1 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall2 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall3 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall4 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall5 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall6 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall7 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall8 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall9 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall10 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall11 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall12 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall13 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall14 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall15 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall16 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall17 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall18 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall19 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall20 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        
        levelFill = FillStyle(color:Color(.blue))
        levelStroke = StrokeStyle(color:Color(.blue))
        
        super.init(name:"Walls")
    }
    

    override func setup(canvasSize:Size, canvas:Canvas){
        let canvasSize = canvas.canvasSize!

        levelTop.rect = Rect(topLeft:Point(x:50, y:50), size:Size(width:canvasSize.width - 100, height: 10))
        levelRectangles.append(levelTop)

        levelLeft.rect = Rect(topLeft:Point(x:canvasSize.width - 60, y:50), size:Size(width:10, height: canvasSize.height - 100))
        levelRectangles.append(levelLeft)

        levelRight.rect = Rect(topLeft:Point(x:50, y:50), size:Size(width:10, height: canvasSize.height - 100))
        levelRectangles.append(levelRight)
        
        levelBottom.rect = Rect(topLeft:Point(x:50, y:canvasSize.height - 60), size:Size(width:canvasSize.width - 100, height: 10))
        levelRectangles.append(levelBottom)

        //do this wall boy
        levelWall1.rect = Rect(topLeft:Point(x:150, y:60), size:Size(width:10, height: canvasSize.height - 200))
        levelRectangles.append(levelWall1)


        levelWall2.rect = Rect(topLeft:Point(x:200, y:60), size:Size(width:10, height: canvasSize.height - 200))
        levelRectangles.append(levelWall2)

        levelWall3.rect = Rect(topLeft:Point(x:250, y:60), size:Size(width:10, height: canvasSize.height - 200))
        levelRectangles.append(levelWall3)

        levelWall4.rect = Rect(topLeft:Point(x:300, y:60), size:Size(width:10, height: canvasSize.height - 200))
        levelRectangles.append(levelWall4)

        levelWall5.rect = Rect(topLeft:Point(x:350, y:60), size:Size(width:10, height: canvasSize.height - 200))
        levelRectangles.append(levelWall5)

        
    }

    override func render(canvas:Canvas) {
        for rect in levelRectangles{
            canvas.render(levelFill, levelStroke, rect)
        }
    }

}
