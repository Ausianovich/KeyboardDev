import Foundation
import UIKit

class KeyboardView: UIInputView {
    
    //MARK: - Propetry
    
    var keyboardViewControllerDelegate: KeyboardViewController!
    
    //MARK: - IBOutlets
    
    
    //MARK: - IBActions
    @IBAction func buttonPressed(_ sender: UIButton) {
        insertText(sender.titleLabel?.text ?? "")
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        guard let letterTitle = sender.titleLabel?.text else {return}
        insertText(letterTitle)
    }
    
    //MARK: - Flow functions
    static func fromNib() -> KeyboardView {
        return UINib(nibName: "KeyboardView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! KeyboardView
    }
    
    func insertText(_ text: String){
        self.keyboardViewControllerDelegate.textDocumentProxy.insertText(text)
    }
    
}
