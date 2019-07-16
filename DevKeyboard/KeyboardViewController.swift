import UIKit

class KeyboardViewController: UIInputViewController {
    //MARK: - Proberty
    var keyboardView: KeyboardView!
    
    //MARK: - IBOutlets
    @IBOutlet var nextKeyboardButton: UIButton!
    
    
    //MARK: - Main functions
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.keyboardView = KeyboardView.fromNib()

        self.keyboardView.keyboardViewControllerDelegate = self
        
        guard let inputView = self.inputView else {return}
        
        self.keyboardView.sizeToFit()
        self.keyboardView.translatesAutoresizingMaskIntoConstraints = false

        inputView.addSubview(self.keyboardView)
        
        self.keyboardView.leftAnchor.constraint(equalTo: inputView.leftAnchor).isActive = true
        self.keyboardView.bottomAnchor.constraint(equalTo: inputView.bottomAnchor).isActive = true
        self.keyboardView.topAnchor.constraint(equalTo: inputView.topAnchor).isActive = true
        self.keyboardView.rightAnchor.constraint(equalTo: inputView.rightAnchor).isActive = true
        
        // Perform custom UI setup here
//        self.nextKeyboardButton = UIButton(type: .system)
//
//        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), for: [])
//        self.nextKeyboardButton.sizeToFit()
//        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
//
//        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
//
//        self.view.addSubview(self.nextKeyboardButton)
//
//        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    override func viewWillLayoutSubviews() {
//        self.nextKeyboardButton.isHidden = !self.needsInputModeSwitchKey
//        super.viewWillLayoutSubviews()
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        
//        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }

}

