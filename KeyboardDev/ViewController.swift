import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets

    @IBOutlet weak var newMarkTextField: UITextField!
    

    //MARK: - Main functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBActions
    
    
    //MARK: - Flow functions
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.newMarkTextField.resignFirstResponder()
        return true
    }
}

