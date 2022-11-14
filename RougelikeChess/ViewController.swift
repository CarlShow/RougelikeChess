//  Created by CARL SHOW on 10/13/22.
import UIKit
class ViewController: UIViewController
{
    // Outlets
    @IBOutlet weak var tSVTitle: UIView!
    @IBOutlet weak var tSVButtons: UIView!
    @IBOutlet weak var tSBStartButton: UIButton!
    // On-load variables; these are unaffected by prior gameplay
    final var SCHMOOVE = 850 as CGFloat
    var rCGameState = gameState.load
    
    // Game variables; these are affected by prior play
    
    
    /* VDL */
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Prelaunch gimmiks, nothing too interesting
        tSVTitle.layer.position.y += SCHMOOVE
        tSVButtons.layer.position.y += SCHMOOVE
        tSBStartButton.layer.cornerRadius = 14
        // Actual VDL-ing
        view.backgroundColor = #colorLiteral(red: 0.1785255671, green: 0.2509605885, blue: 0.3888639212, alpha: 0.2451371173)
        UIView.animate(withDuration: 1, delay: 0.13, options: .curveEaseOut, animations:
            {
                self.view.backgroundColor = #colorLiteral(red: 0.8256772757, green: 0.9965962768, blue: 0.9430112839, alpha: 1)
            }
          , completion:
            {
                _ in
                self.view.backgroundColor = #colorLiteral(red: 0.8256772757, green: 0.9965962768, blue: 0.9430112839, alpha: 1)
                self.AMStartScreen()
            }
        )
    }
    // View did load ends; begin functions.
    func AMStartScreen()
    {
        rCGameState = .startScreen
        UIView.animate(withDuration: 2, delay: 0.13, options: .curveEaseOut, animations:
            {
            self.tSVTitle.layer.position.y -= self.SCHMOOVE
            }
          , completion:
            {
                _ in
                do{
                    UIView.animate(withDuration: 1.5, delay: 0.13, options: .curveEaseOut, animations:
                        {
                        self.tSVButtons.layer.position.y -= self.SCHMOOVE
                        }
                      , completion:
                        {
                            _ in
                        }
                    )
                }
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
