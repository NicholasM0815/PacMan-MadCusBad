
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
    let levelWall21:Rectangle
    let levelWall22:Rectangle
    let levelWall23:Rectangle
    let levelWall24:Rectangle
    let levelWall25:Rectangle
    
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
        levelWall21 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall22 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall23 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall24 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall25 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)





        
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
        levelWall1.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:450), size:Size(width:210, height: 10))
        levelRectangles.append(levelWall1)

        levelWall2.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:350), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall2)

        levelWall3.rect = Rect(topLeft:Point(x:canvasSize.center.x + 100, y:350), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall3)

        levelWall4.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:350), size:Size(width:50, height:10))
        levelRectangles.append(levelWall4)

        levelWall5.rect = Rect(topLeft:Point(x:canvasSize.center.x + 60, y:350), size:Size(width:50, height:10))
        levelRectangles.append(levelWall5)
        
        levelWall6.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:250), size:Size(width:210, height: 10))
        levelRectangles.append(levelWall6)

        levelWall7.rect = Rect(topLeft:Point(x:canvasSize.center.x, y:250), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall7)

        levelWall8.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:650), size:Size(width:210, height: 10))
        levelRectangles.append(levelWall8)

        levelWall9.rect = Rect(topLeft:Point(x:canvasSize.center.x, y:550), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall9)

        levelWall10.rect = Rect(topLeft:Point(x:canvasSize.center.x - 200, y:450), size:Size(width:10, height: 250))
        levelRectangles.append(levelWall10)
        
        levelWall11.rect = Rect(topLeft:Point(x:canvasSize.center.x - 200, y:550), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall11)

         levelWall12.rect = Rect(topLeft:Point(x:canvasSize.center.x + 200, y:450), size:Size(width:10, height: 250))
        levelRectangles.append(levelWall12)

         levelWall13.rect = Rect(topLeft:Point(x:canvasSize.center.x + 100, y:550), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall13)

         levelWall14.rect = Rect(topLeft:Point(x:canvasSize.center.x + 300, y:550), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall14)

         levelWall15.rect = Rect(topLeft:Point(x:canvasSize.center.x + 400, y:350), size:Size(width:10, height: 210))
         levelRectangles.append(levelWall15)

          levelWall16.rect = Rect(topLeft:Point(x:canvasSize.center.x + 300, y:250), size:Size(width:10, height: 200))
        levelRectangles.append(levelWall16)

        levelWall17.rect = Rect(topLeft:Point(x:canvasSize.center.x + 200, y:350), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall17)

         levelWall18.rect = Rect(topLeft:Point(x:canvasSize.center.x - 300, y:350), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall18)

         levelWall19.rect = Rect(topLeft:Point(x:canvasSize.center.x - 400, y:350), size:Size(width:10, height: 210))
        levelRectangles.append(levelWall19)

         levelWall20.rect = Rect(topLeft:Point(x:canvasSize.center.x - 300, y:250), size:Size(width:10, height: 200))
        levelRectangles.append(levelWall20)

        levelWall21.rect = Rect(topLeft:Point(x:canvasSize.center.x - 400, y:550), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall21)

        levelWall22.rect = Rect(topLeft:Point(x:canvasSize.center.x - 500, y:550), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall22)


    }
    

    override func render(canvas:Canvas) {
        for rect in levelRectangles{
            canvas.render(levelFill, levelStroke, rect)
        }
    }

}
