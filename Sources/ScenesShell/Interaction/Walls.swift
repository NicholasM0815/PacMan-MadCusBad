
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
    let levelWall26:Rectangle
    let levelWall27:Rectangle
    let levelWall28:Rectangle
    let levelWall29:Rectangle
    let levelWall30:Rectangle
    let levelWall31:Rectangle
    let levelWall32:Rectangle
    let levelWall33:Rectangle
    let levelWall34:Rectangle
    let levelWall35:Rectangle
    let levelWall36:Rectangle
    let levelWall37:Rectangle
    let levelWall38:Rectangle
    let levelWall39:Rectangle
    let levelWall40:Rectangle
    let levelWall41:Rectangle
    let levelWall42:Rectangle
    let levelWall43:Rectangle
    let levelWall44:Rectangle
    let levelWall45:Rectangle
    let levelWall46:Rectangle
    let levelWall47:Rectangle
    let levelWall48:Rectangle
    let levelWall49:Rectangle
    let levelWall50:Rectangle
    let levelWall51:Rectangle
    let levelWall52:Rectangle
    let levelWall53:Rectangle
    let levelWall54:Rectangle
    let levelWall55:Rectangle
    let levelWall56:Rectangle
    let levelWall57:Rectangle
    let levelWall58:Rectangle
    let levelWall59:Rectangle
    let levelWall60:Rectangle
    let levelWall61:Rectangle
    let levelWall62:Rectangle
    let levelWall63:Rectangle
    let levelWall64:Rectangle
    let levelWall65:Rectangle
    let levelWall66:Rectangle
    let levelWall67:Rectangle
    let levelWall68:Rectangle
    let levelWall69:Rectangle
    let levelWall70:Rectangle
    let levelWall71:Rectangle
    let levelWall72:Rectangle
    let levelWall73:Rectangle
    let levelWall74:Rectangle
    let levelWall75:Rectangle
    let levelWall76:Rectangle
    let levelWall77:Rectangle
    let levelWall78:Rectangle
    let levelWall79:Rectangle
    let levelWall80:Rectangle
    




    
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
        levelWall26 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall27 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall28 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall29 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall30 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall31 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall32 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall33 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall34 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall35 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall36 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall37 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall38 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall39 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall40 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall41 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall42 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall43 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall44 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall45 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall46 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall47 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall48 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall49 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall50 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall51 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall52 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall53 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall54 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall55 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall56 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall57 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall58 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall59 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall60 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall61 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall62 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall63 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall64 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall65 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall66 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall67 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall68 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall69 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall70 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall71 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall72 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall73 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall74 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall75 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall76 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall77 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall78 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall79 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)
        levelWall80 = Rectangle(rect:Rect.zero, fillMode:.fillAndStroke)

        
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

        levelWall4.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:350), size:Size(width:160, height:10))
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

        levelWall38.rect = Rect(topLeft:Point(x:canvasSize.center.x - 100, y:650), size:Size(width:10, height: 150))
        levelRectangles.append(levelWall38)

        levelWall39.rect = Rect(topLeft:Point(x:canvasSize.center.x + 100, y:650), size:Size(width:10, height: 150))
        levelRectangles.append(levelWall39)
        
        
        

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

        levelWall22.rect = Rect(topLeft:Point(x:canvasSize.center.x - 500, y:250), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall22)

        
        levelWall23.rect = Rect(topLeft:Point(x:canvasSize.center.x + 500, y:250), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall23)

        
        levelWall24.rect = Rect(topLeft:Point(x:canvasSize.center.x, y:750), size:Size(width:10, height: 150))
        levelRectangles.append(levelWall24)

        
        levelWall25.rect = Rect(topLeft:Point(x:canvasSize.center.x, y:50), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall25)

        levelWall26.rect = Rect(topLeft:Point(x:canvasSize.center.x - 300, y:150), size:Size(width:200, height: 10))
        levelRectangles.append(levelWall26)

        
        levelWall27.rect = Rect(topLeft:Point(x:canvasSize.center.x + 100, y:150), size:Size(width:200, height: 10))
        levelRectangles.append(levelWall27)

        
        levelWall28.rect = Rect(topLeft:Point(x:canvasSize.center.x + 200, y:150), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall28)

        
        levelWall29.rect = Rect(topLeft:Point(x:canvasSize.center.x - 200, y:150), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall29)

        
        levelWall30.rect = Rect(topLeft:Point(x:canvasSize.center.x + 400, y:250), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall30)

        
        levelWall31.rect = Rect(topLeft:Point(x:canvasSize.center.x - 500, y:250), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall31)
        
        
        levelWall32.rect = Rect(topLeft:Point(x:canvasSize.center.x + 300, y:750), size:Size(width:200, height: 10))
        levelRectangles.append(levelWall32)

        levelWall33.rect = Rect(topLeft:Point(x:canvasSize.center.x - 500, y:750), size:Size(width:200, height: 10))
        levelRectangles.append(levelWall33)

        levelWall34.rect = Rect(topLeft:Point(x:canvasSize.center.x - 400, y:650), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall34)

        levelWall35.rect = Rect(topLeft:Point(x:canvasSize.center.x - 300, y:750), size:Size(width:10, height: 75))
        levelRectangles.append(levelWall35)

        levelWall36.rect = Rect(topLeft:Point(x:canvasSize.center.x + 400, y:650), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall36)
        
        levelWall37.rect = Rect(topLeft:Point(x:canvasSize.center.x + 300, y:750), size:Size(width:10, height: 75))
        levelRectangles.append(levelWall37)

        levelWall40.rect = Rect(topLeft:Point(x:canvasSize.center.x + 600, y:550), size:Size(width:10, height: 250))
        levelRectangles.append(levelWall40)

        levelWall41.rect = Rect(topLeft:Point(x:canvasSize.center.x + 500, y:650), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall41)

        levelWall42.rect = Rect(topLeft:Point(x:canvasSize.center.x - 600, y:550), size:Size(width:10, height: 250))
        levelRectangles.append(levelWall42)

        levelWall43.rect = Rect(topLeft:Point(x:canvasSize.center.x - 600, y:650), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall43)

        levelWall44.rect = Rect(topLeft:Point(x:canvasSize.center.x + 400, y:150), size:Size(width:200, height: 10))
        levelRectangles.append(levelWall44)

        levelWall45.rect = Rect(topLeft:Point(x:canvasSize.center.x - 600, y:150), size:Size(width:200, height: 10))
        levelRectangles.append(levelWall45)

        levelWall46.rect = Rect(topLeft:Point(x:canvasSize.center.x + 600, y:250), size:Size(width:10, height: 200))
        levelRectangles.append(levelWall46)

        levelWall47.rect = Rect(topLeft:Point(x:canvasSize.center.x - 600, y:250), size:Size(width:10, height: 200))
        levelRectangles.append(levelWall47)

        levelWall48.rect = Rect(topLeft:Point(x:canvasSize.center.x + 700, y:150), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall48)

        levelWall49.rect = Rect(topLeft:Point(x:canvasSize.center.x + 700, y:300), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall49)

        levelWall50.rect = Rect(topLeft:Point(x:canvasSize.center.x - 700, y:150), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall50)

        levelWall51.rect = Rect(topLeft:Point(x:canvasSize.center.x - 800, y:300), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall51)


        levelWall52.rect = Rect(topLeft:Point(x:canvasSize.center.x - 900, y:300), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall52)

        levelWall53.rect = Rect(topLeft:Point(x:canvasSize.center.x + 900, y:300), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall53)

        levelWall54.rect = Rect(topLeft:Point(x:canvasSize.center.x - 900, y:450), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall54)

        levelWall55.rect = Rect(topLeft:Point(x:canvasSize.center.x + 800, y:450), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall55)

        levelWall56.rect = Rect(topLeft:Point(x:canvasSize.center.x + 1000, y:150), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall56)

        levelWall57.rect = Rect(topLeft:Point(x:canvasSize.center.x - 1000, y:150), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall57)

        levelWall58.rect = Rect(topLeft:Point(x:canvasSize.center.x - 1000, y:200), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall58)

        levelWall59.rect = Rect(topLeft:Point(x:canvasSize.center.x + 900, y:200), size:Size(width:100, height: 10))
        levelRectangles.append(levelWall59)

        levelWall60.rect = Rect(topLeft:Point(x:canvasSize.center.x + 800, y:650), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall60)

        levelWall61.rect = Rect(topLeft:Point(x:canvasSize.center.x - 800, y:650), size:Size(width:10, height: 300))
        levelRectangles.append(levelWall61)

        levelWall62.rect = Rect(topLeft:Point(x:canvasSize.center.x + 800, y:800), size:Size(width:150, height: 10))
        levelRectangles.append(levelWall62)

        levelWall63.rect = Rect(topLeft:Point(x:canvasSize.center.x - 950, y:800), size:Size(width:150, height: 10))
        levelRectangles.append(levelWall63)

        levelWall64.rect = Rect(topLeft:Point(x:canvasSize.center.x - 700, y:950), size:Size(width:500, height: 10))
        levelRectangles.append(levelWall64)

        levelWall65.rect = Rect(topLeft:Point(x:canvasSize.center.x + 200, y:950), size:Size(width:500, height: 10))
        levelRectangles.append(levelWall65)

        levelWall66.rect = Rect(topLeft:Point(x:canvasSize.center.x - 450, y:950), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall66)

        levelWall67.rect = Rect(topLeft:Point(x:canvasSize.center.x + 450, y:950), size:Size(width:10, height: 100))
        levelRectangles.append(levelWall67)
    }
    
    

    override func render(canvas:Canvas) {
        for rect in levelRectangles{
            canvas.render(levelFill, levelStroke, rect)
        }
    }

}
