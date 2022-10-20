//  Created by CARL SHOW on 10/13/22.
import UIKit
class ViewController: UIViewController
{
    // Outlets
    @IBOutlet weak var oTtitleView: UIView!
    // On-load variables; these are unaffected by prior gameplay
    var rCGameState = gameState.load
    // Game variables; these are affected by prior play
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Prelaunch gimmiks, nothing too interesting
        oTtitleView.layer.position.y += 400
        // Actual viewDidLoad-ing
        view.backgroundColor = #colorLiteral(red: 0.1785255671, green: 0.2509605885, blue: 0.3888639212, alpha: 0.2451371173)
        UIView.animate(withDuration: 1, delay: 0.13, options: .curveEaseOut, animations:
            {
                self.view.backgroundColor = #colorLiteral(red: 0.6824293137, green: 1, blue: 0.8976086378, alpha: 1)
            }
          , completion:
            {
                _ in
                self.view.backgroundColor = #colorLiteral(red: 0.6335143447, green: 1, blue: 0.8671106696, alpha: 1)
                self.AMstartScreen()
            }
        )
    }
    // View did load ends; begin functions.
    func AMstartScreen()
    {
        rCGameState = .startScreen
        UIView.animate(withDuration: 2, delay: 0.13, options: .curveEaseOut, animations:
            {
            self.oTtitleView.layer.position.y -= 400
            }
          , completion:
            {
                _ in
            }
        )
    }
}

enum gameState
{
    // This parses your current game state, and is mostly used as an extra safety net in case of a bad load. Also exists for extra shortcuts and debugging.
    case load
    case demo
    case startScreen
    case inGame
}
