import Igis
import Scenes

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */

class InteractionLayer : Layer {
    // let ball = Ball()
    // let leftPaddle = Paddle(position:.left)
    // let rightPaddle = Paddle(position:.right)
    let wall = Walls()

    let player = Player()

    let coin = Coins()

    let blueGhost = Ghost(color:Color(.deepskyblue))
    let orangeGhost = Ghost(color:Color(.orange))
    let redGhost = Ghost(color:Color(.red))
    let pinkGhost = Ghost(color:Color(.hotpink))

    let scoreboard = Scoreboard()
    
    var enableHitTesting = false

    var playerCenter:Point
    var blueCenter:Point

    var canMoveLeft:Bool
    var canMoveRight:Bool
    var canMoveUp:Bool
    var canMoveDown:Bool

    var frame:Int
    
    init() {

        playerCenter = Point.zero
        blueCenter = Point.zero

        canMoveLeft = false
        canMoveRight = false
        canMoveUp = false
        canMoveDown = false

        frame = 0
        
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Interaction")
        
        // We insert our RenderableEntities in the constructor
        
        insert(entity:blueGhost, at:.front)
        insert(entity:orangeGhost, at:.front)
        insert(entity:redGhost, at:.front)
        insert(entity:pinkGhost, at:.front)
        
        insert(entity:player, at:.front)

        insert(entity:wall, at:.back)
        
        insert(entity:coin, at:.back)

        insert(entity:scoreboard, at:.back)
      
    }

    override func preSetup(canvasSize:Size, canvas:Canvas){
        blueGhost.move(to:canvasSize.center - Point(x: blueGhost.ghostRect.size.width, y: 2 *  blueGhost.ghostRect.size.height))
        orangeGhost.move(to:canvasSize.center - Point(x: -1 * blueGhost.ghostRect.size.width, y: 2 *  blueGhost.ghostRect.size.height))
        redGhost.move(to:canvasSize.center - Point(x: 2 * blueGhost.ghostRect.size.width, y: 2 *  blueGhost.ghostRect.size.height))
        pinkGhost.move(to:canvasSize.center - Point(x: -2 * blueGhost.ghostRect.size.width, y: 2 *  blueGhost.ghostRect.size.height))

        scoreboard.scoreboard.location = canvasSize.center - Point(x:150, y:-50)
        
        blueGhost.flash(for: 30)
        orangeGhost.flash(for: 30)
        redGhost.flash(for: 30)
        pinkGhost.flash(for:30)

        
    }
    
    func deleteCoinTouchingWall() {
        var eatableCoins = coin.coins.count
        for rectangle in wall.levelRectangles{
            for i in 0...coin.coins.count-1{
                if rectangle.rect.containment(target:coin.coins[i].0.boundingRect()).contains(.contact){
                    coin.coins[i].1 = false
                    eatableCoins -= 1
                }
            }
        }
        scoreboard.maxScore = eatableCoins/4 * 10
    }
    
    func touchingWall() {
        for rectangle in wall.levelRectangles{
            if rectangle.rect.containment(target:player.player.boundingRect()).contains(.overlapsRight) && rectangle.rect.containment(target:player.player.boundingRect()).contains(.contact){
                player.direction = 0
                player.player.center += Point(x:5, y:0)
            }
            if rectangle.rect.containment(target:player.player.boundingRect()).contains(.overlapsLeft) && rectangle.rect.containment(target:player.player.boundingRect()).contains(.contact){
                player.direction = 0
                player.player.center += Point(x:-5, y:0)
            }
            if rectangle.rect.containment(target:player.player.boundingRect()).contains(.overlapsBottom) && rectangle.rect.containment(target:player.player.boundingRect()).contains(.contact){
                player.direction = 0
                player.player.center += Point(x:0, y:5)
            }
            if rectangle.rect.containment(target:player.player.boundingRect()).contains(.overlapsTop) && rectangle.rect.containment(target:player.player.boundingRect()).contains(.contact){
                player.direction = 0
                player.player.center += Point(x:0, y:-5)
            }
        }
    }

    
    func touchingCoin(canvas:Canvas) {
        for i in 0...coin.coins.count-1{
            if player.player.boundingRect().containment(target:coin.coins[i].0.boundingRect()).contains(.contact){
                if coin.coins[i].1 == true{
                    coin.coins[i].1 = false
                    scoreboard.addScore(10)
                    if scoreboard.score == scoreboard.maxScore{
                        player.gameOver(canvas:canvas, win:true)
                    }
                }
            }
        }
    }

    func touchingGhost(canvas:Canvas) {
        if player.player.boundingRect().containment(target:orangeGhost.ghostRect).contains(.contact){
            player.gameOver(canvas:canvas, win:false)
        }
        if player.player.boundingRect().containment(target:pinkGhost.ghostRect).contains(.contact){
            player.gameOver(canvas:canvas, win:false)
        }
        if player.player.boundingRect().containment(target:redGhost.ghostRect).contains(.contact){
            player.gameOver(canvas:canvas, win:false)
        }
        if player.player.boundingRect().containment(target:blueGhost.ghostRect).contains(.contact){
            player.gameOver(canvas:canvas, win:false)
        }
    }

    func ghostMove(ghost:Ghost){
        playerCenter = player.player.center

        let ghostCenter = ghost.ghostRect.center

        canMoveRight = true
        canMoveLeft = true
        canMoveUp = true
        canMoveDown = true
        
        for rectangle in wall.levelRectangles{
            if rectangle.rect.containment(target:ghost.leftBoundingRect()).contains(.overlapsLeft) && (rectangle.rect.containment(target:ghost.leftBoundingRect()).contains(.contact) || rectangle.rect.containment(target:ghost.leftBoundingRect()).contains(.overlapsFully)){
                canMoveLeft = false
            }
            if rectangle.rect.containment(target:ghost.rightBoundingRect()).contains(.overlapsRight) && (rectangle.rect.containment(target:ghost.rightBoundingRect()).contains(.contact) || rectangle.rect.containment(target:ghost.rightBoundingRect()).contains(.overlapsFully)){
                canMoveRight = false
            }
            if rectangle.rect.containment(target:ghost.topBoundingRect()).contains(.overlapsBottom) && (rectangle.rect.containment(target:ghost.topBoundingRect()).contains(.contact) || rectangle.rect.containment(target:ghost.topBoundingRect()).contains(.overlapsFully)){
                canMoveUp = false
            }
            if rectangle.rect.containment(target:ghost.bottomBoundingRect()).contains(.overlapsTop) && (rectangle.rect.containment(target:ghost.bottomBoundingRect()).contains(.contact) || rectangle.rect.containment(target:ghost.bottomBoundingRect()).contains(.overlapsFully)){
                canMoveDown = false
            }  
        }
        
        if (playerCenter - ghostCenter).x < 0{
            if canMoveLeft == true{
                ghost.ghostLeft(7)
            }else if canMoveUp == true && (playerCenter - ghostCenter).y < 0{
                ghost.ghostUp(3)
            }else if canMoveDown == true && (playerCenter - ghostCenter).y > 0{
                ghost.ghostDown(3)
            }
        }
        else if (playerCenter - ghostCenter).y < 0 && canMoveUp{
            ghost.ghostUp(7)
        }
        else if (playerCenter - ghostCenter).y > 0 && canMoveDown{
            ghost.ghostDown(5)
        }
        if (playerCenter - ghostCenter).x > 0{
            if canMoveRight == true{
                ghost.ghostRight(6)
            }else if canMoveDown == true && (playerCenter - ghostCenter).y > 0{
                ghost.ghostDown(3)
            }else if canMoveUp == true && (playerCenter - ghostCenter).y < 0{
                ghost.ghostUp(4)
            }
        }
    }
    
    override func postCalculate(canvas:Canvas){
        if frame == 0{
            deleteCoinTouchingWall()
        }
        frame += 1 
        let canvasSize = canvas.canvasSize!

        if frame == 1{
            blueGhost.move(to: canvasSize.center - Point(x:75, y: 175))
        }
        ghostMove(ghost:blueGhost)
        if frame == 100{
            redGhost.move(to: canvasSize.center - Point(x:-75, y:175))
        }
        if frame >= 100{
            ghostMove(ghost:redGhost)
        }
        if frame == 200{
            orangeGhost.move(to: canvasSize.center - Point(x:75, y:175))
        }
        if frame >= 200{
            ghostMove(ghost:orangeGhost)
        }
        if frame == 300{
            pinkGhost.move(to: canvasSize.center - Point(x:-75, y:175))
        }
        if frame >= 300{
            ghostMove(ghost:pinkGhost)
        }
        
        touchingCoin(canvas:canvas)
        touchingWall()
        touchingGhost(canvas:canvas)

    

    
     
   }
  }
  
