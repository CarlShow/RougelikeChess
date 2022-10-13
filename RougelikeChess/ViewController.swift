//  Created by CARL SHOW on 10/13/22.
import UIKit
class ViewController: UIViewController
{
    // On-load variables; these are unaffected by prior gameplay
    var rCGameState = gameState.load
    // Game variables; these are affected by prior play
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1785255671, green: 0.2509605885, blue: 0.3888639212, alpha: 0.2451371173)
    }
}

enum gameState
{
    /// hjelp
    case load
    case preGame
    case play
}
