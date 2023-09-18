import UIKit

class MainViewController: UIViewController {

    private let simpleButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        simpleButton.frame = CGRect(x: 100, y: 300, width: 150, height: 50)
        simpleButton.setTitle("Push me", for: .normal)
        simpleButton.setTitle("Pull me", for: .highlighted)

        simpleButton.backgroundColor = .red
        view.addSubview(simpleButton)
    }
}

func generateRandomNumber() {
    let randomNumber = Int.random(in: 1...100)
    print("Случайное число: \(randomNumber)")
}
