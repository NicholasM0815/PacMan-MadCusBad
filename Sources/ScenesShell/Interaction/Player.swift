import Igis
import Scenes

class Player : RenderableEntity, KeyDownHandler {

    let player:Ellipse

    var direction = 0

    // 1 = up, 2 = right, 3 = down, 4 = left

    //Movement Keys
    let upKey:String
    let downKey:String
    let leftKey:String
    let rightKey:String

    var gameOver:Bool
    var win:Bool
    
    init() {
        // Initialize Objectx

        player = Ellipse(center:Point.zero, radiusX:15, radiusY:15, fillMode:.fillAndStroke)

        //Key Objects
        upKey = "ArrowUp"
        downKey = "ArrowDown"
        leftKey = "ArrowLeft"
        rightKey = "ArrowRight"
        
        //game over objects
        gameOver = false
        win = false
        
    }

    func gameOver(canvas:Canvas, win:Bool){
        let canvasSize = canvas.canvasSize!
        if win == true{
            canvas.render(FillStyle(color:Color(.black)),Rectangle(rect:Rect(topLeft:Point(x:0,y:0), size:canvasSize), fillMode:.fill))
            let winText = Text(location:canvasSize.center - Point(x:150, y:-50), text:"You Won!", fillMode:.fill)
            winText.font = "50pt Arial"
            canvas.render(FillStyle(color:Color(.white)), winText)
            self.gameOver = true
            self.win = true
        }else{
            canvas.render(FillStyle(color:Color(.black)),Rectangle(rect:Rect(topLeft:Point(x:0,y:0), size:canvasSize), fillMode:.fill))
            let winText = Text(location:canvasSize.center - Point(x:150, y:-50), text:"You Lost!", fillMode:.fill)
            winText.font = "50pt Arial"
            canvas.render(FillStyle(color:Color(.white)), winText)
            self.gameOver = true
        }
    }
    
    override func setup(canvasSize:Size, canvas:Canvas) {

        player.center = canvasSize.center
        
        dispatcher.registerKeyDownHandler(handler:self)
    }

    override func render(canvas:Canvas){
        if gameOver == true{
            self.gameOver(canvas:canvas, win:win)
        }else{
            move()
            canvas.render(FillStyle(color:Color(.yellow)), player)
        }
    }
    
    func die() {
        player.center = Point(x:99999,y:99999)
    }
    func move(){
        switch direction{
        case 0:
            player.center += Point(x:0, y:0)
        case 1:
            player.center += Point(x:0, y:-10)
        case 2:
            player.center += Point(x:10, y:0)
        case 3:
            player.center += Point(x:0, y:10)
        case 4:
            player.center += Point(x:-10, y:0)
        default:
            player.center += Point(x:0, y:0)
        }
    }

    func boundingRectangle() -> Rect{
        let topLeft = player.center + Point(x:20, y:20)
        let rect = Rect(topLeft:topLeft, size:Size(width:40, height:40))
        return rect
    }
        
        

    override func teardown() {
        dispatcher.unregisterKeyDownHandler(handler:self)
    }

    func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool) {
        switch key{
        case upKey:
            direction = 1
        case rightKey:
            direction = 2
        case downKey:
            direction = 3
        case leftKey:
            direction = 4
        default:
            direction = 0
        }
            
    }
    
}
