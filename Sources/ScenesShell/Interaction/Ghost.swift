import Igis
import Scenes

class Ghost : RenderableEntity {

    let ghostColor:FillStyle
    let ghostRect:Rect
    
    init(color: Color) {
        ghostColor = FillStyle(color:color)
        ghostRect = Rect(topLeft:Point.zero, size:Size(width:40, height:40))
        
        super.init(name:"Ghost")
    }
}
