import Igis
import Scenes
import Foundation

/*
 This class is responsible for rendering the background.
 */

class Background : RenderableEntity {
    let fillStyle : FillStyle
    let rectangle : Rectangle

    let audio : Audio
    
    var didAudio = false
    
    init() {
        // Initialize Objects
        fillStyle = FillStyle(color:Color(.black))
        rectangle = Rectangle(rect:Rect.zero, fillMode:.fill)

        var audios : Array<URL> = []

        /*
        
        guard let audioURL1 = URL(string:"https://upload.wikimedia.org/wikipedia/commons/transcoded/5/5e/%22The_Star-Spangled_Banner%22_-_Choral_with_band_accompaniment_-_United_States_Army_Field_Band.oga/%22The_Star-Spangled_Banner%22_-_Choral_with_band_accompaniment_-_United_States_Army_Field_Band.oga.mp3") else {
            fatalError("Failled to fetch Never Gonna Give You Up")
        }

        //audios.append(audioURL1)

        guard let audioURL2 = URL(string:"https://upload.wikimedia.org/wikipedia/commons/transcoded/e/e3/Soviet_Anthem_Piano_Instrumental_%283_verses%29.ogg/Soviet_Anthem_Piano_Instrumental_%283_verses%29.ogg.mp3") else {
            fatalError("Failled to fetch Never Gonna Give You Up")
        }

        //audios.append(audioURL2)

        guard let audioURL3 = URL(string:"https://drive.google.com/uc?export=download&id=0B4LOzioZvYiXb2FFWG5Qd1dFSmc") else {
            fatalError("Failled to fetch Never Gonna Give You Up")
            }
            
        */

        guard let audioURL4 = URL(string:"https://instrumentalfx.co/wp-content/upload/11/The-Benny-Hill-Show-Theme-Song.mp3") else {
            fatalError("Failled to fetch Benny Hill Theme")
        }

        //audios.append(audioURL3)
        audios.append(audioURL4)
        
        audio = Audio(sourceURL:audios.randomElement()!, shouldLoop:true) 
        
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Background")
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        rectangle.rect.size = canvasSize
        canvas.setup(audio)
    }

    override func render(canvas:Canvas) {
        // render the fillstyle modifier before the rectangle object
        canvas.render(fillStyle, rectangle)
        if audio.isReady && !didAudio{
            print("playing Audio")
            canvas.render(audio)
            didAudio = true
            }
    }
}
