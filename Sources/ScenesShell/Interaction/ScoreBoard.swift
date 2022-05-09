import Scenes
import Igis

class Scoreboard : RenderableEntity{
    var maxScore:Int
    var score:Int
    
    let scoreboard:Text 
    
    init() {
        maxScore = 0
        score = 0

        scoreboard = Text(location:Point.zero, text:String(0), fillMode:.fill)   
        scoreboard.font = "25pt Arial"
        
        super.init(name:"Scoreboard")
    }

    func addScore(_ amount:Int){
        self.score += amount
    }

    override func render(canvas:Canvas){
        scoreboard.text = "Score: \(score)  Max:\(maxScore)"
        canvas.render(FillStyle(color:Color(.white)), scoreboard)
    }
    
}
