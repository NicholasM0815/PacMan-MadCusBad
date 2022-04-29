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
    
    
    init(color: Color) {
        ghostColor = FillStyle(color:color)
        ghostRect = Rect(topLeft:Point.zero, size:Size(width:40, height:40))
        
        super.init(name:"Ghost")
    }
}
