import Foundation
import UIKit

class KeyboardView: UIInputView {
    
    //MARK: - Propetry
    
    var keyboardViewControllerDelegate: KeyboardViewController!
    
    //MARK: - IBActions
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        guard let letterTitle = sender.titleLabel?.text else {return}
        self.insertText(letterTitle)
    }
    
    @IBAction func backSpacePressed (_ sender: UIButton) {
        self.keyboardViewControllerDelegate.textDocumentProxy.deleteBackward()
    }
    
    @IBAction func returnPressed (_ sender: UIButton) {
        self.keyboardViewControllerDelegate.dismissKeyboard()
    }
    
    @IBAction func bracketsPressed (_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else {return}
        self.keyboardViewControllerDelegate.textDocumentProxy.insertText(buttonTitle)
        self.keyboardViewControllerDelegate.textDocumentProxy.adjustTextPosition(byCharacterOffset: -1)
    }
    
    @IBAction func spacePressed (_ sender: UIButton) {
        self.keyboardViewControllerDelegate.textDocumentProxy.insertText(" ")
    }
    
    //MARK: - Flow functions
    static func fromNib() -> KeyboardView {
        return UINib(nibName: "KeyboardView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! KeyboardView
    }
    
    private func insertText(_ text: String){
        self.keyboardViewControllerDelegate.textDocumentProxy.insertText(text)
    }
}
