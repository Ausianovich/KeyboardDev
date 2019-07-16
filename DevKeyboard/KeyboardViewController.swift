import UIKit

class KeyboardViewController: UIInputViewController {
    //MARK: - Proberty
    var keyboardView: KeyboardView!
    
    //MARK: - IBOutlets

    //MARK: - Main functions
    override func updateViewConstraints() {
        super.updateViewConstraints()
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
    }
}

